
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_player_t ;
struct vlc_player_title_list {int dummy; } ;
typedef int lua_State ;


 int lua_pushinteger (int *,size_t) ;
 struct vlc_player_title_list* vlc_player_GetTitleList (int *) ;
 int vlc_player_Lock (int *) ;
 int vlc_player_Unlock (int *) ;
 size_t vlc_player_title_list_GetCount (struct vlc_player_title_list*) ;
 int * vlclua_get_player_internal (int *) ;

__attribute__((used)) static int vlclua_player_get_titles_count(lua_State *L)
{
    vlc_player_t *player = vlclua_get_player_internal(L);

    vlc_player_Lock(player);
    struct vlc_player_title_list *titles = vlc_player_GetTitleList(player);
    size_t count = titles ? vlc_player_title_list_GetCount(titles) : 0;
    vlc_player_Unlock(player);

    lua_pushinteger(L, count);
    return 1;
}
