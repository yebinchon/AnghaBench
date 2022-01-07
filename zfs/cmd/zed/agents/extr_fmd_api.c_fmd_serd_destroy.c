
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mod_serds; } ;
typedef TYPE_1__ fmd_module_t ;
typedef int fmd_hdl_t ;


 int fmd_hdl_debug (int *,char*,char const*) ;
 int fmd_serd_eng_delete (int *,char const*) ;

void
fmd_serd_destroy(fmd_hdl_t *hdl, const char *name)
{
 fmd_module_t *mp = (fmd_module_t *)hdl;

 fmd_serd_eng_delete(&mp->mod_serds, name);

 fmd_hdl_debug(hdl, "serd_destroy %s", name);
}
