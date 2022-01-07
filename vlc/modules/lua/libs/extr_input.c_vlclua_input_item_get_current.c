
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_player_t ;
typedef int lua_State ;
typedef int input_item_t ;


 int lua_pushnil (int *) ;
 int * vlc_player_GetCurrentMedia (int *) ;
 int vlc_player_Lock (int *) ;
 int vlc_player_Unlock (int *) ;
 int * vlclua_get_player_internal (int *) ;
 int vlclua_input_item_get (int *,int *) ;

__attribute__((used)) static int vlclua_input_item_get_current( lua_State *L )
{
    vlc_player_t *player = vlclua_get_player_internal(L);

    vlc_player_Lock(player);
    input_item_t *media = vlc_player_GetCurrentMedia(player);
    if (media)
        vlclua_input_item_get(L, media);
    else
        lua_pushnil(L);
    vlc_player_Unlock(player);

    return 1;
}
