
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_probe_t ;
typedef int vlc_object_t ;
typedef int lua_State ;


 int SD_CAT_INTERNET ;
 int VLC_ENOMEM ;
 int VLC_PROBE_CONTINUE ;
 int asprintf (char**,char*,char*) ;
 char* config_StringEscape (char const*) ;
 int free (char*) ;
 int * luaL_newstate () ;
 int luaL_openlibs (int *) ;
 int lua_close (int *) ;
 int lua_tostring (int *,int) ;
 int msg_Err (int *,char*,...) ;
 int vlc_sd_probe_Add (int *,char*,char const*,int ) ;
 scalar_t__ vlclua_add_modules_path (int *,char*) ;
 scalar_t__ vlclua_dofile (int *,int *,char*) ;
 char* vlclua_find_file (char*,char const*) ;
 char* vlclua_sd_description (int *,int *,char*) ;

int vlclua_probe_sd( vlc_object_t *obj, const char *name )
{
    vlc_probe_t *probe = (vlc_probe_t *)obj;

    char *filename = vlclua_find_file( "sd", name );
    if( filename == ((void*)0) )
    {

        msg_Err( probe, "Couldn't probe lua services discovery script \"%s\".",
                 name );
        return VLC_PROBE_CONTINUE;
    }

    lua_State *L = luaL_newstate();
    if( !L )
    {
        msg_Err( probe, "Could not create new Lua State" );
        free( filename );
        return VLC_ENOMEM;
    }
    luaL_openlibs( L );
    if( vlclua_add_modules_path( L, filename ) )
    {
        msg_Err( probe, "Error while setting the module search path for %s",
                 filename );
        lua_close( L );
        free( filename );
        return VLC_ENOMEM;
    }
    if( vlclua_dofile( obj, L, filename ) )
    {
        msg_Err( probe, "Error loading script %s: %s", filename,
                 lua_tostring( L, -1 ) );
        lua_close( L );
        free( filename );
        return VLC_PROBE_CONTINUE;
    }
    const char *description = vlclua_sd_description( obj, L, filename );
    if( description == ((void*)0) )
        description = name;

    int r = VLC_ENOMEM;
    char *name_esc = config_StringEscape( name );
    char *chain;
    if( asprintf( &chain, "lua{sd='%s'}", name_esc ) != -1 )
    {
        r = vlc_sd_probe_Add( probe, chain, description, SD_CAT_INTERNET );
        free( chain );
    }
    free( name_esc );

    lua_close( L );
    free( filename );
    return r;
}
