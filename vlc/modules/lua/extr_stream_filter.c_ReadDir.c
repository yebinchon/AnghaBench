
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct vlclua_playlist {int filename; int * L; } ;
struct TYPE_6__ {int * psz_url; struct vlclua_playlist* p_sys; } ;
typedef TYPE_1__ stream_t ;
typedef int lua_State ;
typedef int input_item_t ;
typedef int input_item_node_t ;


 int VLC_ENOITEM ;
 int VLC_OBJECT (TYPE_1__*) ;
 int VLC_SUCCESS ;
 int free (char*) ;
 char* input_item_GetURL (int *) ;
 int input_item_Release (int *) ;
 int input_item_SetURL (int *,int *) ;
 int input_item_node_AppendItem (int *,int *) ;
 int luaL_register_namespace (int *,char*,int ) ;
 int lua_getglobal (int *,char*) ;
 int lua_gettop (int *) ;
 int lua_isfunction (int *,int) ;
 int lua_istable (int *,int) ;
 scalar_t__ lua_next (int *,int) ;
 scalar_t__ lua_pcall (int *,int ,int,int ) ;
 int lua_pop (int *,int) ;
 int lua_pushnil (int *) ;
 int lua_tostring (int *,int ) ;
 int msg_Err (TYPE_1__*,char*) ;
 int msg_Warn (TYPE_1__*,char*,...) ;
 int p_reg_parse ;
 int * vlclua_read_input_item (int ,int *) ;

__attribute__((used)) static int ReadDir(stream_t *s, input_item_node_t *node)
{
    struct vlclua_playlist *sys = s->p_sys;
    lua_State *L = sys->L;

    luaL_register_namespace( L, "vlc", p_reg_parse );

    lua_getglobal( L, "parse" );

    if( !lua_isfunction( L, -1 ) )
    {
        msg_Warn(s, "error running script %s: function %s(): %s",
                 sys->filename, "parse", "not found");
        return VLC_ENOITEM;
    }

    if( lua_pcall( L, 0, 1, 0 ) )
    {
        msg_Warn(s, "error running script %s: function %s(): %s",
                 sys->filename, "parse", lua_tostring(L, lua_gettop(L)));
        return VLC_ENOITEM;
    }

    if (!lua_gettop(L))
    {
        msg_Err(s, "script went completely foobar");
        return VLC_ENOITEM;
    }

    if (!lua_istable(L, -1))
    {
        msg_Warn(s, "Playlist should be a table.");
        return VLC_ENOITEM;
    }

    lua_pushnil(L);


    while (lua_next(L, -2))
    {
        input_item_t *item = vlclua_read_input_item(VLC_OBJECT(s), L);
        if (item != ((void*)0))
        {


            char *url = input_item_GetURL(item);
            if (url == ((void*)0) && s->psz_url != ((void*)0))
                input_item_SetURL(item, s->psz_url);
            free(url);

            input_item_node_AppendItem(node, item);
            input_item_Release(item);
        }

        lua_pop(L, 1);
    }


    return VLC_SUCCESS;
}
