
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_player_t ;
typedef int lua_State ;


 int SPU_ES ;
 int free (char*) ;
 char* luaL_checkstring (int *,int) ;
 int luaL_error (int *,char*) ;
 int lua_gettop (int *) ;
 int lua_isstring (int *,int) ;
 int lua_toboolean (int *,int) ;
 char* vlc_path2uri (char const*,int *) ;
 int vlc_player_AddAssociatedMedia (int *,int ,char const*,int,int,int) ;
 int * vlclua_get_player_internal (int *) ;

__attribute__((used)) static int vlclua_input_add_subtitle(lua_State *L, bool b_path)
{
    vlc_player_t *player = vlclua_get_player_internal(L);

    if (!lua_isstring(L, 1))
        return luaL_error( L, "vlc.player.add_subtitle() usage: (path, autoselect=false)" );

    bool autoselect = 0;
    if (lua_gettop(L) >= 2)
        autoselect = lua_toboolean(L, 2);

    const char *sub = luaL_checkstring(L, 1);
    char *mrl;
    if (b_path)
        mrl = vlc_path2uri(sub, ((void*)0));

    const char *uri = b_path ? mrl : sub;
    vlc_player_AddAssociatedMedia(player, SPU_ES, uri, autoselect, 1, 0);
    if (b_path)
        free(mrl);

    return 1;
}
