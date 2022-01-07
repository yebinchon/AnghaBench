
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct vlc_renderer_discovery_owner {int dummy; } ;
struct TYPE_7__ {int p_cfg; int psz_name; int * p_module; struct vlc_renderer_discovery_owner owner; } ;
typedef TYPE_1__ vlc_renderer_discovery_t ;
typedef int vlc_object_t ;


 int config_ChainCreate (int *,int *,char const*) ;
 int config_ChainDestroy (int ) ;
 int free (int ) ;
 int * module_need (TYPE_1__*,char*,int ,int) ;
 int msg_Err (TYPE_1__*,char*,char const*) ;
 TYPE_1__* vlc_custom_create (int *,int,char*) ;
 int vlc_object_delete (TYPE_1__*) ;

vlc_renderer_discovery_t *
vlc_rd_new(vlc_object_t *p_obj, const char *psz_name,
           const struct vlc_renderer_discovery_owner *restrict owner)
{
    vlc_renderer_discovery_t *p_rd;

    p_rd = vlc_custom_create(p_obj, sizeof(*p_rd), "renderer discovery");
    if(!p_rd)
        return ((void*)0);
    free(config_ChainCreate(&p_rd->psz_name, &p_rd->p_cfg, psz_name));

    p_rd->owner = *owner;
    p_rd->p_module = module_need(p_rd, "renderer_discovery",
                                 p_rd->psz_name, 1);
    if (p_rd->p_module == ((void*)0))
    {
        msg_Err(p_rd, "no suitable renderer discovery module for '%s'",
            psz_name);
        free(p_rd->psz_name);
        config_ChainDestroy(p_rd->p_cfg);
        vlc_object_delete(p_rd);
        p_rd = ((void*)0);
    }

    return p_rd;
}
