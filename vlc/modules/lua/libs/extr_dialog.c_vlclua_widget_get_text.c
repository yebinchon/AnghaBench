
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_3__ {int type; scalar_t__ psz_text; TYPE_2__* p_dialog; } ;
typedef TYPE_1__ extension_widget_t ;
struct TYPE_4__ {int lock; } ;
typedef TYPE_2__ extension_dialog_t ;
 int free (char*) ;
 scalar_t__ luaL_checkudata (int *,int,char*) ;
 int luaL_error (int *,char*) ;
 int lua_pushstring (int *,char*) ;
 char* strdup (scalar_t__) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static int vlclua_widget_get_text( lua_State *L )
{

    extension_widget_t **pp_widget =
            (extension_widget_t **) luaL_checkudata( L, 1, "widget" );
    if( !pp_widget || !*pp_widget )
        return luaL_error( L, "Can't get pointer to widget" );
    extension_widget_t *p_widget = *pp_widget;


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
            return luaL_error( L, "method get_text not valid for this widget" );
    }

    extension_dialog_t *p_dlg = p_widget->p_dialog;
    vlc_mutex_lock( &p_dlg->lock );

    char *psz_text = ((void*)0);
    if( p_widget->psz_text )
        psz_text = strdup( p_widget->psz_text );
    vlc_mutex_unlock( &p_dlg->lock );

    lua_pushstring( L, psz_text );

    free( psz_text );
    return 1;
}
