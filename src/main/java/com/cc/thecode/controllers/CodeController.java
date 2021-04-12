package com.cc.thecode.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class CodeController {
	@RequestMapping("/")
	public String index() {
		return "index.jsp";
	}
	
	@RequestMapping(value="/submit", method=RequestMethod.POST)
	public String submit(@RequestParam(value="guess") String guess, HttpSession session) {
		if (guess.equals("Bushido") || guess.equals("bushido")) {
			session.setAttribute("secretCode", guess);
			return "redirect:/code";			
		} else {
			return "redirect:/createError";
		}
	}
	
	@RequestMapping("/createError")
    public String flashMessages(RedirectAttributes redirectAttributes) {
        redirectAttributes.addFlashAttribute("error", "You must train harder!");
        return "redirect:/";
    }
	
	@RequestMapping("/code")
	public String code() {
		
		return "bushido.jsp";
	}
}
