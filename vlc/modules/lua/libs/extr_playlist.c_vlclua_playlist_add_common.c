
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_playlist_t ;
typedef int vlc_object_t ;
typedef int lua_State ;
typedef int input_item_t ;


 int VLC_SUCCESS ;
 int input_item_Release (int *) ;
 int lua_istable (int *,int) ;
 scalar_t__ lua_next (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_pushinteger (int *,int) ;
 int lua_pushnil (int *) ;
 int msg_Warn (int *,char*) ;
 int vlc_playlist_AppendOne (int *,int *) ;
 int vlc_playlist_Count (int *) ;
 int vlc_playlist_Lock (int *) ;
 int vlc_playlist_PlayAt (int *,size_t) ;
 int vlc_playlist_Unlock (int *) ;
 int * vlclua_get_playlist_internal (int *) ;
 int * vlclua_get_this (int *) ;
 int * vlclua_read_input_item (int *,int *) ;

__attribute__((used)) static int vlclua_playlist_add_common(lua_State *L, bool play)
{
    vlc_object_t *obj = vlclua_get_this(L);
    vlc_playlist_t *playlist = vlclua_get_playlist_internal(L);
    int count = 0;


    if (!lua_istable(L, -1))
    {
        msg_Warn(obj, "Playlist should be a table.");
        return 0;
    }

    lua_pushnil(L);

    vlc_playlist_Lock(playlist);


    while (lua_next(L, -2))
    {
        input_item_t *item = vlclua_read_input_item(obj, L);
        if (item != ((void*)0))
        {
            int ret = vlc_playlist_AppendOne(playlist, item);
            if (ret == VLC_SUCCESS)
            {
                count++;
                if (play)
                {
                    size_t last = vlc_playlist_Count(playlist) - 1;
                    vlc_playlist_PlayAt(playlist, last);
                }
            }
            input_item_Release(item);
        }

        lua_pop(L, 1);
    }


    vlc_playlist_Unlock(playlist);

    lua_pushinteger(L, count);
    return 1;
}
