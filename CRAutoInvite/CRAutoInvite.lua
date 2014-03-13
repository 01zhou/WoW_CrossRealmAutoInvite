function AutoInvite() 
  print("AutoInvite <ON>");
  CreateFrame("Frame","AutoInvite_F",UIParent);
  AutoInvite_F:RegisterEvent("CHAT_MSG_BN_WHISPER");
  AutoInvite_F:SetScript("OnEvent", hdl)
end 

function hdl(self,event,arg1,arg2,arg3,arg4,arg5,arg6,arg7,arg8,arg9,arg10,arg11,arg12,arg13)
	if(UnitInRaid("player") == nil) then
		if(arg1=="1") then
			-- _,n = BNGetToonInfo(BNet_GetPresenceID(arg2));
			-- InviteUnit(n);
			BNInviteFriend(arg13);
		else
			if( string.find(arg1, "组我") ~=nil or string.find(arg1, "zu") ~=nil or string.find(arg1, "求组") ~=nil or string.find(arg1, "组队")~=nil or arg1 == "组") then
				BNSendWhisper(arg13, "如果需要组队邀请，请M我'1'。");
			end
		end
	end
end
