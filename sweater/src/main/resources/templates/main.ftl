<#import "parts/common.ftl" as c>
<#import "parts/login.ftl"  as l>
<@c.page>
<div>
    <@l.logout />
    <span><a href="/user">User List</a> </span>
    <form method="post">
        <input type="text" name="text" placeholder="Введите сообщение" />
        <input type="text" name="tag" placeholder="Tag" />
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <button type="submit">Добавить</button>
    </form>
</div>
<form method="get" action="/main">
    <input type="text" name="filter" value="${filter?ifExists}"/>
    <button type="submit">Найти</button>
</form>
<div>Список сообщений</div>
<#list messages as message>
    <div>

        <b>${message.id}</b>
        <span>${message.text}</span>
        <i>${message.tag}</i>
        <strong>${message.authorName}</strong>

    </div>
    <#else>
    No message
</#list>

</@c.page>