-----------------------------------------
-- Spell: Thundara
-- Deals lightning damage to enemies within area of effect.
-----------------------------------------
require("scripts/globals/status")
require("scripts/globals/magic")
-----------------------------------------

function onMagicCastingCheck(caster, target, spell)
    return 0
end

function onSpellCast(caster, target, spell)
    local spellParams = {}
    spellParams.hasMultipleTargetReduction = true
    spellParams.resistBonus = 1.0
    spellParams.V = 282
    spellParams.V0 = 300
    spellParams.V50 = 400
    spellParams.V100 = 475
    spellParams.V200 = 475
    spellParams.M = 1
    spellParams.M0 = 2
    spellParams.M50 = 1.5
    spellParams.M100 = 1
    spellParams.M200 = 1

    return doElementalNuke(caster, spell, target, spellParams)
end
