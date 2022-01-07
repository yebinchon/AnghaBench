
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_playlist_t ;
typedef int vlc_player_t ;
struct TYPE_6__ {TYPE_1__* p_sys; } ;
typedef TYPE_2__ intf_thread_t ;
struct TYPE_5__ {int * playlist; } ;


 int ACTIONID_JUMP_BACKWARD_EXTRASHORT ;
 scalar_t__ isless (float,float) ;
 int var_SetInteger (int ,char*,int ) ;
 int vlc_object_instance (TYPE_2__*) ;
 scalar_t__ vlc_player_CanRewind (int *) ;
 int vlc_player_ChangeRate (int *,float) ;
 float vlc_player_GetRate (int *) ;
 int vlc_player_Lock (int *) ;
 int vlc_player_Unlock (int *) ;
 int * vlc_playlist_GetPlayer (int *) ;

__attribute__((used)) static void PlayerRewind(intf_thread_t *intf)
{
    vlc_playlist_t *playlist = intf->p_sys->playlist;
    vlc_player_t *player = vlc_playlist_GetPlayer(playlist);

    vlc_player_Lock(player);
    if (vlc_player_CanRewind(player))
    {
        float rate = vlc_player_GetRate(player);
        vlc_player_ChangeRate(player, isless(rate, 0.f) ? rate * 2.f : -rate);
    }
    else
        var_SetInteger(vlc_object_instance(intf), "key-action",
                       ACTIONID_JUMP_BACKWARD_EXTRASHORT);
    vlc_player_Unlock(player);
}
