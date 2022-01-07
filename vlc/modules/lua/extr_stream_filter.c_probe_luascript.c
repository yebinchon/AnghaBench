
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int vlc_object_t ;
struct vlclua_playlist {int * L; int filename; int * access; int * path; } ;
struct TYPE_6__ {struct vlclua_playlist* p_sys; } ;
typedef TYPE_1__ stream_t ;
typedef int luabatch_context_t ;
typedef int lua_State ;


 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_OBJECT (TYPE_1__*) ;
 int VLC_SUCCESS ;
 int * luaL_newstate () ;
 int luaL_openlibs (int *) ;
 int luaL_register_namespace (int *,char*,int ) ;
 int lua_close (int *) ;
 int lua_getglobal (int *,char*) ;
 scalar_t__ lua_gettop (int *) ;
 int lua_isfunction (int *,int) ;
 scalar_t__ lua_pcall (int *,int ,int,int ) ;
 int lua_pop (int *,int) ;
 int lua_pushnil (int *) ;
 int lua_pushstring (int *,int *) ;
 int lua_setfield (int *,int,char*) ;
 scalar_t__ lua_toboolean (int *,int) ;
 char* lua_tostring (int *,scalar_t__) ;
 int luaopen_msg (int *) ;
 int luaopen_stream (int *) ;
 int luaopen_strings (int *) ;
 int luaopen_variables (int *) ;
 int luaopen_xml (int *) ;
 int msg_Dbg (TYPE_1__*,char*,char const*) ;
 int msg_Warn (TYPE_1__*,char*,char const*,...) ;
 int p_reg ;
 int strdup (char const*) ;
 scalar_t__ vlclua_add_modules_path (int *,char const*) ;
 scalar_t__ vlclua_dofile (int ,int *,char const*) ;
 int vlclua_set_this (int *,TYPE_1__*) ;

__attribute__((used)) static int probe_luascript(vlc_object_t *obj, const char *filename,
                           const luabatch_context_t *ctx)
{
    stream_t *s = (stream_t *)obj;
    struct vlclua_playlist *sys = s->p_sys;


    lua_State *L = luaL_newstate();
    if( !L )
        return VLC_ENOMEM;

    sys->L = L;


    luaL_openlibs( L );

    vlclua_set_this(L, s);
    luaL_register_namespace( L, "vlc", p_reg );
    luaopen_msg( L );
    luaopen_strings( L );
    luaopen_stream( L );
    luaopen_variables( L );
    luaopen_xml( L );

    if (sys->path != ((void*)0))
        lua_pushstring(L, sys->path);
    else
        lua_pushnil(L);
    lua_setfield( L, -2, "path" );

    if (sys->access != ((void*)0))
        lua_pushstring(L, sys->access);
    else
        lua_pushnil(L);
    lua_setfield( L, -2, "access" );

    lua_pop( L, 1 );


    if (vlclua_add_modules_path(L, filename))
    {
        msg_Warn(s, "error setting the module search path for %s", filename);
        goto error;
    }


    if (vlclua_dofile(VLC_OBJECT(s), L, filename))
    {
        msg_Warn(s, "error loading script %s: %s", filename,
                 lua_tostring(L, lua_gettop(L)));
        goto error;
    }

    lua_getglobal( L, "probe" );
    if( !lua_isfunction( L, -1 ) )
    {
        msg_Warn(s, "error running script %s: function %s(): %s",
                 filename, "probe", "not found");
        goto error;
    }

    if( lua_pcall( L, 0, 1, 0 ) )
    {
        msg_Warn(s, "error running script %s: function %s(): %s",
                 filename, "probe", lua_tostring(L, lua_gettop(L)));
        goto error;
    }

    if( lua_gettop( L ) )
    {
        if( lua_toboolean( L, 1 ) )
        {
            msg_Dbg(s, "Lua playlist script %s's "
                    "probe() function was successful", filename );
            lua_pop( L, 1 );
            sys->filename = strdup(filename);
            return VLC_SUCCESS;
        }
    }

    (void) ctx;
error:
    lua_pop( L, 1 );
    lua_close(sys->L);
    return VLC_EGENERIC;
}
