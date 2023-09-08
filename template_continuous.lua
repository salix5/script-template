--[[
	xxx：取代為字串編號，從0開始
]]
local s,id,o=GetID()
function s.initial_effect(c)
	--一般永續效果，只影響自身
	local e1=Effect.CreateEffect(c)
	e1:SetType(EFFECT_TYPE_SINGLE)
	e1:SetCode()
	e1:SetProperty(EFFECT_FLAG_SINGLE_RANGE)
	e1:SetRange(LOCATION_)
	e1:SetCondition(s.)
	e1:SetValue(s.)
	c:RegisterEffect(e1)
	
	--一般永續效果，影響其他卡
	local e2=Effect.CreateEffect(c)
	e2:SetType(EFFECT_TYPE_FIELD)
	e2:SetCode()
	e2:SetProperty(EFFECT_FLAG_)
	e2:SetRange(LOCATION_)
	e2:SetTargetRange(0,0)
	e2:SetCondition(s.)
	e2:SetTarget(s.)
	e2:SetValue(s.)
	c:RegisterEffect(e2)
	
	--觸發型永續效果，此卡...的場合
	local e3=Effect.CreateEffect(c)
	e3:SetDescription(aux.Stringid(id,xxx))
	e3:SetType(EFFECT_TYPE_SINGLE+EFFECT_TYPE_CONTINUOUS)
	e3:SetCode(EVENT_)
	e3:SetProperty(EFFECT_FLAG_)
	e3:SetCondition(s.condition)
	e3:SetOperation(s.operation)
	c:RegisterEffect(e3)
	
	--觸發型永續效果，其他事件
	local e4=Effect.CreateEffect(c)
	e4:SetDescription(aux.Stringid(id,xxx))
	e4:SetType(EFFECT_TYPE_FIELD+EFFECT_TYPE_CONTINUOUS)
	e4:SetCode(EVENT_)
	e4:SetRange(LOCATION_)
	e4:SetProperty(EFFECT_FLAG_)
	e4:SetCondition(s.condition)
	e4:SetOperation(s.operation)
	c:RegisterEffect(e4)
	
	--裝備卡給予裝備怪獸的效果
	local e5=Effect.CreateEffect(c)
	e5:SetType(EFFECT_TYPE_EQUIP)
	e5:SetCode()
	e5:SetProperty(EFFECT_FLAG_)
	e5:SetCondition(s.)
	e5:SetValue(s.)
	c:RegisterEffect(e5)
end

---@return boolean
---@param e Effect
---@param eg Group
---@param re Effect
function s.condition(e,tp,eg,ep,ev,re,r,rp)
	return true
end

---@param e Effect
---@param eg Group
---@param re Effect
function s.operation(e,tp,eg,ep,ev,re,r,rp)
end
