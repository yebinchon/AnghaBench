
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * mod_info; } ;
typedef TYPE_1__ fmd_module_t ;
typedef int fmd_hdl_t ;
typedef int boolean_t ;



boolean_t
fmd_module_initialized(fmd_hdl_t *hdl)
{
 fmd_module_t *mp = (fmd_module_t *)hdl;

 return (mp->mod_info != ((void*)0));
}
