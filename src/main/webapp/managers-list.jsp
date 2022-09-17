<%@ taglib prefix="s" uri="/struts-tags" %>

<h4 class="pb-2 mt-4 mb-3 border-bottom">
	Manager Management
</h4>

<s:form id="form" action="/">
	<div class="card">
		<div class="card-header fw-bold">
			Manager Search
		</div>
		<div class="card-body">
			<div class="row">
				<div class="col-sm-12 col-md-6 col-lg-4">
					<div class="mb-3">
						<label for="employeeIdSearch" class="form-label">Id</label>
						<s:textfield id="employeeIdSearch" name="managerSearch.id" type="tel" class="form-control is-valid" placeholder="Id" maxlength="10" autocomplete="off"/>
					</div>
				</div>
				<div class="col-sm-12 col-md-6 col-lg-4">
					<div class="mb-3">
						<label for="employeeCprSearch" class="form-label">Cpr</label>
						<s:textfield id="employeeCprSearch" name="managerSearch.cpr" type="tel" class="form-control is-valid cpr" placeholder="Cpr" maxlength="9" autocomplete="off"/>
					</div>
				</div>
				<div class="col-sm-12 col-md-6 col-lg-4">
					<div class="mb-3">
						<label for="employeeNameSearch" class="form-label">Name</label>
						<s:textfield id="employeeNameSearch" name="managerSearch.name" type="text" class="form-control is-valid name" placeholder="Name" maxlength="255" autocomplete="off"/>
					</div>
				</div>
				<div class="col-sm-12 col-md-6 col-lg-4">
					<div class="mb-3">
						<label for="employeeAgeSearch" class="form-label">Age</label>
						<s:textfield id="employeeAgeSearch" name="managerSearch.age" type="tel" class="form-control is-valid age" placeholder="Age" maxlength="2" autocomplete="off"/>
					</div>
				</div>
				<div class="col-sm-12 col-md-6 col-lg-4">
					<div class="mb-3">
						<label for="employeeEmailSearch" class="form-label">Email</label>
						<s:textfield id="employeeEmailSearch" name="managerSearch.email" type="email" class="form-control is-valid email" placeholder="Email" maxlength="255" autocomplete="off"/>
					</div>
				</div>
				<div class="col-sm-12 col-md-6 col-lg-4">
					<div class="mb-3">
						<label for="employeeGenderSearch" class="form-label">Gender</label>
						<s:textfield id="employeeGenderSearch" name="managerSearch.gender" type="text" class="form-control is-valid" placeholder="Gender" maxlength="1" autocomplete="off"/>
					</div>
				</div>
				<div class="col-sm-12 col-md-6 col-lg-4">
					<div class="mb-3">
						<label for="employeeMobileSearch" class="form-label">Mobile</label>
						<s:textfield id="employeeMobileSearch" name="managerSearch.mobile" type="tel" class="form-control is-valid mobile" placeholder="Mobile" maxlength="8" autocomplete="off"/>
					</div>
				</div>
				<div class="col-sm-12 col-md-6 col-lg-4">
					<div class="mb-3">
						<label for="employeeSalarySearch" class="form-label">Salary</label>
						<s:textfield id="employeeSalarySearch" name="managerSearch.salary" type="number" class="form-control is-valid" placeholder="Salary" maxlength="17" autocomplete="off"/>
					</div>
				</div>
				<div class="col-sm-12 col-md-6 col-lg-4">
					<div class="mb-3">
						<label for="addressIdSearch" class="form-label">Address Id</label>
						<s:textfield id="addressIdSearch" name="managerSearch.address.id" type="tel" class="form-control is-valid" placeholder="Address Id" maxlength="10" autocomplete="off"/>
					</div>
				</div>
				<div class="col-sm-12 col-md-6 col-lg-4">
					<div class="mb-3">
						<label for="addressBuildingSearch" class="form-label">Address Building</label>
						<s:textfield id="addressBuildingSearch" name="managerSearch.address.building" type="tel" class="form-control is-valid" placeholder="Address Building" maxlength="10" autocomplete="off"/>
					</div>
				</div>
				<div class="col-sm-12 col-md-6 col-lg-4">
					<div class="mb-3">
						<label for="addressRoadSearch" class="form-label">Address Road</label>
						<s:textfield id="addressRoadSearch" name="managerSearch.address.road" type="tel" class="form-control is-valid" placeholder="Address Road" maxlength="10" autocomplete="off"/>
					</div>
				</div>
				<div class="col-sm-12 col-md-6 col-lg-4">
					<div class="mb-3">
						<label for="addressBlockSearch" class="form-label">Address Block</label>
						<s:textfield id="addressBlockSearch" name="managerSearch.address.block" type="tel" class="form-control is-valid" placeholder="Address Block" maxlength="10" autocomplete="off"/>
					</div>
				</div>
				<div class="col-sm-12 col-md-6 col-lg-4">
					<div class="mb-3">
						<label for="addressCitySearch" class="form-label">Address City</label>
						<s:textfield id="addressCitySearch" name="managerSearch.address.city" type="text" class="form-control is-valid" placeholder="Address City" maxlength="100" autocomplete="off"/>
					</div>
				</div>
				<div class="col-sm-12 col-md-6 col-lg-4">
					<div class="mb-3">
						<label for="addressActiveSearch" class="form-label">Address Active</label>
						<s:select id="addressActiveSearch" list="#{null:'Active', true:'Yes', false:'No'}" name="managerSearch.address.active" class="form-control is-valid" placeholder="Address Active" autocomplete="off"/>
					</div>
				</div>
				<div class="col-sm-12 col-md-6 col-lg-4">
					<div class="mb-3">
						<label for="managerDegreeSearch" class="form-label">Degree</label>
						<s:textfield id="managerDegreeSearch" name="managerSearch.degree" type="tel" class="form-control is-valid" placeholder="Degree" maxlength="10" autocomplete="off"/>
					</div>
				</div>
				<div class="col-sm-12 col-md-6 col-lg-4">
					<div class="mb-3">
						<label for="managerAllowanceSearch" class="form-label">Allowance</label>
						<s:textfield id="managerAllowanceSearch" name="managerSearch.allowance" type="number" class="form-control is-valid" placeholder="Allowance" maxlength="10" autocomplete="off"/>
					</div>
				</div>
				<div class="col-sm-12 col-md-6 col-lg-4">
					<div class="mb-3">
						<label for="managerActiveSearch" class="form-label">Active</label>
						<s:select id="managerActiveSearch" list="#{null:'Active', true:'Yes', false:'No'}" name="managerSearch.active" class="form-control is-valid" placeholder="Active" autocomplete="off"/>
					</div>
				</div>
			</div>
		</div>
		<div class="card-footer text-center">
			<s:submit class="btn btn-dark" value="Search" onclick="first(); return isValidForm();"/>
		</div>
	</div>
				
	<div class="card mt-4">
		<div class="card-header fw-bold">
			Manager List
		</div>
		<div class="table-responsive">
			<table class="table table-striped">
				<thead>
					<tr>
						<th>
							#
						</th>
						<th>
							Id
						</th>
						<th>
							Cpr
						</th>
						<th>
							Name
						</th>
						<th>
							Age
						</th>
						<th>
							Email
						</th>
						<th>
							Gender
						</th>
						<th>
							Mobile
						</th>
						<th>
							Salary
						</th>
						<th>
							Address Id
						</th>
						<th>
							Address Building
						</th>
						<th>
							Address Road
						</th>
						<th>
							Address Block
						</th>
						<th>
							Address City
						</th>
						<th>
							Degree
						</th>
						<th>
							Allowance
						</th>
						<th>
							Active
						</th>
						<th>
							Creation Date
						</th>
						<th>
							Creation User
						</th>
						<th>
							Update Date
						</th>
						<th>
							Update User
						</th>
						<th>
							<s:a class="btn btn-dark" action="toAddManager">Add</s:a>
						</th>
					</tr>
				</thead>
				<tbody>
					<s:iterator value="managers" status="status">
					<tr>
						<td>
							<s:property value="#status.count"/>
						</td>
						<td>
							<s:property value="id"/>
						</td>
						<td>
							<s:property value="cpr"/>
						</td>
						<td>
							<s:property value="name"/>
						</td>
						<td>
							<s:property value="age"/>
						</td>
						<td>
							<s:property value="email"/>
						</td>
						<td>
							<s:property value="gender"/>
						</td>
						<td>
							<s:property value="mobile"/>
						</td>
						<td>
							<s:property value="salary"/>
						</td>
						<td>
							<s:property value="address.id"/>
						</td>
						<td>
							<s:property value="address.building"/>
						</td>
						<td>
							<s:property value="address.road"/>
						</td>
						<td>
							<s:property value="address.block"/>
						</td>
						<td>
							<s:property value="address.city"/>
						</td>
						<td>
							<s:property value="degree"/>
						</td>
						<td>
							<s:property value="allowance"/>
						</td>
						<td>
							<s:property value="active ? 'Yes' : 'No'"/>
						</td>
						<td>
							<s:property value="creationDate"/>
						</td>
						<td>
							<s:property value="creationUser"/>
						</td>
						<td>
							<s:property value="updateDate"/>
						</td>
						<td>
							<s:property value="updateUser"/>
						</td>
						<td>
							<s:a class="btn btn-dark" action="toEditManager?manager.id=%{id}">Edit</s:a>
							<s:if test="!active">
							<s:a class="btn btn-dark" data-bs-toggle="modal" data-bs-target="#activationModal" onclick="selectManager(%{id}, true)">Activate</s:a>
							</s:if>
							<s:if test="active">
							<s:a class="btn btn-dark" data-bs-toggle="modal" data-bs-target="#activationModal" onclick="selectManager(%{id}, false)">Deactivate</s:a>
							</s:if>
						</td>
					</tr>
					</s:iterator>
				</tbody>
			</table>
		</div>
		<div class="card-footer">
			<div class="row">
				<div class="col-3 text-start">
					<s:if test="managerSearch.pageNo != 1">
					<s:submit class="btn btn-dark" value="First" onclick="first()"/>
					<s:submit class="btn btn-dark" value="Previous" onclick="previous()"/>
					</s:if>
				</div>
				<div class="col-3 text-center">
					<label class="fw-bold">
						<div class="row">
							<div class="col">
								Rows:
							</div>
							<div class="col">
								<s:select name="managerSearch.rowCount" list="{3, 5, 10, 15, 20}" class="form-control d-inline" onchange="first(); form.submit()"/>
							</div>
						</div>
					</label>
				</div>
				<div class="col-1 text-center">
					<label class="fw-bold pt-1">
						Total: <s:property value="managerSearch.totalRows"/>
					</label>
				</div>
				<div class="col-2 text-center">
					<label class="fw-bold pt-1">
						Page <s:property value="managerSearch.pageNo"/> of <s:property value="managerSearch.pageCount"/>
					</label>
				</div>
				<div class="col-3 text-end">
					<s:if test="managerSearch.pageNo != managerSearch.pageCount">
					<s:submit class="btn btn-dark" value="Next" onclick="next()"/>
					<s:submit class="btn btn-dark" value="Last" onclick="last()"/>
					</s:if>
				</div>
			</div>
		</div>
	</div>
	<s:hidden id="pageNo" name="managerSearch.pageNo" />
	<s:hidden id="pageCount" name="managerSearch.pageCount" />
	
	<s:hidden id="managerId" name="manager.id" />
	<s:hidden id="active" name="manager.active" />
	
	<div class="modal fade" id="activationModal">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 id="activationTitle" class="modal-title"></h5>
					<button class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<h4 id="activationMessage"></h4>
				</div>
				<div class="modal-footer">
					<s:submit id="confirmBtn" class="btn btn-dark" onclick="updateManagerActive()"/>
					<a class="btn btn-dark" data-bs-dismiss="modal">Close</a>
				</div>
			</div>
		</div>
	</div>
			
	<script>
	
		function first(){
			
			$("#pageNo").val(1);
		}
		
		function previous(){
			
			$("#pageNo").val(Number($("#pageNo").val()) - 1);
		}
		
		function next(){
			
			$("#pageNo").val(Number($("#pageNo").val()) + 1);
		}
		
		function last(){
			
			$("#pageNo").val($("#pageCount").val());
		}
		
		function selectManager(managerId, active){
			
			$("#managerId").val(managerId);
			$("#active").val(active);
			
			if(active){
				
				$("#activationTitle").html("Activate Manager");
				$("#activationMessage").html("Are you sure to activate Manager");
				$("#confirmBtn").val("Activate");
				
			}else{
				
				$("#activationTitle").html("Deactivate Manager");
				$("#activationMessage").html("Are you sure to deactivate Manager");
				$("#confirmBtn").val("Deactivate");
			}
		}
		
		function updateManagerActive(){
			
			$("#form").attr("action", "updateManagerActive");
		}
	</script>
</s:form>