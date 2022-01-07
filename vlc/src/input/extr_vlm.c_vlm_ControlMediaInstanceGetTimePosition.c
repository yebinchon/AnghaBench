
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlm_t ;
typedef int vlm_media_sys_t ;
struct TYPE_3__ {int player; } ;
typedef TYPE_1__ vlm_media_instance_sys_t ;
typedef int int64_t ;


 int US_FROM_VLC_TICK (int ) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 double vlc_player_GetPosition (int ) ;
 int vlc_player_GetTime (int ) ;
 int vlc_player_Lock (int ) ;
 int vlc_player_Unlock (int ) ;
 int * vlm_ControlMediaGetById (int *,int ) ;
 TYPE_1__* vlm_ControlMediaInstanceGetByName (int *,char const*) ;

__attribute__((used)) static int vlm_ControlMediaInstanceGetTimePosition( vlm_t *p_vlm, int64_t id, const char *psz_id, int64_t *pi_time, double *pd_position )
{
    vlm_media_sys_t *p_media = vlm_ControlMediaGetById( p_vlm, id );
    vlm_media_instance_sys_t *p_instance;

    if( !p_media )
        return VLC_EGENERIC;

    p_instance = vlm_ControlMediaInstanceGetByName( p_media, psz_id );
    if( !p_instance )
        return VLC_EGENERIC;

    vlc_player_Lock(p_instance->player);
    if( pi_time )
        *pi_time = US_FROM_VLC_TICK(vlc_player_GetTime(p_instance->player));
    if( pd_position )
        *pd_position = vlc_player_GetPosition(p_instance->player);
    vlc_player_Unlock(p_instance->player);
    return VLC_SUCCESS;
}
