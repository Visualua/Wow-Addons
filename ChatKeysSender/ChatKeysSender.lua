-- Config
local KeyName = "0" 		-- Название ключа
local KeyNumber = "-1" 	-- Уровень ключа

local cooldown = 30 -- Перезарядка кнопки
local addonname = "[CKS] Chat Keys Sender"


-- window
local frame = CreateFrame("Frame", "ChatKeysSender", UIParent, "BasicFrameTemplateWithInset")
frame:SetSize(350, 100)
frame:SetPoint("CENTER", UIParent, "CENTER")
frame:SetMovable(true)
frame:EnableMouse(true)
frame:RegisterForDrag("LeftButton")
frame:SetScript("OnDragStart", frame.StartMoving)
frame:SetScript("OnDragStop", frame.StopMovingOrSizing)
frame:SetFrameStrata("HIGH")
frame:SetFrameLevel(1)
frame.title = frame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
frame.title:SetPoint("TOP", frame, "TOP", 0, -5)
frame.title:SetText("[CKS] Chat Keys Sender")
frame:Hide()

-- CheckBoxes
local checkbox1 = CreateFrame("CheckButton", "Checkbox1", frame, "UICheckButtonTemplate")
checkbox1:SetPoint("TOPLEFT", frame, "TOPLEFT", 155, -29)
checkbox1.text = checkbox1:CreateFontString(nil, "OVERLAY", "GameFontNormal")
checkbox1.text:SetPoint("LEFT", checkbox1, "RIGHT", 0, 0)
checkbox1.text:SetText("танк")

local checkbox2 = CreateFrame("CheckButton", "Checkbox2", frame, "UICheckButtonTemplate")
checkbox2:SetPoint("TOPLEFT", checkbox1, "TOPLEFT", 60, 0)
checkbox2.text = checkbox2:CreateFontString(nil, "OVERLAY", "GameFontNormal")
checkbox2.text:SetPoint("LEFT", checkbox2, "RIGHT", 0, 0)
checkbox2.text:SetText("дд")

local checkbox3 = CreateFrame("CheckButton", "Checkbox3", frame, "UICheckButtonTemplate")
checkbox3:SetPoint("TOPLEFT", checkbox2, "TOPLEFT", 60, 0)
checkbox3.text = checkbox3:CreateFontString(nil, "OVERLAY", "GameFontNormal")
checkbox3.text:SetPoint("LEFT", checkbox3, "RIGHT", 0, 0)
checkbox3.text:SetText("хил")



