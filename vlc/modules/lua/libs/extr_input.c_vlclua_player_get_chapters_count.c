
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_player_t ;
struct vlc_player_title {size_t chapter_count; } ;
typedef int lua_State ;


 int lua_pushinteger (int *,size_t) ;
 struct vlc_player_title* vlc_player_GetSelectedTitle (int *) ;
 int vlc_player_Lock (int *) ;
 int vlc_player_Unlock (int *) ;
 int * vlclua_get_player_internal (int *) ;

__attribute__((used)) static int vlclua_player_get_chapters_count(lua_State *L)
{
    vlc_player_t *player = vlclua_get_player_internal(L);

    vlc_player_Lock(player);
    const struct vlc_player_title *current_title =
        vlc_player_GetSelectedTitle(player);

    size_t count = current_title ? current_title->chapter_count : 0;
    vlc_player_Unlock(player);

    lua_pushinteger(L, count);
    return 1;
}
