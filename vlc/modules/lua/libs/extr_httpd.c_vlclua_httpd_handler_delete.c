
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int lua_State ;
typedef int httpd_handler_t ;
struct TYPE_4__ {int ref; int L; } ;
typedef TYPE_1__ httpd_handler_lua_t ;


 int LUA_REGISTRYINDEX ;
 int free (TYPE_1__*) ;
 TYPE_1__* httpd_HandlerDelete (int *) ;
 scalar_t__ luaL_checkudata (int *,int,char*) ;
 int luaL_unref (int ,int ,int ) ;

__attribute__((used)) static int vlclua_httpd_handler_delete( lua_State *L )
{
    httpd_handler_t **pp_handler = (httpd_handler_t**)luaL_checkudata( L, 1, "httpd_handler" );
    httpd_handler_lua_t *p_sys = httpd_HandlerDelete( *pp_handler );
    luaL_unref( p_sys->L, LUA_REGISTRYINDEX, p_sys->ref );
    free( p_sys );
    return 0;
}
