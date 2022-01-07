
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int httpd_host_t ;


 int httpd_HostDelete (int *) ;
 scalar_t__ luaL_checkudata (int *,int,char*) ;

__attribute__((used)) static int vlclua_httpd_host_delete( lua_State *L )
{
    httpd_host_t **pp_host = (httpd_host_t **)luaL_checkudata( L, 1, "httpd_host" );
    httpd_HostDelete( *pp_host );
    return 0;
}
