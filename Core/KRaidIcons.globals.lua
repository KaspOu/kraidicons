local addonName, ns = ...
ns.VERSION       = C_AddOns.GetAddOnMetadata(addonName, "Version");
ns.VERSIONNR     = tonumber(gsub(ns.VERSION, "%D", ""), 10);
local GetAddOnInfo = C_AddOns.GetAddOnInfo or GetAddOnInfo;
ns.ADDON_NAME,ns.TITLE, ns.NOTES = GetAddOnInfo(addonName);
ns.OPTIONS_NAME = "KRaidIconsOptions";


-- Kallye Raid Frames always loaded before
if (KRF_TITLE) then
	ns.CONFLICT_WITH, ns.CONFLICT = KRF_TITLE, true;
end

ns.IS_RETAIL = (WOW_PROJECT_ID == (WOW_PROJECT_MAINLINE or 1));
ns.DEFAULT_RAIDICON_SIZE = 12;


-- Prepare I18N, with chat colors
ns.I18N = {};
local l = ns.I18N;
local function BCC(r, g, b) return string.format("|cff%02x%02x%02x", (r*255), (g*255), (b*255)); end

l.BL  = BCC(0.1, 0.1, 1.0);
l.BLD = BCC(0.0, 0.0, 0.7);
l.BLL = BCC(0.5, 0.8, 1.0);
l.GR  = BCC(0.1, 1.0, 0.1);
l.GRD = BCC(0.0, 0.7, 0.0);
l.GRL = BCC(0.25, 0.75, 0.25);
l.RD  = BCC(1.0, 0.1, 0.1);
l.RDD = BCC(0.7, 0.0, 0.0);
l.RDL = BCC(1.0, 0.3, 0.3);
l.YL  = BCC(1.0, 1.0, 0.0);
l.YLD = BCC(0.7, 0.7, 0.0);
l.YLL = BCC(1.0, 1.0, 0.5);
l.OR  = BCC(1.0, 0.5, 0.25);
l.ORD = BCC(0.7, 0.5, 0.0);
l.ORL = BCC(1.0, 0.6, 0.3);
l.WH  = BCC(1.0, 1.0, 1.0);
l.CY  = BCC(0.5, 1.0, 1.0);
l.GY  = BCC(0.5, 0.5, 0.5);
l.GYD = BCC(0.35, 0.35, 0.35);
l.GYL = BCC(0.65, 0.65, 0.65);


--[[
!  Default chat
]]
function ns.AddMsg(msg)
	if (DEFAULT_CHAT_FRAME) then
		DEFAULT_CHAT_FRAME:AddMessage(format("%s%s|r", l.YLL, msg or ""));
	end
end
--[[
!  Warning chat
]]
function ns.AddMsgWarn(msg)
	if (DEFAULT_CHAT_FRAME) then
		DEFAULT_CHAT_FRAME:AddMessage(format("%s%s|r", l.CY, msg or ""));
	end
end

--[[
!  Error chat
]]
function ns.AddMsgErr(msg)
	if (DEFAULT_CHAT_FRAME) then
		DEFAULT_CHAT_FRAME:AddMessage(format("%s%s: %s|r", l.RDL, ns.TITLE, msg or ""));
	end
end

KRI_TITLE = ns.TITLE; -- global variable, for conflict detection

KRIUI = {
	l = l,
	scrollBarX = ns.IS_RETAIL and 6 or -2,
};

--@do-not-package@
-- DEBUG Purposes
KRI = ns
--@end-do-not-package@