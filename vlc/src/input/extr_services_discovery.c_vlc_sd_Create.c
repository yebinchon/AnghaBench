
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int vlc_object_t ;
struct services_discovery_owner_t {int dummy; } ;
struct TYPE_7__ {int * p_module; int psz_name; struct services_discovery_owner_t owner; int * description; int p_cfg; } ;
typedef TYPE_1__ services_discovery_t ;


 int config_ChainCreate (int *,int *,char const*) ;
 int free (int ) ;
 int * module_need (TYPE_1__*,char*,int ,int) ;
 int msg_Err (TYPE_1__*,char*) ;
 scalar_t__ unlikely (int ) ;
 TYPE_1__* vlc_custom_create (int *,int,char*) ;
 int vlc_sd_Destroy (TYPE_1__*) ;

services_discovery_t *vlc_sd_Create(vlc_object_t *parent, const char *cfg,
    const struct services_discovery_owner_t *restrict owner)
{
    services_discovery_t *sd = vlc_custom_create(parent, sizeof (*sd),
                                                 "services discovery");
    if (unlikely(sd == ((void*)0)))
        return ((void*)0);

    free(config_ChainCreate(&sd->psz_name, &sd->p_cfg, cfg));
    sd->description = ((void*)0);
    sd->owner = *owner;

    sd->p_module = module_need(sd, "services_discovery",
                               sd->psz_name, 1);
    if (sd->p_module == ((void*)0))
    {
        msg_Err(sd, "no suitable services discovery module");
        vlc_sd_Destroy(sd);
        sd = ((void*)0);
    }

    return sd;
}
