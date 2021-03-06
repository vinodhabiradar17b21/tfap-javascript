<%@tag description="Page Tag" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@attribute name="titleKey" type="java.lang.String" required="true"%>
<%@attribute name="tableName" type="java.lang.String" required="false"%>
<%@attribute name="rootUrlName" type="java.lang.String" required="false"%>

<div class="content-wrapper">
	<div class="content-body">
		<section id="description" class="card">
			<div class="card-header">
				<div class="row">
					<div class="col-6">
						<h4 class="card-title">
							<spring:message code="${titleKey}" />
						</h4>
					</div>

				</div>
			</div>
			<div class="card-content">
				<div class="card-body">
					<div class="card-text">
						<div class="row">

							<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
								<%@ include
									file="/WEB-INF/views/common/tfap_common_html_datatable.jspf"%>
							<script type="text/javascript">
									var urlView${tableName} = "<spring:url value='/${rootUrlName}/settlement/list/json' />";
									var aoColumnsView${tableName} = [
										{
											"mData" : "tfabAccnid"
										},
										{
											"mData" : "tfabBnkAccn"
										},
										{
											"mData" : "tfabBnk"
										},
										{
											"mData" : "tfabCcy"
										}
										];
								</script>  
								<div class="table-responsive">
									<table id="${tableName}"
										class="table table-striped jambo_table bulk_action stripe">
										<thead>
											<tr class="table_header">
												<th class="column-title"><spring:message
														code="label.settlement.settleAccnTableHeader" /></th>
												<th class="column-title"><spring:message 
														code="label.settlement.settleAccnTableHeader.bankaccn" /></th>
												<th class="column-title"><spring:message 
														code="label.settlement.settleAccnTableHeader.bank" /></th>
												<th class="column-title"><spring:message 
														code="label.settlement.settleAccnTableHeader.currency" /></th>
												
											</tr>
										</thead>
										<tbody></tbody>
										<tfoot>
											<tr>
												<th><input type="text" id="search_0"
													class="form-control input-xs table-filter"
													placeholder="<spring:message code="label.settlement.settleAccnTableHeader" />">
													</th>
												<th><input type="text" id="search_0"
													class="form-control input-xs table-filter"
													placeholder="<spring:message code="label.settlement.settleAccnTableHeader.bankaccn" />">
													</th>
												<th><input type="text" id="search_0"
													class="form-control input-xs table-filter"
													placeholder="<spring:message code="label.settlement.settleAccnTableHeader.bank" />">
													</th>
												<th><input type="text" id="search_0"
													class="form-control input-xs table-filter"
													placeholder="<spring:message code="label.settlement.settleAccnTableHeader.currency" />">
													</th>	
												
											</tr>
										</tfoot>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</div>

</div>
<script>
$(document).ready(
		function() {
			$("#${tableName}").DataTable().columns([ 0 ])
					.visible(false);
		});
</script>
