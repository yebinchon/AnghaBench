
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_playlist_t ;
typedef int vlc_player_t ;
typedef int lua_State ;
typedef enum vlc_player_state { ____Placeholder_vlc_player_state } vlc_player_state ;







 int lua_pushliteral (int *,char*) ;
 int vlc_player_GetState (int *) ;
 int vlc_player_Lock (int *) ;
 int vlc_player_Unlock (int *) ;
 int * vlc_playlist_GetPlayer (int *) ;
 int * vlclua_get_playlist_internal (int *) ;

__attribute__((used)) static int vlclua_playlist_status(lua_State *L)
{
    vlc_playlist_t *playlist = vlclua_get_playlist_internal(L);

    vlc_player_t *player = vlc_playlist_GetPlayer(playlist);
    vlc_player_Lock(player);
    enum vlc_player_state state = vlc_player_GetState(player);
    vlc_player_Unlock(player);

    switch (state)
    {
        case 129:
            lua_pushliteral(L, "stopped");
            break;
        case 130:
            lua_pushliteral(L, "started");
            break;
        case 131:
            lua_pushliteral(L, "playing");
            break;
        case 132:
            lua_pushliteral(L, "paused");
            break;
        case 128:
            lua_pushliteral(L, "stopping");
            break;
        default:
            lua_pushliteral(L, "unknown");
    }
    return 1;
}
