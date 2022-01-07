
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_player_t ;
typedef int lua_State ;
typedef enum vlc_player_whence { ____Placeholder_vlc_player_whence } vlc_player_whence ;


 int VLC_PLAYER_SEEK_PRECISE ;
 float luaL_checknumber (int *,int) ;
 int vlc_player_Lock (int *) ;
 int vlc_player_SeekByPos (int *,float,int ,int) ;
 int vlc_player_Unlock (int *) ;
 int * vlclua_get_player_internal (int *) ;

__attribute__((used)) static int vlclua_player_seek_by_pos_(lua_State *L,
                                      enum vlc_player_whence whence)
{
    float position = luaL_checknumber(L, 1);

    vlc_player_t *player = vlclua_get_player_internal(L);

    vlc_player_Lock(player);
    vlc_player_SeekByPos(player, position, VLC_PLAYER_SEEK_PRECISE, whence);
    vlc_player_Unlock(player);

    return 0;
}
