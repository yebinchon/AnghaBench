
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct extension_widget_value_t {int b_selected; struct extension_widget_value_t* p_next; int i_id; int psz_text; } ;
typedef int lua_State ;
struct TYPE_4__ {scalar_t__ type; int b_update; TYPE_1__* p_dialog; struct extension_widget_value_t* p_values; } ;
typedef TYPE_2__ extension_widget_t ;
struct TYPE_3__ {int lock; } ;


 scalar_t__ EXTENSION_WIDGET_DROPDOWN ;
 scalar_t__ EXTENSION_WIDGET_LIST ;
 struct extension_widget_value_t* calloc (int,int) ;
 int luaL_checkstring (int *,int) ;
 scalar_t__ luaL_checkudata (int *,int,char*) ;
 int luaL_error (int *,char*) ;
 int lua_SetDialogUpdate (int *,int) ;
 int lua_isstring (int *,int) ;
 int lua_tointeger (int *,int) ;
 int strdup (int ) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static int vlclua_widget_add_value( lua_State *L )
{

    extension_widget_t **pp_widget =
            (extension_widget_t **) luaL_checkudata( L, 1, "widget" );
    if( !pp_widget || !*pp_widget )
        return luaL_error( L, "Can't get pointer to widget" );
    extension_widget_t *p_widget = *pp_widget;

    if( p_widget->type != EXTENSION_WIDGET_DROPDOWN
        && p_widget->type != EXTENSION_WIDGET_LIST )
        return luaL_error( L, "method add_value not valid for this widget" );

    if( !lua_isstring( L, 2 ) )
        return luaL_error( L, "widget:add_value usage: (text, id = 0)" );

    struct extension_widget_value_t *p_value,
        *p_new_value = calloc( 1, sizeof( struct extension_widget_value_t ) );
    p_new_value->psz_text = strdup( luaL_checkstring( L, 2 ) );
    p_new_value->i_id = lua_tointeger( L, 3 );

    vlc_mutex_lock( &p_widget->p_dialog->lock );

    if( !p_widget->p_values )
    {
        p_widget->p_values = p_new_value;
        if( p_widget->type == EXTENSION_WIDGET_DROPDOWN )
            p_new_value->b_selected = 1;
    }
    else
    {
        for( p_value = p_widget->p_values;
             p_value->p_next != ((void*)0);
             p_value = p_value->p_next )
        { }
        p_value->p_next = p_new_value;
    }

    p_widget->b_update = 1;
    vlc_mutex_unlock( &p_widget->p_dialog->lock );

    lua_SetDialogUpdate( L, 1 );

    return 1;
}
