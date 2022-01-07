
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_4__ {int type; int b_update; TYPE_1__* p_dialog; int psz_text; } ;
typedef TYPE_2__ extension_widget_t ;
struct TYPE_3__ {int lock; } ;
 int free (int ) ;
 int luaL_checkstring (int *,int) ;
 scalar_t__ luaL_checkudata (int *,int,char*) ;
 int luaL_error (int *,char*) ;
 int lua_SetDialogUpdate (int *,int) ;
 int lua_isstring (int *,int) ;
 int strdup (int ) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static int vlclua_widget_set_text( lua_State *L )
{

    extension_widget_t **pp_widget =
            (extension_widget_t **) luaL_checkudata( L, 1, "widget" );
    if( !pp_widget || !*pp_widget )
        return luaL_error( L, "Can't get pointer to widget" );
    extension_widget_t *p_widget = *pp_widget;


    if( !lua_isstring( L, 2 ) )
        return luaL_error( L, "widget:set_text usage: (text)" );


    switch( p_widget->type )
    {
        case 131:
        case 136:
        case 133:
        case 128:
        case 129:
        case 134:
        case 135:
            break;
        case 130:
        case 132:
        default:
            return luaL_error( L, "method set_text not valid for this widget" );
    }

    vlc_mutex_lock( &p_widget->p_dialog->lock );


    p_widget->b_update = 1;
    free( p_widget->psz_text );
    p_widget->psz_text = strdup( luaL_checkstring( L, 2 ) );

    vlc_mutex_unlock( &p_widget->p_dialog->lock );

    lua_SetDialogUpdate( L, 1 );

    return 1;
}
