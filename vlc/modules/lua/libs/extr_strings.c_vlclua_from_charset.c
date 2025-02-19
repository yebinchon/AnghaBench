
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 char* FromCharset (char const*,char const*,size_t) ;
 int free (char*) ;
 char* luaL_checklstring (int *,int,size_t*) ;
 char* luaL_checkstring (int *,int) ;
 int lua_gettop (int *) ;
 int lua_pushstring (int *,char*) ;
 int vlclua_error (int *) ;

__attribute__((used)) static int vlclua_from_charset( lua_State *L )
{
    if( lua_gettop( L ) < 2 ) return vlclua_error( L );

    size_t i_in_bytes;
    const char *psz_input = luaL_checklstring( L, 2, &i_in_bytes );
    if( i_in_bytes == 0 ) return vlclua_error( L );

    const char *psz_charset = luaL_checkstring( L, 1 );
    char *psz_output = FromCharset( psz_charset, psz_input, i_in_bytes );
    lua_pushstring( L, psz_output ? psz_output : "" );
    free( psz_output );
    return 1;
}
