
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_3__* p_address; } ;
typedef TYPE_2__ vlc_value_t ;
typedef int vlc_object_t ;
typedef int extension_widget_t ;
typedef int extension_t ;
struct TYPE_8__ {int event; int * p_data; TYPE_1__* p_dlg; } ;
typedef TYPE_3__ extension_dialog_command_t ;
struct TYPE_6__ {int * p_sys; } ;


 int CMD_CLICK ;
 int CMD_CLOSE ;


 int PushCommandUnique (int *,int ,...) ;
 int VLC_SUCCESS ;
 int assert (int ) ;
 int msg_Dbg (int *,char*,int) ;

__attribute__((used)) static int vlclua_extension_dialog_callback( vlc_object_t *p_this,
                                             char const *psz_var,
                                             vlc_value_t oldval,
                                             vlc_value_t newval,
                                             void *p_data )
{

    ( void ) psz_var;
    ( void ) oldval;
    ( void ) p_data;

    extension_dialog_command_t *command = newval.p_address;
    assert( command != ((void*)0) );
    assert( command->p_dlg != ((void*)0));

    extension_t *p_ext = command->p_dlg->p_sys;
    assert( p_ext != ((void*)0) );

    extension_widget_t *p_widget = command->p_data;

    switch( command->event )
    {
        case 129:
            assert( p_widget != ((void*)0) );
            PushCommandUnique( p_ext, CMD_CLICK, p_widget );
            break;
        case 128:
            PushCommandUnique( p_ext, CMD_CLOSE );
            break;
        default:
            msg_Dbg( p_this, "Received unknown UI event %d, discarded",
                     command->event );
            break;
    }

    return VLC_SUCCESS;
}
