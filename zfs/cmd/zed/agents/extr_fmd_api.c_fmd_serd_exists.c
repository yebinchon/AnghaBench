
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mod_serds; } ;
typedef TYPE_1__ fmd_module_t ;
typedef int fmd_hdl_t ;


 int * fmd_serd_eng_lookup (int *,char const*) ;

int
fmd_serd_exists(fmd_hdl_t *hdl, const char *name)
{
 fmd_module_t *mp = (fmd_module_t *)hdl;

 return (fmd_serd_eng_lookup(&mp->mod_serds, name) != ((void*)0));
}
