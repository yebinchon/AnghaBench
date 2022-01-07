
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_7__ {void* i_height; void* i_width; void* i_vert_span; void* i_horiz_span; void* i_row; void* i_column; TYPE_2__* p_dialog; } ;
typedef TYPE_1__ extension_widget_t ;
struct TYPE_8__ {int lock; } ;
typedef TYPE_2__ extension_dialog_t ;


 int AddWidget (TYPE_2__*,TYPE_1__*) ;
 void* luaL_checkinteger (int *,int) ;
 scalar_t__ luaL_checkudata (int *,int,char*) ;
 int luaL_error (int *,char*) ;
 scalar_t__ luaL_newmetatable (int *,char*) ;
 int luaL_register (int *,int *,int ) ;
 int lua_SetDialogUpdate (int *,int) ;
 scalar_t__ lua_isnumber (int *,int) ;
 int lua_newtable (int *) ;
 TYPE_1__** lua_newuserdata (int *,int) ;
 int lua_setfield (int *,int,char*) ;
 int lua_setmetatable (int *,int) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 int vlclua_widget_reg ;

__attribute__((used)) static int vlclua_create_widget_inner( lua_State *L, int i_args,
                                       extension_widget_t *p_widget )
{
    int arg = i_args + 2;


    extension_dialog_t **pp_dlg =
            (extension_dialog_t**) luaL_checkudata( L, 1, "dialog" );
    if( !pp_dlg || !*pp_dlg )
        return luaL_error( L, "Can't get pointer to dialog" );
    extension_dialog_t *p_dlg = *pp_dlg;


    p_widget->p_dialog = p_dlg;


    if( lua_isnumber( L, arg ) )
        p_widget->i_column = luaL_checkinteger( L, arg );
    else goto end_of_args;
    if( lua_isnumber( L, ++arg ) )
        p_widget->i_row = luaL_checkinteger( L, arg );
    else goto end_of_args;
    if( lua_isnumber( L, ++arg ) )
        p_widget->i_horiz_span = luaL_checkinteger( L, arg );
    else goto end_of_args;
    if( lua_isnumber( L, ++arg ) )
        p_widget->i_vert_span = luaL_checkinteger( L, arg );
    else goto end_of_args;
    if( lua_isnumber( L, ++arg ) )
        p_widget->i_width = luaL_checkinteger( L, arg );
    else goto end_of_args;
    if( lua_isnumber( L, ++arg ) )
        p_widget->i_height = luaL_checkinteger( L, arg );
    else goto end_of_args;

end_of_args:
    vlc_mutex_lock( &p_dlg->lock );


    AddWidget( p_dlg, p_widget );

    vlc_mutex_unlock( &p_dlg->lock );


    extension_widget_t **pp_widget = lua_newuserdata( L, sizeof( extension_widget_t* ) );
    *pp_widget = p_widget;
    if( luaL_newmetatable( L, "widget" ) )
    {
        lua_newtable( L );
        luaL_register( L, ((void*)0), vlclua_widget_reg );
        lua_setfield( L, -2, "__index" );
    }
    lua_setmetatable( L, -2 );

    lua_SetDialogUpdate( L, 1 );

    return 1;
}
