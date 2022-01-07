
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlm_t ;
struct TYPE_4__ {int id; } ;
struct TYPE_5__ {TYPE_1__ cfg; } ;
typedef TYPE_2__ vlm_media_sys_t ;
typedef int int64_t ;


 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 TYPE_2__* vlm_ControlMediaGetByName (int *,char const*) ;

__attribute__((used)) static int vlm_ControlMediaGetId( vlm_t *p_vlm, const char *psz_name, int64_t *p_id )
{
    vlm_media_sys_t *p_media = vlm_ControlMediaGetByName( p_vlm, psz_name );
    if( !p_media )
        return VLC_EGENERIC;

    *p_id = p_media->cfg.id;
    return VLC_SUCCESS;
}
