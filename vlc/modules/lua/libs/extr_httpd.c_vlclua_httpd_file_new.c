
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int lua_State ;
typedef int httpd_host_t ;
typedef int httpd_file_t ;
struct TYPE_4__ {int L; int ref; int password; } ;
typedef TYPE_1__ httpd_file_sys_t ;


 int LUA_REGISTRYINDEX ;
 int free (TYPE_1__*) ;
 int * httpd_FileNew (int *,char const*,char const*,char const*,char const*,int ,TYPE_1__*) ;
 int luaL_argcheck (int *,int ,int,char*) ;
 char* luaL_checkstring (int *,int) ;
 scalar_t__ luaL_checkudata (int *,int,char*) ;
 int luaL_error (int *,char*) ;
 scalar_t__ luaL_newmetatable (int *,char*) ;
 char* luaL_nilorcheckstring (int *,int) ;
 int luaL_ref (int *,int ) ;
 int lua_isfunction (int *,int) ;
 int lua_newthread (int *) ;
 int ** lua_newuserdata (int *,int) ;
 int lua_pushcfunction (int *,int ) ;
 int lua_setfield (int *,int,char*) ;
 int lua_setmetatable (int *,int) ;
 int lua_xmove (int *,int ,int) ;
 scalar_t__ malloc (int) ;
 int vlclua_httpd_file_callback ;
 int vlclua_httpd_file_delete ;

__attribute__((used)) static int vlclua_httpd_file_new( lua_State *L )
{
    httpd_host_t **pp_host = (httpd_host_t **)luaL_checkudata( L, 1, "httpd_host" );
    const char *psz_url = luaL_checkstring( L, 2 );
    const char *psz_mime = luaL_nilorcheckstring( L, 3 );
    const char *psz_user = luaL_nilorcheckstring( L, 4 );
    const char *psz_password = luaL_nilorcheckstring( L, 5 );

    luaL_argcheck( L, lua_isfunction( L, 6 ), 6, "Should be a function" );

    httpd_file_sys_t *p_sys = (httpd_file_sys_t *)
                              malloc( sizeof( httpd_file_sys_t ) );
    if( !p_sys )
        return luaL_error( L, "Failed to allocate private buffer." );
    p_sys->L = lua_newthread( L );
    p_sys->password = psz_password && *psz_password;
    p_sys->ref = luaL_ref( L, LUA_REGISTRYINDEX );
    lua_xmove( L, p_sys->L, 2 );
    httpd_file_t *p_file = httpd_FileNew( *pp_host, psz_url, psz_mime,
                                          psz_user, psz_password,
                                          vlclua_httpd_file_callback, p_sys );
    if( !p_file )
    {
        free( p_sys );
        return luaL_error( L, "Failed to create HTTPd file." );
    }

    httpd_file_t **pp_file = lua_newuserdata( L, sizeof( httpd_file_t * ) );
    *pp_file = p_file;

    if( luaL_newmetatable( L, "httpd_file" ) )
    {
        lua_pushcfunction( L, vlclua_httpd_file_delete );
        lua_setfield( L, -2, "__gc" );
    }

    lua_setmetatable( L, -2 );
    return 1;
}
