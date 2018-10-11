select pl.PART_ID, WAREHOUSE_ID, pl.LOCATION_ID, pl.Qty, p.COMMODITY_CODE, p.TOOL_OR_FIXTURE, ps.ABC_CODE
from adv.dbo.PART_LOCATION pl
inner join adv.dbo.PART_SITE ps on pl.PART_ID = ps.PART_ID
inner join adv.dbo.PART p on ps.PART_ID = p.ID
where pl.Warehouse_ID = 'INACTIVE'