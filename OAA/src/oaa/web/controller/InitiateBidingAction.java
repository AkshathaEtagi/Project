package oaa.web.controller;

import java.sql.SQLException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import oaa.web.model.BidingBean;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

public class InitiateBidingAction extends Action {
	private static final String FAILURE = "failure";
	private static final String SUCCESS = "success";

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,

			HttpServletRequest request, HttpServletResponse response) throws Exception {

		// TODO Auto-generated method stub
		if (form instanceof BidingBean) {

			BidingBean bidBean = (BidingBean) form;
			boolean status = false;
			HttpSession session = request.getSession(false);
			String pAuctionId = (String) request.getParameter("aid");
			int auctionid = Integer.parseInt(pAuctionId);

			bidBean.getBidDetails(auctionid);
			
			return mapping.findForward(SUCCESS);
		}

		return mapping.findForward(FAILURE);
	}

}