
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_player_t ;
struct vlc_player_track {int selected; int name; int es_id; } ;
typedef int lua_State ;
typedef enum es_format_category_e { ____Placeholder_es_format_category_e } es_format_category_e ;


 int lua_createtable (int *,size_t,int ) ;
 int lua_newtable (int *) ;
 int lua_pushboolean (int *,int ) ;
 int lua_pushinteger (int *,int ) ;
 int lua_pushstring (int *,int ) ;
 int lua_rawseti (int *,int,size_t) ;
 int lua_setfield (int *,int,char*) ;
 int vlc_es_id_GetInputId (int ) ;
 struct vlc_player_track* vlc_player_GetTrackAt (int *,int,size_t) ;
 size_t vlc_player_GetTrackCount (int *,int) ;
 int vlc_player_Lock (int *) ;
 int vlc_player_Unlock (int *) ;
 int * vlclua_get_player_internal (int *) ;

__attribute__((used)) static int vlclua_player_get_tracks_(lua_State *L,
                                     enum es_format_category_e cat)
{
    vlc_player_t *player = vlclua_get_player_internal(L);

    vlc_player_Lock(player);

    size_t count = vlc_player_GetTrackCount(player, cat);
    lua_createtable(L, count, 0);

    for (size_t i = 0; i < count; ++i)
    {
        const struct vlc_player_track *track =
                vlc_player_GetTrackAt(player, cat, i);
        if (!track) {
            continue;
        }

        lua_newtable(L);

        lua_pushinteger(L, vlc_es_id_GetInputId(track->es_id));
        lua_setfield(L, -2, "id");

        lua_pushstring(L, track->name);
        lua_setfield(L, -2, "name");

        lua_pushboolean(L, track->selected);
        lua_setfield(L, -2, "selected");

        lua_rawseti(L, -2, i + 1);
    }

    vlc_player_Unlock(player);

    return 1;
}
