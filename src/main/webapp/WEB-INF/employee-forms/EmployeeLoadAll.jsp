<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<table border="1" cellpadding="5">
    <tr>
        <td>Id</td>
        <td>Imię</td>
        <td>Nazwisko</td>
        <td>Adres</td>
        <td>Numer Telefonu</td>
        <td>Notatka</td>
        <td>Koszt roboczogodziny</td>
        <td>Edycja</td>
        <td>Usuwanie</td>
        <td>Historia zleceń</td>

    </tr>
    <c:forEach var="lista" items="${lista}">
        <tr>
            <td>${lista.id}</td>
            <td>${lista.name}</td>
            <td>${lista.lastname}</td>
            <td>${lista.adress}</td>
            <td>${lista.employee_phone}</td>
            <td>${lista.note}</td>
            <td>${lista.hourly}</td>
            <td>
                <a href="/employee_update?id=${lista.id}&name=${lista.name}&lastname=${lista.lastname}&adress=${lista.adress}&employee_phone=${lista.employee_phone}&note=${lista.note}&hourly=${lista.hourly}">
                    <button type="button" class="btn btn-employee">EDYTUJ</button>
                </a>

            </td>
            <td>
                <a href="/employee_delete?id=${lista.id}">
                    <button type="button" class="btn btn-employee">USUŃ</button>
                </a>
            </td>
            <td>
                <a href="/employee_orders?employee_id=${lista.id}">
                    <button type="button" class="btn btn-employee">ZLECENIA PRACOWNIKA</button>
                </a>

            </td>
        </tr>
    </c:forEach>

</table>
<br>
<a href="/employee_save">
    <button type="button" class="btn btn-employee">DODAJ PRACOWNIKA</button>
<%--</a>--%>
<%--<a href="/employee_update">--%>
    <%--<button type="button" class="btn btn-employee">EDYTUJ PRACOWNIKA</button>--%>
<%--</a>--%>

