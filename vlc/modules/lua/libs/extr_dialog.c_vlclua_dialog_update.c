
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef int lua_State ;
typedef int extension_dialog_t ;


 scalar_t__ luaL_checkudata (int *,int,char*) ;
 int luaL_error (int *,char*) ;
 int lua_SetDialogUpdate (int *,int ) ;
 int vlc_ext_dialog_update (int *,int *) ;
 int * vlclua_get_this (int *) ;

__attribute__((used)) static int vlclua_dialog_update( lua_State *L )
{
    vlc_object_t *p_mgr = vlclua_get_this( L );

    extension_dialog_t **pp_dlg =
            (extension_dialog_t**) luaL_checkudata( L, 1, "dialog" );
    if( !pp_dlg || !*pp_dlg )
        return luaL_error( L, "Can't get pointer to dialog" );
    extension_dialog_t *p_dlg = *pp_dlg;


    vlc_ext_dialog_update( p_mgr, p_dlg );


    lua_SetDialogUpdate( L, 0 );

    return 1;
}
