
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int psz_name; int p_cfg; int * p_module; } ;
typedef TYPE_1__ services_discovery_t ;


 int config_ChainDestroy (int ) ;
 int free (int ) ;
 int module_unneed (TYPE_1__*,int *) ;
 int vlc_object_delete (TYPE_1__*) ;

void vlc_sd_Destroy(services_discovery_t *sd)
{
    if (sd->p_module != ((void*)0))
        module_unneed(sd, sd->p_module);
    config_ChainDestroy(sd->p_cfg);
    free(sd->psz_name);
    vlc_object_delete(sd);
}
