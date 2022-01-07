
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_player_t ;


 scalar_t__ VLC_PLAYER_STATE_PLAYING ;
 scalar_t__ vlc_player_GetState (int *) ;
 int vlc_player_JumpPos (int *,float) ;
 int vlc_player_Lock (int *) ;
 int vlc_player_Unlock (int *) ;

__attribute__((used)) static void ChangePosition(vlc_player_t *player, float increment)
{
    vlc_player_Lock(player);
    if (vlc_player_GetState(player) == VLC_PLAYER_STATE_PLAYING)
        vlc_player_JumpPos(player, increment);
    vlc_player_Unlock(player);
}
