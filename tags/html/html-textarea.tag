<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@attribute name="fieldName" type="java.lang.String" required="true" %>
<%@attribute name="fieldKey" type="java.lang.String" required="true" %>
<%@attribute name="required" type="java.lang.Boolean" required="true" %>
<spring:bind path="${fieldName}">
	<div class="form-group ${status.error ? 'has-error' : ''}">
		<label for="${fieldName}"><spring:message code="${fieldKey}"/></label>
		<form:textarea id="${fieldName}" path="${fieldName}" rows="3" cssErrorClass="border-danger form-control ${required ? 'required' : ''}" cssClass="form-control ${required ? 'required' : ''}" disabled="${isdisabled?'true':'false'}"/>
		<form:errors path="${fieldName}" class="red" /> 
	</div>
</spring:bind>