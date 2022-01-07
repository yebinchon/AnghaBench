
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int httpd_redirect_t ;
typedef int httpd_host_t ;


 int * httpd_RedirectNew (int *,char const*,char const*) ;
 char* luaL_checkstring (int *,int) ;
 scalar_t__ luaL_checkudata (int *,int,char*) ;
 int luaL_error (int *,char*) ;
 scalar_t__ luaL_newmetatable (int *,char*) ;
 int ** lua_newuserdata (int *,int) ;
 int lua_pushcfunction (int *,int ) ;
 int lua_setfield (int *,int,char*) ;
 int lua_setmetatable (int *,int) ;
 int vlclua_httpd_redirect_delete ;

__attribute__((used)) static int vlclua_httpd_redirect_new( lua_State *L )
{
    httpd_host_t **pp_host = (httpd_host_t **)luaL_checkudata( L, 1, "httpd_host" );
    const char *psz_url_dst = luaL_checkstring( L, 2 );
    const char *psz_url_src = luaL_checkstring( L, 3 );
    httpd_redirect_t *p_redirect = httpd_RedirectNew( *pp_host,
                                                      psz_url_dst,
                                                      psz_url_src );
    if( !p_redirect )
        return luaL_error( L, "Failed to create HTTPd redirect." );

    httpd_redirect_t **pp_redirect = lua_newuserdata( L, sizeof( httpd_redirect_t * ) );
    *pp_redirect = p_redirect;

    if( luaL_newmetatable( L, "httpd_redirect" ) )
    {
        lua_pushcfunction( L, vlclua_httpd_redirect_delete );
        lua_setfield( L, -2, "__gc" );
    }

    lua_setmetatable( L, -2 );
    return 1;
}
