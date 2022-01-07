
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int p_f ;
typedef int lua_State ;
typedef int FILE ;


 char* luaL_checkstring (int *,int) ;
 int luaL_error (int *,char*) ;
 scalar_t__ luaL_newmetatable (int *,char*) ;
 char* luaL_optstring (int *,int,char*) ;
 int luaL_register (int *,int *,int ) ;
 int lua_gettop (int *) ;
 int lua_newtable (int *) ;
 int ** lua_newuserdata (int *,int) ;
 int lua_pushcfunction (int *,int ) ;
 int lua_setfield (int *,int,char*) ;
 int lua_setmetatable (int *,int) ;
 int * vlc_fopen (char const*,char const*) ;
 int vlclua_io_file_close ;
 int vlclua_io_file_reg ;

__attribute__((used)) static int vlclua_io_open( lua_State *L )
{
    if( lua_gettop( L ) < 1 )
        return luaL_error( L, "Usage: vlc.io.open(file_path [, mode])" );
    const char* psz_path = luaL_checkstring( L, 1 );
    const char* psz_mode = luaL_optstring( L, 2, "r" );
    FILE *p_f = vlc_fopen( psz_path, psz_mode );
    if ( p_f == ((void*)0) )
        return 0;

    FILE** pp_f = lua_newuserdata( L, sizeof( p_f ) );
    *pp_f = p_f;

    if( luaL_newmetatable( L, "io_file" ) )
    {
        lua_newtable( L );
        luaL_register( L, ((void*)0), vlclua_io_file_reg );
        lua_setfield( L, -2, "__index" );
        lua_pushcfunction( L, vlclua_io_file_close );
        lua_setfield( L, -2, "__gc" );
    }
    lua_setmetatable( L, -2 );
    return 1;
}
