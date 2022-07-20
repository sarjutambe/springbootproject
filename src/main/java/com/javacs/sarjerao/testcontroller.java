package com.javacs.sarjerao;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@ResponseBody

public class testcontroller {

		@RequestMapping("/test")
		public String firsthandler () {
			return "Just testing ...SARJERAO TAMBE";
		}
		
}
