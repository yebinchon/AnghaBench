
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_4__ {scalar_t__ type; scalar_t__ i_spin_loops; int b_update; TYPE_1__* p_dialog; } ;
typedef TYPE_2__ extension_widget_t ;
struct TYPE_3__ {int lock; } ;


 scalar_t__ EXTENSION_WIDGET_SPIN_ICON ;
 scalar_t__ luaL_checkudata (int *,int,char*) ;
 int luaL_error (int *,char*) ;
 int lua_SetDialogUpdate (int *,int) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static int vlclua_widget_stop( lua_State *L )
{

    extension_widget_t **pp_widget =
            (extension_widget_t **) luaL_checkudata( L, 1, "widget" );
    if( !pp_widget || !*pp_widget )
        return luaL_error( L, "Can't get pointer to widget" );
    extension_widget_t *p_widget = *pp_widget;

    if( p_widget->type != EXTENSION_WIDGET_SPIN_ICON )
        return luaL_error( L, "method stop not valid for this widget" );

    vlc_mutex_lock( &p_widget->p_dialog->lock );

    bool b_needs_update = p_widget->i_spin_loops != 0;
    p_widget->i_spin_loops = 0;

    vlc_mutex_unlock( &p_widget->p_dialog->lock );

    if( b_needs_update )
    {

        p_widget->b_update = 1;
        lua_SetDialogUpdate( L, 1 );
    }

    return 1;
}
