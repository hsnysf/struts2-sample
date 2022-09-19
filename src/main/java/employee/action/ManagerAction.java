package employee.action;

import java.util.ArrayList;
import java.util.List;

import javax.naming.InitialContext;

import org.apache.commons.lang3.StringUtils;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.apache.struts2.dispatcher.HttpParameters;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.Preparable;

import employee.bean.ManagerBean;
import employee.entity.Address;
import employee.entity.Manager;

@Action("manager")
@Results({
	@Result(name="toSuccessUpdateManagerActive", type = "redirect", 
			location = "toSuccessUpdateManagerActive", 
			params = {"manager.id", "%{manager.id}","manager.active", "%{manager.active}"}),
	@Result(name = "toSuccessSaveManager", type = "redirect", location = "toSuccessSaveManager", params = {"id", "%{id}", "manager.id", "%{manager.id}"})
})
public class ManagerAction extends ActionSupport implements Preparable{

	private static final long serialVersionUID = 1L;
	
	private String page;
	private Manager managerSearch = new Manager();
	private Manager manager = new Manager();
	private List<Manager> managers = new ArrayList<Manager>();
	private HttpParameters parameters = ActionContext.getContext().getParameters();
	private ManagerBean managerBean;
	private Integer id;
	
	@Override
	public void prepare() throws Exception {
		
		managerBean = (ManagerBean) new InitialContext().lookup("java:global/struts2-sample/ManagerBean");
	}
	
	@Override
	public void validate() {
		
		if (StringUtils.isEmpty(parameters.get("managerSearch.active").getValue())) {

			managerSearch.setActive(null);
		}
		
		if (StringUtils.isEmpty(parameters.get("managerSearch.address.active").getValue())) {

			if (managerSearch.getAddress() == null) {
				managerSearch.setAddress(new Address());
			}

			managerSearch.getAddress().setActive(null);
		}
	}
	
	@Action("/")
	public String searchManagers() throws Exception {
		
		managers = managerBean.searchManagers(managerSearch);
		
		managerSearch = managerBean.getManagerCount(managerSearch);
		
		page = "/managers-list.jsp";
		
		return "layout";
	}
	
	@Action("updateManagerActive")
	public String updateManagerActive() throws Exception {
		
		manager = managerBean.updateManagerActive(manager);
		
		//if(manager.getActive()) {
		//	addActionMessage("Manger " + manager.getId() + " has been activated successfully");
		//}else {
		//	addActionMessage("Manger " + manager.getId() + " has been deactivated successfully");
		//}
		
		//return searchManagers();
		return "toSuccessUpdateManagerActive";
	}
	
	@Action("toSuccessUpdateManagerActive")
	public String toSuccessUpdateManagerActive() throws Exception {
		
		if(manager.getActive()) {
			addActionMessage("Manger " + manager.getId() + " has been activated successfully");
		}else {
			addActionMessage("Manger " + manager.getId() + " has been deactivated successfully");
		}
		
		return searchManagers();
	}
	
	@Action("toAddManager")
	public String toAddManager() throws Exception {
		
		manager = new Manager();
		
		page = "/save-manager.jsp";
		
		return "layout";
	}
	
	@Action("toEditManager")
	public String toEditManager() throws Exception {
		
		manager = managerBean.getManager(manager);
		
		page = "/save-manager.jsp";
		
		return "layout";
	}
	
	@Action("saveManager")
	public String saveManager() throws Exception {
		
		id = manager.getId();
		
		//Integer id = manager.getId();
		
		manager = managerBean.saveManager(manager);
		
		//if(id == null) {
		//	addActionMessage("Manager #" + manager.getId() + " has been added successfully");
		//}else {
		//	addActionMessage("Manager #" + manager.getId() + " has been updated successfully");
		//}
		
		//return searchManagers();
		return "toSuccessSaveManager";
	}
	
	@Action("toSuccessSaveManager")
	public String toSuccessSaveManager() throws Exception {
		
		if(id == null) {
			addActionMessage("Manager #" + manager.getId() + " has been added successfully");
		}else {
			addActionMessage("Manager #" + manager.getId() + " has been updated successfully");
		}
		
		return searchManagers();
	}
	
	public String getPage() {
		return page;
	}
	
	public void setPage(String page) {
		this.page = page;
	}
	
	public Manager getManagerSearch() {
		return managerSearch;
	}
	
	public void setManagerSearch(Manager managerSearch) {
		this.managerSearch = managerSearch;
	}
	
	public Manager getManager() {
		return manager;
	}
	
	public void setManager(Manager manager) {
		this.manager = manager;
	}
	
	public List<Manager> getManagers() {
		return managers;
	}
	
	public void setManagers(List<Manager> managers) {
		this.managers = managers;
	}
	
	public Integer getId() {
		return id;
	}
	
	public void setId(Integer id) {
		this.id = id;
	}
}