
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* mod_spec; } ;
typedef TYPE_1__ fmd_module_t ;
typedef int fmd_hdl_t ;



void
fmd_hdl_setspecific(fmd_hdl_t *hdl, void *spec)
{
 fmd_module_t *mp = (fmd_module_t *)hdl;

 mp->mod_spec = spec;
}
