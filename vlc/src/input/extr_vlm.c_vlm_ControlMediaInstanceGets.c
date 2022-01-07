
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int vlm_t ;
struct TYPE_10__ {int i_instance; TYPE_3__** instance; } ;
typedef TYPE_1__ vlm_media_sys_t ;
struct TYPE_11__ {int f_rate; int b_paused; int d_position; void* i_length; void* i_time; int psz_name; } ;
typedef TYPE_2__ vlm_media_instance_t ;
struct TYPE_12__ {int player; scalar_t__ psz_name; } ;
typedef TYPE_3__ vlm_media_instance_sys_t ;
typedef int int64_t ;


 int TAB_APPEND (int,TYPE_2__**,TYPE_2__*) ;
 int TAB_INIT (int,TYPE_2__**) ;
 void* US_FROM_VLC_TICK (int ) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int strdup (scalar_t__) ;
 int vlc_player_GetLength (int ) ;
 int vlc_player_GetPosition (int ) ;
 int vlc_player_GetRate (int ) ;
 int vlc_player_GetTime (int ) ;
 int vlc_player_IsPaused (int ) ;
 int vlc_player_Lock (int ) ;
 int vlc_player_Unlock (int ) ;
 TYPE_1__* vlm_ControlMediaGetById (int *,int ) ;
 TYPE_2__* vlm_media_instance_New () ;

__attribute__((used)) static int vlm_ControlMediaInstanceGets( vlm_t *p_vlm, int64_t id, vlm_media_instance_t ***ppp_idsc, int *pi_instance )
{
    vlm_media_sys_t *p_media = vlm_ControlMediaGetById( p_vlm, id );
    vlm_media_instance_t **pp_idsc;
    int i_idsc;

    if( !p_media )
        return VLC_EGENERIC;

    TAB_INIT( i_idsc, pp_idsc );
    for( int i = 0; i < p_media->i_instance; i++ )
    {
        vlm_media_instance_sys_t *p_instance = p_media->instance[i];
        vlm_media_instance_t *p_idsc = vlm_media_instance_New();
        if( p_instance->psz_name )
            p_idsc->psz_name = strdup( p_instance->psz_name );
        vlc_player_Lock(p_instance->player);
        p_idsc->i_time = US_FROM_VLC_TICK(vlc_player_GetTime(p_instance->player));
        p_idsc->i_length = US_FROM_VLC_TICK(vlc_player_GetLength(p_instance->player));
        p_idsc->d_position = vlc_player_GetPosition(p_instance->player);
        p_idsc->b_paused = vlc_player_IsPaused(p_instance->player);
        p_idsc->f_rate = vlc_player_GetRate(p_instance->player);
        vlc_player_Unlock(p_instance->player);

        TAB_APPEND( i_idsc, pp_idsc, p_idsc );
    }
    *ppp_idsc = pp_idsc;
    *pi_instance = i_idsc;
    return VLC_SUCCESS;
}
