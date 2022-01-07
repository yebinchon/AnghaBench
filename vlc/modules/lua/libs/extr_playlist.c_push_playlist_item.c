
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_playlist_item_t ;
typedef int lua_State ;
struct TYPE_5__ {char* psz_uri; scalar_t__ i_duration; } ;
typedef TYPE_1__ input_item_t ;


 int free (char*) ;
 char* input_item_GetTitleFbName (TYPE_1__*) ;
 int lua_newtable (int *) ;
 int lua_pushinteger (int *,int ) ;
 int lua_pushnumber (int *,int) ;
 int lua_pushstring (int *,char*) ;
 int lua_setfield (int *,int,char*) ;
 int luaopen_input_item (int *,TYPE_1__*) ;
 int secf_from_vlc_tick (scalar_t__) ;
 int vlc_playlist_item_GetId (int *) ;
 TYPE_1__* vlc_playlist_item_GetMedia (int *) ;

__attribute__((used)) static void push_playlist_item(lua_State *L, vlc_playlist_item_t *item)
{
    lua_newtable(L);

    lua_pushinteger(L, vlc_playlist_item_GetId(item));
    lua_setfield(L, -2, "id");

    input_item_t *media = vlc_playlist_item_GetMedia(item);



    char *name = input_item_GetTitleFbName(media);
    lua_pushstring(L, name);
    free(name);
    lua_setfield(L, -2, "name");

    lua_pushstring(L, media->psz_uri);
    lua_setfield(L, -2, "path");

    if( media->i_duration < 0 )
        lua_pushnumber(L, -1);
    else
        lua_pushnumber(L, secf_from_vlc_tick(media->i_duration));
    lua_setfield(L, -2, "duration");

    luaopen_input_item(L, media);
}
