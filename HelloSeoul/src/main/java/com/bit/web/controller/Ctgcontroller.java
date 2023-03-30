package com.bit.web.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.bit.web.dao.CtgDao;
import com.bit.web.service.CtgService;
import com.bit.web.service.CtgServiceImpl;

@Controller
public class Ctgcontroller {
	
	private final CtgServiceImpl ctg;
	
	@Resource
	private CtgDao dao;
	
	
	@GetMapping(value = "gotoctg")
	public String goToCtgPage(Model model) {
		System.out.println(ctg.readyForSg());
		model.addAttribute("locsg",dao.readyForLocation());
		model.addAttribute("maindb",dao.readyForCategory());
		return "Final_Pro/ctgPage";
	}
	
	@GetMapping(value = "gotoHotspotinfo")
	public String gotoHotspotInfo(int pc, Model model) {
		model.addAttribute("info",dao.hotspotinfo(pc));
		return "Final_Pro/HotspotInfo";
	}
	
	@GetMapping(value = "gotohotspot")
	public String gotoHotspot(Model model) {
		model.addAttribute("hotspot", dao.readyForHotspot());
		return "Final_Pro/HotspotMain";
	}
	

}
