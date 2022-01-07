
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int VIDEO_ES ;
 int vlclua_player_get_tracks_ (int *,int ) ;

__attribute__((used)) static int vlclua_player_get_video_tracks(lua_State *L)
{
    return vlclua_player_get_tracks_(L, VIDEO_ES);
}
