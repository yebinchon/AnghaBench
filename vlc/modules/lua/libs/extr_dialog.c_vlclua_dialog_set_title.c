
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_2__ {int lock; int psz_title; } ;
typedef TYPE_1__ extension_dialog_t ;


 int free (int ) ;
 char* luaL_checkstring (int *,int) ;
 scalar_t__ luaL_checkudata (int *,int,char*) ;
 int luaL_error (int *,char*) ;
 int lua_SetDialogUpdate (int *,int) ;
 int strdup (char const*) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static int vlclua_dialog_set_title( lua_State *L )
{
    extension_dialog_t **pp_dlg =
            (extension_dialog_t**) luaL_checkudata( L, 1, "dialog" );
    if( !pp_dlg || !*pp_dlg )
        return luaL_error( L, "Can't get pointer to dialog" );
    extension_dialog_t *p_dlg = *pp_dlg;

    vlc_mutex_lock( &p_dlg->lock );

    const char *psz_title = luaL_checkstring( L, 2 );
    free( p_dlg->psz_title );
    p_dlg->psz_title = strdup( psz_title );

    vlc_mutex_unlock( &p_dlg->lock );

    lua_SetDialogUpdate( L, 1 );

    return 1;
}
