
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_tick_t ;
typedef int vlc_player_t ;
typedef int lua_State ;


 int VLC_PLAYER_WHENCE_ABSOLUTE ;
 double luaL_checknumber (int *,int) ;
 int vlc_player_Lock (int *) ;
 int vlc_player_SetAudioDelay (int *,int ,int ) ;
 int vlc_player_Unlock (int *) ;
 int vlc_tick_from_sec (double) ;
 int * vlclua_get_player_internal (int *) ;

__attribute__((used)) static int vlclua_player_set_audio_delay(lua_State *L)
{
    vlc_player_t *player = vlclua_get_player_internal(L);

    double delay_sec = luaL_checknumber(L, 1);
    vlc_tick_t delay = vlc_tick_from_sec(delay_sec);

    vlc_player_Lock(player);
    vlc_player_SetAudioDelay(player, delay, VLC_PLAYER_WHENCE_ABSOLUTE);
    vlc_player_Unlock(player);

    return 0;
}
