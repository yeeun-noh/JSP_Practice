package unit05;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/SelectSurvlet")
public class SelectSurvlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String job = request.getParameter("job");
		String interests[] = request.getParameterValues("interest");
		
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print("<html><body>");
		out.println("당신이 선택한 직업: <b>");
		out.print(job);

		out.println("</b><hr>당신이 선택한 관심 분야: <b>");
		if(interests == null) {
			out.print("선택한 항목이 없습니다.");
		}else {
			for(String interest : interests ) {
				out.print(interest + " ");
			}
		}
		
		out.println("</b><br><a href=''javascript:history.go(-1)'>다시</a>");
		out.print("</body></html>");
		out.close();
	}

//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		request.setCharacterEncoding("utf-8");
//		doGet(request, response);
//	}

}
