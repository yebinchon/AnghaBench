
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_4__ {scalar_t__ type; int b_checked; int b_update; TYPE_1__* p_dialog; } ;
typedef TYPE_2__ extension_widget_t ;
struct TYPE_3__ {int lock; } ;


 scalar_t__ EXTENSION_WIDGET_CHECK_BOX ;
 scalar_t__ luaL_checkudata (int *,int,char*) ;
 int luaL_error (int *,char*) ;
 int lua_SetDialogUpdate (int *,int) ;
 int lua_isboolean (int *,int) ;
 int lua_toboolean (int *,int) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static int vlclua_widget_set_checked( lua_State *L )
{

    extension_widget_t **pp_widget =
            (extension_widget_t **) luaL_checkudata( L, 1, "widget" );
    if( !pp_widget || !*pp_widget )
        return luaL_error( L, "Can't get pointer to widget" );
    extension_widget_t *p_widget = *pp_widget;

    if( p_widget->type != EXTENSION_WIDGET_CHECK_BOX )
        return luaL_error( L, "method set_checked not valid for this widget" );


    if( !lua_isboolean( L, 2 ) )
        return luaL_error( L, "widget:set_checked usage: (bool)" );

    vlc_mutex_lock( &p_widget->p_dialog->lock );

    bool b_old_check = p_widget->b_checked;
    p_widget->b_checked = lua_toboolean( L, 2 );

    vlc_mutex_unlock( &p_widget->p_dialog->lock );

    if( b_old_check != p_widget->b_checked )
    {

        p_widget->b_update = 1;
        lua_SetDialogUpdate( L, 1 );
    }

    return 1;
}