-- Выпадающее меню для уровня ключа
 local dropDownNumber = CreateFrame("FRAME", "ChatKeysSenderDropdown", frame, "UIDropDownMenuTemplate")
 dropDownNumber:SetPoint("TOPLEFT", 0, -60)
 UIDropDownMenu_SetWidth(dropDownNumber, 120)
 UIDropDownMenu_SetText(dropDownNumber, "Выберите уровень")
 
 
 -- Create and bind the initialization function to the dropdown menu
 UIDropDownMenu_Initialize(dropDownNumber, function(self, level, menuList)
  local info = UIDropDownMenu_CreateInfo()
    info.text = "0"
	info.func = self.SetValue
	info.arg1 = "0"
	info.checked = KeyNumber == "0"
    UIDropDownMenu_AddButton(info)
	
	info.text = "2"
info.func = self.SetValue
info.arg1 = "2"
info.checked = KeyName == "2"
UIDropDownMenu_AddButton(info)

info.text = "3"
info.func = self.SetValue
info.arg1 = "3"
info.checked = KeyName == "3"
UIDropDownMenu_AddButton(info)

info.text = "4"
info.func = self.SetValue
info.arg1 = "4"
info.checked = KeyName == "4"
UIDropDownMenu_AddButton(info)

info.text = "5"
info.func = self.SetValue
info.arg1 = "5"
info.checked = KeyName == "5"
UIDropDownMenu_AddButton(info)

info.text = "6"
info.func = self.SetValue
info.arg1 = "6"
info.checked = KeyName == "6"
UIDropDownMenu_AddButton(info)

info.text = "7"
info.func = self.SetValue
info.arg1 = "7"
info.checked = KeyName == "7"
UIDropDownMenu_AddButton(info)

info.text = "8"
info.func = self.SetValue
info.arg1 = "8"
info.checked = KeyName == "8"
UIDropDownMenu_AddButton(info)

info.text = "9"
info.func = self.SetValue
info.arg1 = "9"
info.checked = KeyName == "9"
UIDropDownMenu_AddButton(info)

info.text = "10"
info.func = self.SetValue
info.arg1 = "10"
info.checked = KeyName == "10"
UIDropDownMenu_AddButton(info)

info.text = "11"
info.func = self.SetValue
info.arg1 = "11"
info.checked = KeyName == "11"
UIDropDownMenu_AddButton(info)

info.text = "12"
info.func = self.SetValue
info.arg1 = "12"
info.checked = KeyName == "12"
UIDropDownMenu_AddButton(info)

info.text = "13"
info.func = self.SetValue
info.arg1 = "13"
info.checked = KeyName == "13"
UIDropDownMenu_AddButton(info)

info.text = "14"
info.func = self.SetValue
info.arg1 = "14"
info.checked = KeyName == "14"
UIDropDownMenu_AddButton(info)

info.text = "15"
info.func = self.SetValue
info.arg1 = "15"
info.checked = KeyName == "15"
UIDropDownMenu_AddButton(info)

info.text = "16"
info.func = self.SetValue
info.arg1 = "16"
info.checked = KeyName == "16"
UIDropDownMenu_AddButton(info)

info.text = "17"
info.func = self.SetValue
info.arg1 = "17"
info.checked = KeyName == "17"
UIDropDownMenu_AddButton(info)

info.text = "18"
info.func = self.SetValue
info.arg1 = "18"
info.checked = KeyName == "18"
UIDropDownMenu_AddButton(info)

info.text = "19"
info.func = self.SetValue
info.arg1 = "19"
info.checked = KeyName == "19"
UIDropDownMenu_AddButton(info)

info.text = "20"
info.func = self.SetValue
info.arg1 = "20"
info.checked = KeyName == "20"
UIDropDownMenu_AddButton(info)

info.text = "21"
info.func = self.SetValue
info.arg1 = "21"
info.checked = KeyName == "21"
UIDropDownMenu_AddButton(info)

info.text = "22"
info.func = self.SetValue
info.arg1 = "22"
info.checked = KeyName == "22"
UIDropDownMenu_AddButton(info)

info.text = "23"
info.func = self.SetValue
info.arg1 = "23"
info.checked = KeyName == "23"
UIDropDownMenu_AddButton(info)

info.text = "24"
info.func = self.SetValue
info.arg1 = "24"
info.checked = KeyName == "24"
UIDropDownMenu_AddButton(info)

info.text = "25"
info.func = self.SetValue
info.arg1 = "25"
info.checked = KeyName == "25"
UIDropDownMenu_AddButton(info)

info.text = "26"
info.func = self.SetValue
info.arg1 = "26"
info.checked = KeyName == "26"
UIDropDownMenu_AddButton(info)

info.text = "27"
info.func = self.SetValue
info.arg1 = "27"
info.checked = KeyName == "27"
UIDropDownMenu_AddButton(info)

info.text = "28"
info.func = self.SetValue
info.arg1 = "28"
info.checked = KeyName == "28"
UIDropDownMenu_AddButton(info)

info.text = "29"
info.func = self.SetValue
info.arg1 = "29"
info.checked = KeyName == "29"
UIDropDownMenu_AddButton(info)

info.text = "30"
info.func = self.SetValue
info.arg1 = "30"
info.checked = KeyName == "30"
UIDropDownMenu_AddButton(info)

end)

 
 -- Implement the function to change the KeyName
 function dropDownNumber:SetValue(newValue)
  KeyNumber = newValue
  -- Update the text; if we merely wanted it to display newValue, we would not need to do this
  UIDropDownMenu_SetText(dropDownNumber, KeyNumber)
  -- Because this is called from a sub-menu, only that menu level is closed by default.
  -- Close the entire menu with this next call
  CloseDropDownMenus()
 end


 
 -- Выпадающее меню для названия ключей
 local dropDown = CreateFrame("FRAME", "ChatKeysSenderDropdown", frame, "UIDropDownMenuTemplate")
 dropDown:SetPoint("TOPLEFT", 0, -30)
 UIDropDownMenu_SetWidth(dropDown, 120)
 UIDropDownMenu_SetText(dropDown, "Выберите ключ ")
 
 
 -- Create and bind the initialization function to the dropdown menu
 UIDropDownMenu_Initialize(dropDown, function(self, level, menuList)
  local info = UIDropDownMenu_CreateInfo()
    info.text = "АД"
	info.func = self.SetValue
	info.arg1 = "АД"
	info.checked = KeyName == "АД"
    UIDropDownMenu_AddButton(info)
	
	info.text = "ВГ"
	info.func = self.SetValue
	info.arg1 = "ВГ"
	info.checked = KeyName == "ВГ"
    UIDropDownMenu_AddButton(info)
	
	info.text = "ГК"
	info.func = self.SetValue
	info.arg1 = "ГК"
	info.checked = KeyName == "ГК"
    UIDropDownMenu_AddButton(info)
	
	info.text = "ММ"
	info.func = self.SetValue
	info.arg1 = "ММ"
	info.checked = KeyName == "ММ"
    UIDropDownMenu_AddButton(info)
	
	info.text = "МС"
	info.func = self.SetValue
	info.arg1 = "МС"
	info.checked = KeyName == "МС"
    UIDropDownMenu_AddButton(info)
	
	info.text = "ОБ"
	info.func = self.SetValue
	info.arg1 = "ОБ"
	info.checked = KeyName == "ОБ"
    UIDropDownMenu_AddButton(info)
	
	    info.text = "ПГ"
	info.func = self.SetValue
	info.arg1 = "ПГ"
	info.checked = KeyName == "ПГ"
    UIDropDownMenu_AddButton(info)
	
	info.text = "СШ"
	info.func = self.SetValue
	info.arg1 = "СШ"
	info.checked = KeyName == "СШ"
    UIDropDownMenu_AddButton(info)
	
	info.text = "ТД"
	info.func = self.SetValue
	info.arg1 = "ТД"
	info.checked = KeyName == "ТД"
    UIDropDownMenu_AddButton(info)
	
	info.text = "УУ"
	info.func = self.SetValue
	info.arg1 = "УУ"
	info.checked = KeyName == "УУ"
    UIDropDownMenu_AddButton(info)
	
	info.text = "ХС"
	info.func = self.SetValue
	info.arg1 = "ХС"
	info.checked = KeyName == "ХС"
    UIDropDownMenu_AddButton(info)
	
	info.text = "ЗЖ"
	info.func = self.SetValue
	info.arg1 = "ЗЖ"
	info.checked = KeyName == "ЗЖ"
    UIDropDownMenu_AddButton(info)

end)
 
 -- Implement the function to change the KeyName
 function dropDown:SetValue(newValue)
  KeyName = newValue
  -- Update the text; if we merely wanted it to display newValue, we would not need to do this
  UIDropDownMenu_SetText(dropDown,  KeyName)
  -- Because this is called from a sub-menu, only that menu level is closed by default.
  -- Close the entire menu with this next call
  CloseDropDownMenus()
 end


