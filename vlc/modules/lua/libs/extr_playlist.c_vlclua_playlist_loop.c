
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int VLC_PLAYLIST_PLAYBACK_REPEAT_ALL ;
 int vlclua_playlist_repeat_ (int *,int ) ;

__attribute__((used)) static int vlclua_playlist_loop(lua_State *L)
{
    return vlclua_playlist_repeat_(L, VLC_PLAYLIST_PLAYBACK_REPEAT_ALL);
}
