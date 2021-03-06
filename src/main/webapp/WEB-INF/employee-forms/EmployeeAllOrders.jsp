<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<table border="1" cellpadding="5">
    <tr>
        <%--<td>Id</td>--%>
        <td>Data przyjęcia</td>
        <td>Przewidywana naprawa</td>
        <td>Rozpoczęcie naprawy</td>
        <%--<td>Id pracownika</td>--%>
        <td>Opis problemu</td>
        <td>Opis naprawy</td>
        <td>Status id</td>
        <td>Id pojazdu</td>
        <td>Koszt naprawy</td>
        <td>Koszt części</td>
        <td>Roboczogodziny</td>
    </tr>
    <c:forEach var="lista" items="${lista}">
        <tr>
            <%--<td>${lista.id}</td>--%>
            <td>${lista.date_in}</td>
            <td>${lista.date_out}</td>
            <td>${lista.started_date}</td>
            <%--<td>${lista.employee_id}</td>--%>
            <td>${lista.issue_note}</td>
            <td>${lista.repair_note}</td>
            <td>${lista.status_id}</td>
            <td>${lista.vehicle_id}</td>
            <td>${lista.repair_cost}</td>
            <td>${lista.parts_cost}</td>
            <td>${lista.man_hours}</td>
        </tr>
    </c:forEach>
</table>