local button = CreateFrame("Button", nil, frame, "UIPanelButtonTemplate")
button:SetSize(177, 25)
button:SetPoint("BOTTOM", 70, 14)
button:SetText("Отправить")
local function OnUpdate(self, elapsed)
  self.time = self.time - elapsed
  if self.time <= 0 then
    button:Enable()
    self:SetScript("OnUpdate", nil)
  end
end
button:SetScript("OnClick", function(self)
if KeyName == "0" or KeyNumber == "-1" then
UIErrorsFrame:AddMessage("[CKS]Не указано название подземелья или уровень сложности", 1.0, 0, 0, 1.0, UIERRORS_HOLD_TIME)
else
if not checkbox1:GetChecked() and not checkbox2:GetChecked() and not checkbox3:GetChecked() then
UIErrorsFrame:AddMessage("[CKS]Не выбранна не одна роль", 1.0, 0, 0, 1.0, UIERRORS_HOLD_TIME)

else
local channelID = GetChannelName("world_ru")
local message = KeyName .. "[" .. KeyNumber .. "] || "
local message_parts = {}
if checkbox1:GetChecked() then
table.insert(message_parts, checkbox1.text:GetText())
end
if checkbox2:GetChecked() then
table.insert(message_parts, checkbox2.text:GetText())
end
if checkbox3:GetChecked() then
table.insert(message_parts, checkbox3.text:GetText())
end
if #message_parts > 0 then
message = message .. table.concat(message_parts, ", ")
SendChatMessage( "{череп} " .. message .. " || зсг {череп}", "CHANNEL", "COMMON", channelID)
self:Disable()
  self.time = cooldown
  self:SetScript("OnUpdate", OnUpdate)
end
end
end
end)



local IconMiniMap = CreateFrame("Button", "MyIconMiniMapButton", Minimap)
	IconMiniMap:SetHighlightTexture("Interface\\Minimap\\UI-Minimap-ZoomButton-Highlight");
	IconMiniMap:SetWidth(32)
    IconMiniMap:SetHeight(32)
    IconMiniMap:SetFrameStrata("LOW")
	IconMiniMap:SetMovable(true)
	IconMiniMap:RegisterForDrag("LeftButton")
	IconMiniMap:RegisterForClicks("AnyUp");
	IconMiniMap:SetPoint("CENTER", 65, -80)
	IconMiniMap.icon = IconMiniMap:CreateTexture(nil, "BACKGROUND")
	IconMiniMap.icon:SetTexture("interface\\FriendsFrame\\UI-Toast-ChatInviteIcon")
	IconMiniMap.icon:SetWidth(22);
    IconMiniMap.icon:SetHeight(22);
	IconMiniMap.icon:SetPoint("CENTER", 0, 0)
	IconMiniMap.border = IconMiniMap:CreateTexture(nil, "ARTWORK")
	IconMiniMap.border:SetTexture("Interface\\Minimap\\MiniMap-TrackingBorder")
	IconMiniMap.border:SetTexCoord(0,0.6,0,0.6);
    IconMiniMap.border:SetAllPoints(IconMiniMap);
	IconMiniMap:SetScript("OnClick", function(self)
	if frame:IsShown() then
		frame:Hide()
	else
		frame:Show()
	end
end)

IconMiniMap:SetScript("OnEnter",function(self)
       GameTooltip:SetOwner(self, "ANCHOR_LEFT")
       GameTooltip:AddLine(addonname)
       GameTooltip:Show()
     end)
	 
	 IconMiniMap:SetScript("OnLeave", function(self)    
     GameTooltip:Hide();
     self.icon:SetPoint("CENTER", 0, 0);
end)



