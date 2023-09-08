--[[
	xxx：取代為字串編號，從0開始
	SetCountLimit：預設為「這個卡名的效果1回合只能使用1次」
]]
local s,id,o=GetID()
function s.initial_effect(c)
	--啟動效果
	local e1=Effect.CreateEffect(c)
	e1:SetDescription(aux.Stringid(id,xxx))
	e1:SetCategory(CATEGORY_)
	e1:SetType(EFFECT_TYPE_IGNITION)
	e1:SetRange(LOCATION_)
	e1:SetProperty(EFFECT_FLAG_)
	e1:SetCountLimit(1,id)
	e1:SetCondition(s.condition)
	e1:SetCost(s.cost)
	e1:SetTarget(s.target)
	e1:SetOperation(s.operation)
	c:RegisterEffect(e1)
	
	--反轉效果，選發
	local e2=Effect.CreateEffect(c)
	e2:SetDescription(aux.Stringid(id,xxx))
	e2:SetCategory(CATEGORY_)
	e2:SetType(EFFECT_TYPE_SINGLE+EFFECT_TYPE_FLIP+EFFECT_TYPE_TRIGGER_O)
	e2:SetProperty(EFFECT_FLAG_)
	e2:SetCountLimit(1,id)
	e2:SetCondition(s.condition)
	e2:SetCost(s.cost)
	e2:SetTarget(s.target)
	e2:SetOperation(s.operation)
	c:RegisterEffect(e2)
	
	--反轉效果，必發
	local e3=Effect.CreateEffect(c)
	e3:SetDescription(aux.Stringid(id,xxx))
	e3:SetCategory(CATEGORY_)
	e3:SetType(EFFECT_TYPE_SINGLE+EFFECT_TYPE_FLIP+EFFECT_TYPE_TRIGGER_F)
	e3:SetProperty(EFFECT_FLAG_)
	e3:SetCountLimit(1,id)
	e3:SetCondition(s.condition)
	e3:SetCost(s.cost)
	e3:SetTarget(s.target)
	e3:SetOperation(s.operation)
	c:RegisterEffect(e3)
	
	--誘發效果，此卡...時，選發
	local e4=Effect.CreateEffect(c)
	e4:SetDescription(aux.Stringid(id,xxx))
	e4:SetCategory(CATEGORY_)
	e4:SetType(EFFECT_TYPE_SINGLE+EFFECT_TYPE_TRIGGER_O)
	e4:SetCode(EVENT_)
	e4:SetProperty(EFFECT_FLAG_)
	e4:SetCountLimit(1,id)
	e4:SetCondition(s.condition)
	e4:SetCost(s.cost)
	e4:SetTarget(s.target)
	e4:SetOperation(s.operation)
	c:RegisterEffect(e4)
	
	--誘發效果，此卡...的場合，選發
	local e5=Effect.CreateEffect(c)
	e5:SetDescription(aux.Stringid(id,xxx))
	e5:SetCategory(CATEGORY_)
	e5:SetType(EFFECT_TYPE_SINGLE+EFFECT_TYPE_TRIGGER_O)
	e5:SetCode(EVENT_)
	e5:SetProperty(EFFECT_FLAG_DELAY)
	e5:SetCountLimit(1,id)
	e5:SetCondition(s.condition)
	e5:SetCost(s.cost)
	e5:SetTarget(s.target)
	e5:SetOperation(s.operation)
	c:RegisterEffect(e5)
	
	--誘發效果，此卡...的場合，必發
	local e6=Effect.CreateEffect(c)
	e6:SetDescription(aux.Stringid(id,xxx))
	e6:SetCategory(CATEGORY_)
	e6:SetType(EFFECT_TYPE_SINGLE+EFFECT_TYPE_TRIGGER_F)
	e6:SetCode(EVENT_)
	e6:SetProperty(EFFECT_FLAG_)
	e6:SetCountLimit(1,id)
	e6:SetCondition(s.condition)
	e6:SetCost(s.cost)
	e6:SetTarget(s.target)
	e6:SetOperation(s.operation)
	c:RegisterEffect(e6)
	
	--誘發效果，其他事件，時選發
	local e7=Effect.CreateEffect(c)
	e7:SetDescription(aux.Stringid(id,xxx))
	e7:SetCategory(CATEGORY_)
	e7:SetType(EFFECT_TYPE_FIELD+EFFECT_TYPE_TRIGGER_O)
	e7:SetCode(EVENT_)
	e7:SetRange(LOCATION_)
	e7:SetProperty(EFFECT_FLAG_)
	e7:SetCountLimit(1,id)
	e7:SetCondition(s.condition)
	e7:SetCost(s.cost)
	e7:SetTarget(s.target)
	e7:SetOperation(s.operation)
	c:RegisterEffect(e7)
	
	--誘發效果，其他事件，場合選發
	local e8=Effect.CreateEffect(c)
	e8:SetDescription(aux.Stringid(id,xxx))
	e8:SetCategory(CATEGORY_)
	e8:SetType(EFFECT_TYPE_FIELD+EFFECT_TYPE_TRIGGER_O)
	e8:SetCode(EVENT_)
	e8:SetRange(LOCATION_)
	e8:SetProperty(EFFECT_FLAG_DELAY)
	e8:SetCountLimit(1,id)
	e8:SetCondition(s.condition)
	e8:SetCost(s.cost)
	e8:SetTarget(s.target)
	e8:SetOperation(s.operation)
	c:RegisterEffect(e8)
	
	--誘發效果，其他事件，必發
	local e9=Effect.CreateEffect(c)
	e9:SetDescription(aux.Stringid(id,xxx))
	e9:SetCategory(CATEGORY_)
	e9:SetType(EFFECT_TYPE_FIELD+EFFECT_TYPE_TRIGGER_F)
	e9:SetCode(EVENT_)
	e9:SetRange(LOCATION_)
	e9:SetProperty(EFFECT_FLAG_)
	e9:SetCountLimit(1,id)
	e9:SetCondition(s.condition)
	e9:SetCost(s.cost)
	e9:SetTarget(s.target)
	e9:SetOperation(s.operation)
	c:RegisterEffect(e9)
	
	--誘發即時效果，選發
	local ea=Effect.CreateEffect(c)
	ea:SetDescription(aux.Stringid(id,xxx))
	ea:SetCategory(CATEGORY_)
	ea:SetType(EFFECT_TYPE_QUICK_O)
	ea:SetCode(EVENT_FREE_CHAIN)
	ea:SetRange(LOCATION_)
	ea:SetProperty(EFFECT_FLAG_)
	ea:SetCountLimit(1,id)
	ea:SetCondition(s.condition)
	ea:SetCost(s.cost)
	ea:SetTarget(s.target)
	ea:SetOperation(s.operation)
	c:RegisterEffect(ea)
	
	--誘發即時效果，必發
	local eb=Effect.CreateEffect(c)
	eb:SetDescription(aux.Stringid(id,xxx))
	eb:SetCategory(CATEGORY_)
	eb:SetType(EFFECT_TYPE_QUICK_F)
	eb:SetCode(EVENT_)
	eb:SetRange(LOCATION_)
	eb:SetProperty(EFFECT_FLAG_)
	eb:SetCountLimit(1,id)
	eb:SetCondition(s.condition)
	eb:SetCost(s.cost)
	eb:SetTarget(s.target)
	eb:SetOperation(s.operation)
	c:RegisterEffect(eb)
	
	--魔法陷阱卡，卡片的發動
	local ec=Effect.CreateEffect(c)
	ec:SetDescription(aux.Stringid(id,xxx))
	ec:SetCategory(CATEGORY_)
	ec:SetType(EFFECT_TYPE_ACTIVATE)
	ec:SetCode(EVENT_FREE_CHAIN)
	ec:SetProperty(EFFECT_FLAG_)
	ec:SetCountLimit(1,id+EFFECT_COUNT_CODE_OATH)
	ec:SetCondition(s.condition)
	ec:SetCost(s.cost)
	ec:SetTarget(s.target)
	ec:SetOperation(s.operation)
	c:RegisterEffect(ec)
end

---@return boolean
---@param e Effect
---@param eg Group
---@param re Effect
function s.condition(e,tp,eg,ep,ev,re,r,rp)
	return true
end

---@return boolean|nil
---@param e Effect
---@param eg Group
---@param re Effect
function s.cost(e,tp,eg,ep,ev,re,r,rp,chk)
end

---@return boolean|nil
---@param e Effect
---@param eg Group
---@param re Effect
function s.target(e,tp,eg,ep,ev,re,r,rp,chk,chkc)
end

---@param e Effect
---@param eg Group
---@param re Effect
function s.operation(e,tp,eg,ep,ev,re,r,rp)
end
