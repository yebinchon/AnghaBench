
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fmd_hdl_t ;


 int fmd_hdl_debug (int *,char*,char const*) ;

void
fmd_case_uuresolved(fmd_hdl_t *hdl, const char *uuid)
{
 fmd_hdl_debug(hdl, "case resolved by uuid (%s)", uuid);
}
