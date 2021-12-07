package com.codingdojo.omikuji.controllers;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class OmikujiController {

	@RequestMapping("/omikuji")
	public String omikuji() {
		return "index.jsp";
	}
	
	@RequestMapping(value="/omikuji/processOmikuji", method=RequestMethod.POST)
	public String processOmikuji(
		@RequestParam(value="quantity") Integer quantity,
		@RequestParam(value="person") String person,
		@RequestParam(value="city") String city,
		@RequestParam(value="endeavor") String endeavor,
		@RequestParam(value="thing") String thing,
		@RequestParam(value="nice") String nice,
		HttpSession session) {
		
		session.setAttribute("quantity", quantity);
		session.setAttribute("person", person);
		session.setAttribute("city", city);
		session.setAttribute("endeavor", endeavor);
		session.setAttribute("thing", thing);
		session.setAttribute("nice", nice);
		
		return "redirect:/omikuji/show";
	}
	
	@RequestMapping("/omikuji/show")
	public String showOmikuji(HttpSession session, Model model) {
		Integer quantity = (Integer) session.getAttribute("quantity");
		String person = (String) session.getAttribute("person");
		String city = (String) session.getAttribute("city");
		String endeavor = (String) session.getAttribute("endeavor");
		String thing = (String) session.getAttribute("thing");
		String nice = (String) session.getAttribute("nice");
		
		model.addAttribute("quantity", quantity);
		model.addAttribute("person", person);
		model.addAttribute("city", city);
		model.addAttribute("endeavor", endeavor);
		model.addAttribute("thing", thing);
		model.addAttribute("nice", nice);
		
		return "show.jsp";
	}
	
}
