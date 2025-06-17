CREATE OR REPLACE FUNCTION CMDKLTD_HTESTE( 
			cd_doenca_cid_p	varchar2)
			return varchar2 is
 
ds_retorno_w	varchar2(1);
 
begin
 
select	nvl(max(ie_situacao),'A')
into	ds_retorno_w
from	cid_doenca
where	cd_doenca_cid	= cd_doenca_cid_p;
 
return	ds_retorno_w;
END CMDKLTD_HTESTE;
/