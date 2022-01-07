
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int i_media; TYPE_3__** media; } ;
typedef TYPE_2__ vlm_t ;
struct TYPE_6__ {int psz_name; } ;
struct TYPE_8__ {TYPE_1__ cfg; } ;
typedef TYPE_3__ vlm_media_sys_t ;


 int strcmp (int ,char const*) ;

__attribute__((used)) static vlm_media_sys_t *vlm_ControlMediaGetByName( vlm_t *p_vlm, const char *psz_name )
{
    for( int i = 0; i < p_vlm->i_media; i++ )
    {
        if( !strcmp( p_vlm->media[i]->cfg.psz_name, psz_name ) )
            return p_vlm->media[i];
    }
    return ((void*)0);
}
