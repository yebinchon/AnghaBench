
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_4__ {int psz_text; int type; } ;
typedef TYPE_1__ extension_widget_t ;


 int EXTENSION_WIDGET_LABEL ;
 TYPE_1__* calloc (int,int) ;
 int luaL_checkstring (int *,int) ;
 int luaL_error (int *,char*) ;
 int lua_isstring (int *,int) ;
 int strdup (int ) ;
 int vlclua_create_widget_inner (int *,int,TYPE_1__*) ;

__attribute__((used)) static int vlclua_dialog_add_label( lua_State *L )
{

    if( !lua_isstring( L, 2 ) )
        return luaL_error( L, "dialog:add_label usage: (text)" );
    extension_widget_t *p_widget = calloc( 1, sizeof( extension_widget_t ) );
    p_widget->type = EXTENSION_WIDGET_LABEL;
    p_widget->psz_text = strdup( luaL_checkstring( L, 2 ) );

    return vlclua_create_widget_inner( L, 1, p_widget );
}
