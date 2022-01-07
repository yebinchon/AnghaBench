
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_playlist_t ;
typedef int uint64_t ;
typedef int ssize_t ;
typedef int lua_State ;


 int VLC_SUCCESS ;
 int luaL_checkinteger (int *,int) ;
 int vlc_playlist_IndexOfId (int *,int ) ;
 int vlc_playlist_Lock (int *) ;
 int vlc_playlist_RemoveOne (int *,int) ;
 int vlc_playlist_Unlock (int *) ;
 int * vlclua_get_playlist_internal (int *) ;
 int vlclua_push_ret (int *,int) ;

__attribute__((used)) static int vlclua_playlist_delete(lua_State *L)
{
    uint64_t id = luaL_checkinteger(L, 1);
    vlc_playlist_t *playlist = vlclua_get_playlist_internal(L);

    int ret;

    vlc_playlist_Lock(playlist);
    ssize_t index = vlc_playlist_IndexOfId(playlist, id);
    if (index == -1)
        ret = -1;
    else
    {
        vlc_playlist_RemoveOne(playlist, index);
        ret = VLC_SUCCESS;
    }
    vlc_playlist_Unlock(playlist);

    return vlclua_push_ret(L, ret);
}
