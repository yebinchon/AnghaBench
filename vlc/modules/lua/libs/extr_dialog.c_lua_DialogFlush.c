
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int extension_dialog_t ;


 int VLC_SUCCESS ;
 scalar_t__ lua_GetDialogUpdate (int *) ;
 int lua_SetDialogUpdate (int *,int ) ;
 int lua_getfield (int *,int,char*) ;
 int lua_getglobal (int *,char*) ;
 scalar_t__ lua_topointer (int *,int) ;
 int vlc_ext_dialog_update (int ,int *) ;
 int vlclua_get_this (int *) ;

int lua_DialogFlush( lua_State *L )
{
    lua_getglobal( L, "vlc" );
    lua_getfield( L, -1, "__dialog" );
    extension_dialog_t *p_dlg = ( extension_dialog_t* )lua_topointer( L, -1 );

    if( !p_dlg )
        return VLC_SUCCESS;

    int i_ret = VLC_SUCCESS;
    if( lua_GetDialogUpdate( L ) )
    {
        i_ret = vlc_ext_dialog_update( vlclua_get_this( L ), p_dlg );
        lua_SetDialogUpdate( L, 0 );
    }

    return i_ret;
}
