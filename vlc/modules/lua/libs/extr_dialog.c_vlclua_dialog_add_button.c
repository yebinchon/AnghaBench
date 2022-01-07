
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_5__ {int * p_sys; int psz_text; int type; } ;
typedef TYPE_1__ extension_widget_t ;


 int EXTENSION_WIDGET_BUTTON ;
 int LUA_REGISTRYINDEX ;
 TYPE_1__* calloc (int,int) ;
 int luaL_checkstring (int *,int) ;
 int luaL_error (int *,char*) ;
 int lua_isfunction (int *,int) ;
 int lua_isstring (int *,int) ;
 int lua_pushlightuserdata (int *,TYPE_1__*) ;
 int lua_pushvalue (int *,int) ;
 int lua_settable (int *,int ) ;
 int lua_settop (int *,int) ;
 int strdup (int ) ;
 int vlclua_create_widget_inner (int *,int,TYPE_1__*) ;

__attribute__((used)) static int vlclua_dialog_add_button( lua_State *L )
{

    if( !lua_isstring( L, 2 ) || !lua_isfunction( L, 3 ) )
        return luaL_error( L, "dialog:add_button usage: (text, func)" );

    extension_widget_t *p_widget = calloc( 1, sizeof( extension_widget_t ) );
    p_widget->type = EXTENSION_WIDGET_BUTTON;
    p_widget->psz_text = strdup( luaL_checkstring( L, 2 ) );
    lua_settop( L, 10 );
    lua_pushlightuserdata( L, p_widget );
    lua_pushvalue( L, 3 );
    lua_settable( L, LUA_REGISTRYINDEX );
    p_widget->p_sys = ((void*)0);

    return vlclua_create_widget_inner( L, 2, p_widget );
}
