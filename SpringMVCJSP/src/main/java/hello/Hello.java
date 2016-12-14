package hello;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class Hello {
	
	class HelloData{
		private String name;
	}
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index(Map<String, Object> model) {
		return "hello";
	}
	@RequestMapping(value = "/hello/{name}", method = RequestMethod.GET)
	public @ResponseBody String hello(@PathVariable String name) {
		//String name = request.getParameter("name");
		return "hello + <b>" + name + "</b>";
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}
}
