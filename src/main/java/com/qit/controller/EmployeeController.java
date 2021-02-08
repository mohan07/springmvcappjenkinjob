package com.qit.controller;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.qit.model.Customer;

@Controller
public class EmployeeController {
	
	@GetMapping(value="/addCustomer")
	public String sayHello(Model model) {
		
		Customer customer=new Customer();
		model.addAttribute("customer", customer);
		
		return "customer";
	}

	@PostMapping(value="/saveCustomer")
	public String saveCustomer(@Valid @ModelAttribute("customer")  Customer customer,BindingResult result,Model model) {
		
		if(result.hasErrors()) {
			return "customer";	
		}
		else {
			model.addAttribute("customer", customer);
			return "customerInfo";
		}
	}
}
