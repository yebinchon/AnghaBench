
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct extension_widget_value_t {int i_id; int psz_text; scalar_t__ b_selected; struct extension_widget_value_t* p_next; } ;
typedef int lua_State ;
struct TYPE_4__ {scalar_t__ type; TYPE_1__* p_dialog; struct extension_widget_value_t* p_values; } ;
typedef TYPE_2__ extension_widget_t ;
struct TYPE_3__ {int lock; } ;


 scalar_t__ EXTENSION_WIDGET_DROPDOWN ;
 scalar_t__ luaL_checkudata (int *,int,char*) ;
 int luaL_error (int *,char*) ;
 int lua_pushinteger (int *,int) ;
 int lua_pushnil (int *) ;
 int lua_pushstring (int *,int ) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static int vlclua_widget_get_value( lua_State *L )
{

    extension_widget_t **pp_widget =
            (extension_widget_t **) luaL_checkudata( L, 1, "widget" );
    if( !pp_widget || !*pp_widget )
        return luaL_error( L, "Can't get pointer to widget" );
    extension_widget_t *p_widget = *pp_widget;

    if( p_widget->type != EXTENSION_WIDGET_DROPDOWN )
        return luaL_error( L, "method get_value not valid for this widget" );

    vlc_mutex_lock( &p_widget->p_dialog->lock );

    struct extension_widget_value_t *p_value;
    for( p_value = p_widget->p_values;
         p_value != ((void*)0);
         p_value = p_value->p_next )
    {
        if( p_value->b_selected )
        {
            lua_pushinteger( L, p_value->i_id );
            lua_pushstring( L, p_value->psz_text );
            vlc_mutex_unlock( &p_widget->p_dialog->lock );
            return 2;
        }
    }

    vlc_mutex_unlock( &p_widget->p_dialog->lock );

    lua_pushinteger( L, -1 );
    lua_pushnil( L );
    return 2;
}
