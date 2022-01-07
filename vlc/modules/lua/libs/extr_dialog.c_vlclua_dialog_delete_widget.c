
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int lua_State ;
struct TYPE_7__ {scalar_t__ type; int b_kill; int * p_sys_intf; } ;
typedef TYPE_1__ extension_widget_t ;
struct TYPE_8__ {int lock; int cond; int * p_sys_intf; int b_kill; } ;
typedef TYPE_2__ extension_dialog_t ;


 int DeleteWidget (TYPE_2__*,TYPE_1__*) ;
 scalar_t__ EXTENSION_WIDGET_BUTTON ;
 int LUA_REGISTRYINDEX ;
 int VLC_SUCCESS ;
 scalar_t__ luaL_checkudata (int *,int,char*) ;
 int luaL_error (int *,char*) ;
 int lua_SetDialogUpdate (int *,int ) ;
 int lua_isuserdata (int *,int) ;
 int lua_pushlightuserdata (int *,TYPE_1__*) ;
 int lua_pushnil (int *) ;
 int lua_settable (int *,int ) ;
 int vlc_cond_wait (int *,int *) ;
 int vlc_ext_dialog_update (int *,TYPE_2__*) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 int * vlclua_get_this (int *) ;

__attribute__((used)) static int vlclua_dialog_delete_widget( lua_State *L )
{

    extension_dialog_t **pp_dlg =
            (extension_dialog_t**) luaL_checkudata( L, 1, "dialog" );
    if( !pp_dlg || !*pp_dlg )
        return luaL_error( L, "Can't get pointer to dialog" );
    extension_dialog_t *p_dlg = *pp_dlg;


    if( !lua_isuserdata( L, 2 ) )
        return luaL_error( L, "Argument to del_widget is not a widget" );


    extension_widget_t **pp_widget =
            (extension_widget_t **) luaL_checkudata( L, 2, "widget" );
    if( !pp_widget || !*pp_widget )
        return luaL_error( L, "Can't get pointer to widget" );
    extension_widget_t *p_widget = *pp_widget;


    *pp_widget = ((void*)0);
    if( p_widget->type == EXTENSION_WIDGET_BUTTON )
    {

        lua_pushlightuserdata( L, p_widget );
        lua_pushnil( L );
        lua_settable( L, LUA_REGISTRYINDEX );
    }

    vlc_object_t *p_mgr = vlclua_get_this( L );

    p_widget->b_kill = 1;

    lua_SetDialogUpdate( L, 0 );
    int i_ret = vlc_ext_dialog_update( p_mgr, p_dlg );

    if( i_ret != VLC_SUCCESS )
    {
        return luaL_error( L, "Could not delete widget" );
    }

    vlc_mutex_lock( &p_dlg->lock );





    while( p_widget->p_sys_intf != ((void*)0) && !p_dlg->b_kill
           && p_dlg->p_sys_intf != ((void*)0) )
    {
        vlc_cond_wait( &p_dlg->cond, &p_dlg->lock );
    }

    i_ret = DeleteWidget( p_dlg, p_widget );

    vlc_mutex_unlock( &p_dlg->lock );

    if( i_ret != VLC_SUCCESS )
    {
        return luaL_error( L, "Could not remove widget from list" );
    }

    return 1;
}
