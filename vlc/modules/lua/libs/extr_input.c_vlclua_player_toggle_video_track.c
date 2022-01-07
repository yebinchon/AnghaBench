
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int VIDEO_ES ;
 int luaL_checkinteger (int *,int) ;
 int vlclua_player_toggle_track_ (int *,int ,int) ;

__attribute__((used)) static int vlclua_player_toggle_video_track(lua_State *L)
{
    int id = luaL_checkinteger(L, 1);
    return vlclua_player_toggle_track_(L, VIDEO_ES, id);
}
