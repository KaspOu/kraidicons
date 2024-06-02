-------------------------------------------------------------------------------
-- French localization
-------------------------------------------------------------------------------
if (GetLocale() == "frFR") then    
local _, ns = ...
local l = ns.I18N;

l.VERS_TITLE    = format("%s %s", ns.TITLE, ns.VERSION);

l.CONFLICT_MESSAGE = "D\195\169sactiv\195\169 : Conflit avec %s";

l.SUBTITLE      = "Ic\195\180nes de raid";
l.DESC          = "Affiche les ic\195\180nes de cible (|TInterface\\TargetingFrame\\UI-RaidTargetingIcon_1:0|t|TInterface\\TargetingFrame\\UI-RaidTargetingIcon_2:0|t...) sur les barres de raid\n\n"
l.OPTIONS_TITLE = format("%s - Options", l.VERS_TITLE);

l.MSG_LOADED         = format("%s lanc\195\169 et actif", l.VERS_TITLE);

l.INIT_FAILED = format("%s pas charg\195\169 correctement (conflit ?) !", l.VERS_TITLE);

-- local required = l.YL.."*";
l.OPTION_RAIDICONS_HEADER = "Ic\195\180nes de raid";
l.OPTION_RAIDICONS_ANCHOR = "Alignement des ic\195\180nes";
l.OPTION_RAIDICONS_ANCHOR_TOOLTIP = "Position de l'ic\195\180ne cible dans le cadre de raid";
l.OPTION_CENTER = "Centre"
l.OPTION_TOPLEFT = "Haut Gauche";
l.OPTION_TOPRIGHT = "Haut Droit";
l.OPTION_BOTTOMLEFT = "Bas Gauche";
l.OPTION_BOTTOMRIGHT = "Bas Droit";

l.OPTION_RESET_OPTIONS = "R\195\169initialiser le profil";
l.OPTION_RELOAD_REQUIRED = "Certains changements n\195\169cessitent un rechargement (\195\169crivez : "..l.YL.."/reload|r )";
l.OPTIONS_ASTERIX = l.YL.."*|r"..l.WH..": Options n\195\169cessitant un rechargement";
l.OPTION_SHOWMSGNORMAL = l.GYL.."Afficher les messages";
l.OPTION_SHOWMSGWARNING = l.GYL.."Afficher les alertes";
l.OPTION_SHOWMSGERR = l.GYL.."Afficher les erreurs";
l.OPTION_WHATSNEW = "Nouveaut\195\169s";

--@do-not-package@
-- https://code.google.com/archive/p/mangadmin/wikis/SpecialCharacters.wiki
-- https://wowwiki.fandom.com/wiki/Localizing_an_addon
--@end-do-not-package@
end
