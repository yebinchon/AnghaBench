
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef int lua_State ;


 int lua_getfield (int *,int,char*) ;
 int lua_getglobal (int *,char*) ;
 int lua_isfunction (int *,int) ;
 int lua_isstring (int *,int) ;
 scalar_t__ lua_pcall (int *,int ,int,int ) ;
 int lua_pop (int *,int) ;
 char const* lua_tostring (int *,int) ;
 int msg_Warn (int *,char*,char const*,...) ;

__attribute__((used)) static const char *vlclua_sd_description( vlc_object_t *obj, lua_State *L,
                                          const char *filename )
{
    lua_getglobal( L, "descriptor" );
    if( !lua_isfunction( L, -1 ) )
    {
        msg_Warn( obj, "No 'descriptor' function in '%s'", filename );
        lua_pop( L, 1 );
        return ((void*)0);
    }

    if( lua_pcall( L, 0, 1, 0 ) )
    {
        msg_Warn( obj, "Error while running script %s, "
                  "function descriptor(): %s", filename,
                  lua_tostring( L, -1 ) );
        lua_pop( L, 1 );
        return ((void*)0);
    }

    lua_getfield( L, -1, "title" );
    if ( !lua_isstring( L, -1 ) )
    {
        msg_Warn( obj, "'descriptor' function in '%s' returned no title",
                  filename );
        lua_pop( L, 2 );
        return ((void*)0);
    }

    return lua_tostring( L, -1 );
}
