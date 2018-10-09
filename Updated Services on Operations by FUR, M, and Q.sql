select * from OPERATION O
-- Set the value run for the Service_ID on either "F,U,R Work Orders" and/or "Quote Masters" and "Masters"
--UPDATE RUN = 10.00
-- Tie the operation table to the Work Order Table
INNER JOIN WORK_ORDER WO ON O.WORKORDER_TYPE = WO.TYPE 
AND O.WORKORDER_BASE_ID = WO.BASE_ID and O.WORKORDER_LOT_ID = WO.LOT_ID
AND O.WORKORDER_SPLIT_ID = WO.SPLIT_ID and O.WORKORDER_SUB_ID = WO.SUB_ID
-- Specify the outside Service
where SERVICE_ID = 'SPRINGPROBEASSY'
-- Only touch Released, Unreleased, and Firmed Work Orders
--and WO.STATUS = 'F' and WO.TYPE = 'W' 
and WO.TYPE = 'M'
--and WO.TYPE = 'Q'