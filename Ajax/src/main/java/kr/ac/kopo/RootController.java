package kr.ac.kopo;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class RootController {
	int count;
	
	@RequestMapping("/")
	String index(Model model) {
		
		model.addAttribute("count", count);
		
		return "index";
	}
	
	@RequestMapping("dec")
	String dec(Model model) {
		count--;
		
		model.addAttribute("count", count);
		
		return "index";
	}
	
	@RequestMapping("inc")
	String inc(Model model) {
		count++;
		
		model.addAttribute("count", count);
		
		return "index";
	}
	
	@RequestMapping("/ajax")
	String ajax(Model model) {
		
		model.addAttribute("count", count);
		
		return "ajax";
	}
	
	//문자열 그대로 보내줘라
	@ResponseBody
	@RequestMapping("/ajax/dec")
	String ajaxDec(Model model) {
		count--;
		
		model.addAttribute("count", count);
		
		return String.valueOf(count);
		//정수를 문자열로 바꾸어주는 메소드
	}
	
	@ResponseBody
	@RequestMapping("/ajax/inc")
	String ajaxInc(Model model) {
		count++;
		
		model.addAttribute("count", count);
		
		return String.valueOf(count);
	}
	
	@RequestMapping("/jquery")
	String jquery() {
		return "jquery";
	}
}
