
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int free (char*) ;
 char* luaL_checkstring (int *,int) ;
 char* luaL_optstring (int *,int,int *) ;
 int lua_pushstring (int *,char const*) ;
 int * strstr (char const*,char*) ;
 char* vlc_path2uri (char const*,char const*) ;

__attribute__((used)) static int vlclua_make_uri( lua_State *L )
{
    const char *psz_input = luaL_checkstring( L, 1 );
    const char *psz_scheme = luaL_optstring( L, 2, ((void*)0) );
    if( strstr( psz_input, "://" ) == ((void*)0) )
    {
        char *psz_uri = vlc_path2uri( psz_input, psz_scheme );
        lua_pushstring( L, psz_uri );
        free( psz_uri );
    }
    else
        lua_pushstring( L, psz_input );
    return 1;
}
