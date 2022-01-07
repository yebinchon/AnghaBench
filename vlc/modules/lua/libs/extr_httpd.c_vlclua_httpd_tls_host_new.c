
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef int lua_State ;
typedef int httpd_host_t ;


 int luaL_error (int *,char*) ;
 scalar_t__ luaL_newmetatable (int *,char*) ;
 int luaL_register (int *,int *,int ) ;
 int lua_newtable (int *) ;
 int ** lua_newuserdata (int *,int) ;
 int lua_pushcfunction (int *,int ) ;
 int lua_setfield (int *,int,char*) ;
 int lua_setmetatable (int *,int) ;
 int * vlc_http_HostNew (int *) ;
 int * vlclua_get_this (int *) ;
 int vlclua_httpd_host_delete ;
 int vlclua_httpd_reg ;

__attribute__((used)) static int vlclua_httpd_tls_host_new( lua_State *L )
{
    vlc_object_t *p_this = vlclua_get_this( L );
    httpd_host_t *p_host = vlc_http_HostNew( p_this );
    if( !p_host )
        return luaL_error( L, "Failed to create HTTP host" );

    httpd_host_t **pp_host = lua_newuserdata( L, sizeof( httpd_host_t * ) );
    *pp_host = p_host;

    if( luaL_newmetatable( L, "httpd_host" ) )
    {
        lua_newtable( L );
        luaL_register( L, ((void*)0), vlclua_httpd_reg );
        lua_setfield( L, -2, "__index" );
        lua_pushcfunction( L, vlclua_httpd_host_delete );
        lua_setfield( L, -2, "__gc" );
    }

    lua_setmetatable( L, -2 );
    return 1;
}
