
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
 int vlc_playlist_MoveOne (int *,int,size_t) ;
 int vlc_playlist_Unlock (int *) ;
 int * vlclua_get_playlist_internal (int *) ;
 int vlclua_push_ret (int *,int) ;

__attribute__((used)) static int vlclua_playlist_move(lua_State *L)
{
    uint64_t item_id = luaL_checkinteger(L, 1);
    uint64_t target_id = luaL_checkinteger(L, 2);
    vlc_playlist_t *playlist = vlclua_get_playlist_internal(L);

    int ret;

    vlc_playlist_Lock(playlist);
    ssize_t item_index = vlc_playlist_IndexOfId(playlist, item_id);
    ssize_t target_index = vlc_playlist_IndexOfId(playlist, target_id);
    if (item_index == -1 || target_index == -1)
        ret = -1;
    else
    {


        size_t new_index = item_index <= target_index ? target_index
                                                      : target_index + 1;
        vlc_playlist_MoveOne(playlist, item_index, new_index);
        ret = VLC_SUCCESS;
    }
    vlc_playlist_Unlock(playlist);

    return vlclua_push_ret(L, ret);
}
