
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int errno ;
 char* luaL_checkstring (int *,int) ;
 int luaL_error (int *,char*) ;
 int lua_gettop (int *) ;
 int lua_pushinteger (int *,int) ;
 int vlc_unlink (char const*) ;

__attribute__((used)) static int vlclua_io_unlink( lua_State *L )
{
    if( lua_gettop( L ) < 1 )
        return luaL_error( L, "Usage: vlc.io.unlink(path)" );
    const char* psz_path = luaL_checkstring( L, 1 );
    int i_res = vlc_unlink( psz_path );
    int i_err = i_res != 0 ? errno : 0;
    lua_pushinteger( L, i_res );
    lua_pushinteger( L, i_err );
    return 2;
}
