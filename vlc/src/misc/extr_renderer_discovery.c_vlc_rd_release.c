
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int psz_name; int p_cfg; int p_module; } ;
typedef TYPE_1__ vlc_renderer_discovery_t ;


 int config_ChainDestroy (int ) ;
 int free (int ) ;
 int module_unneed (TYPE_1__*,int ) ;
 int vlc_object_delete (TYPE_1__*) ;

void vlc_rd_release(vlc_renderer_discovery_t *p_rd)
{
    module_unneed(p_rd, p_rd->p_module);
    config_ChainDestroy(p_rd->p_cfg);
    free(p_rd->psz_name);
    vlc_object_delete(p_rd);
}
