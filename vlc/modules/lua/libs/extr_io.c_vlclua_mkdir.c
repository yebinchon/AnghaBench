
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int errno ;
 char* luaL_checkstring (int *,int) ;
 int lua_gettop (int *) ;
 int lua_pushinteger (int *,int) ;
 int strtoul (char const*,int *,int ) ;
 int vlc_mkdir (char const*,int ) ;
 int vlclua_error (int *) ;

__attribute__((used)) static int vlclua_mkdir( lua_State *L )
{
    if( lua_gettop( L ) < 2 ) return vlclua_error( L );

    const char* psz_dir = luaL_checkstring( L, 1 );
    const char* psz_mode = luaL_checkstring( L, 2 );
    if ( !psz_dir || !psz_mode )
        return vlclua_error( L );
    int i_res = vlc_mkdir( psz_dir, strtoul( psz_mode, ((void*)0), 0 ) );
    int i_err = i_res != 0 ? errno : 0;
    lua_pushinteger( L, i_res );
    lua_pushinteger( L, i_err );
    return 2;
}
