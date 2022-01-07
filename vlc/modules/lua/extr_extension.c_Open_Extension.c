
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_4__ {int lock; int * p_sys; int pf_control; } ;
typedef TYPE_1__ extensions_manager_t ;


 int Control ;
 scalar_t__ ScanExtensions (TYPE_1__*) ;
 int VLC_EGENERIC ;
 scalar_t__ VLC_SUCCESS ;
 int VLC_VAR_ADDRESS ;
 scalar_t__ lua_Disabled (int *) ;
 int msg_Dbg (int *,char*) ;
 int msg_Err (TYPE_1__*,char*) ;
 int var_AddCallback (int *,char*,int ,int *) ;
 int var_Create (int *,char*,int ) ;
 int vlc_mutex_init (int *) ;
 int vlclua_extension_dialog_callback ;

int Open_Extension( vlc_object_t *p_this )
{
    if( lua_Disabled( p_this ) )
        return VLC_EGENERIC;

    msg_Dbg( p_this, "Opening Lua Extension module" );

    extensions_manager_t *p_mgr = ( extensions_manager_t* ) p_this;

    p_mgr->pf_control = Control;

    p_mgr->p_sys = ((void*)0);
    vlc_mutex_init( &p_mgr->lock );


    if( ScanExtensions( p_mgr ) != VLC_SUCCESS )
    {
        msg_Err( p_mgr, "Can't load extensions modules" );
        return VLC_EGENERIC;
    }


    var_Create( p_this, "dialog-event", VLC_VAR_ADDRESS );
    var_AddCallback( p_this, "dialog-event",
                     vlclua_extension_dialog_callback, ((void*)0) );

    return VLC_SUCCESS;
}
