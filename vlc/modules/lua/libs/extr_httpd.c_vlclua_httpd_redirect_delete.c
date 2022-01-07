
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int httpd_redirect_t ;


 int httpd_RedirectDelete (int *) ;
 scalar_t__ luaL_checkudata (int *,int,char*) ;

__attribute__((used)) static int vlclua_httpd_redirect_delete( lua_State *L )
{
    httpd_redirect_t **pp_redirect = (httpd_redirect_t**)luaL_checkudata( L, 1, "httpd_redirect" );
    httpd_RedirectDelete( *pp_redirect );
    return 0;
}
