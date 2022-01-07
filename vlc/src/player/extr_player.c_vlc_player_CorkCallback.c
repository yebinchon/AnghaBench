
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ i_int; } ;
typedef TYPE_1__ vlc_value_t ;
struct TYPE_11__ {int corked; scalar_t__ global_state; scalar_t__ pause_on_cork; } ;
typedef TYPE_2__ vlc_player_t ;
typedef int vlc_object_t ;


 scalar_t__ VLC_PLAYER_STATE_PLAYING ;
 scalar_t__ VLC_PLAYER_STATE_STARTED ;
 int VLC_SUCCESS ;
 int on_cork_changed ;
 int vlc_player_Lock (TYPE_2__*) ;
 int vlc_player_Pause (TYPE_2__*) ;
 int vlc_player_Resume (TYPE_2__*) ;
 int vlc_player_SendEvent (TYPE_2__*,int ,scalar_t__) ;
 int vlc_player_Unlock (TYPE_2__*) ;

__attribute__((used)) static int
vlc_player_CorkCallback(vlc_object_t *this, const char *var,
                        vlc_value_t oldval, vlc_value_t newval, void *data)
{
    vlc_player_t *player = data;

    if (oldval.i_int == newval.i_int )
        return VLC_SUCCESS;

    vlc_player_Lock(player);

    if (player->pause_on_cork)
    {
        if (newval.i_int)
        {
            player->corked = player->global_state == VLC_PLAYER_STATE_PLAYING
                          || player->global_state == VLC_PLAYER_STATE_STARTED;
            if (player->corked)
                vlc_player_Pause(player);
        }
        else
        {
            if (player->corked)
            {
                vlc_player_Resume(player);
                player->corked = 0;
            }
        }
    }
    else
        vlc_player_SendEvent(player, on_cork_changed, newval.i_int);

    vlc_player_Unlock(player);

    return VLC_SUCCESS;
    (void) this; (void) var;
}
