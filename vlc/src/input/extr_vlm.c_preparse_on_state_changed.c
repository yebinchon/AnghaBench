
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vlc_player_t ;
struct TYPE_2__ {int p_sem; } ;
typedef TYPE_1__ preparse_data_t ;
typedef enum vlc_player_state { ____Placeholder_vlc_player_state } vlc_player_state ;


 int VLC_PLAYER_STATE_STOPPING ;
 int VLC_UNUSED (int *) ;
 int vlc_sem_post (int ) ;

__attribute__((used)) static void preparse_on_state_changed(vlc_player_t *player,
                                      enum vlc_player_state new_state, void *data)
{
    VLC_UNUSED(player);
    preparse_data_t *p_pre = data;

    if (new_state == VLC_PLAYER_STATE_STOPPING)
        vlc_sem_post(p_pre->p_sem);
}
