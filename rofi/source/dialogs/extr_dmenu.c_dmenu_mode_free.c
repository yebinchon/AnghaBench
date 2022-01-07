
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t cmd_list_length; struct TYPE_3__* selected_list; struct TYPE_3__* active_list; struct TYPE_3__* urgent_list; struct TYPE_3__* cmd_list; struct TYPE_3__* icon_name; struct TYPE_3__* entry; scalar_t__ cancel; scalar_t__ input_stream; scalar_t__ data_input_stream; int cancel_source; } ;
typedef int Mode ;
typedef TYPE_1__ DmenuModePrivateData ;


 int g_cancellable_cancel (scalar_t__) ;
 int g_cancellable_disconnect (scalar_t__,int ) ;
 int g_free (TYPE_1__*) ;
 int g_input_stream_is_closed (scalar_t__) ;
 int g_object_unref (scalar_t__) ;
 int * mode_get_private_data (int *) ;
 int mode_set_private_data (int *,int *) ;

__attribute__((used)) static void dmenu_mode_free ( Mode *sw )
{
    if ( mode_get_private_data ( sw ) == ((void*)0) ) {
        return;
    }
    DmenuModePrivateData *pd = (DmenuModePrivateData *) mode_get_private_data ( sw );
    if ( pd != ((void*)0) ) {
        if ( pd->cancel ) {

            if ( pd->input_stream && !g_input_stream_is_closed ( pd->input_stream ) ) {
                g_cancellable_cancel ( pd->cancel );
            }

            g_cancellable_disconnect ( pd->cancel, pd->cancel_source );
            if ( pd->input_stream ) {

                g_object_unref ( pd->data_input_stream );
                g_object_unref ( pd->input_stream );
            }
            g_object_unref ( pd->cancel );
        }

        for ( size_t i = 0; i < pd->cmd_list_length; i++ ) {
            if ( pd->cmd_list[i].entry ) {
                g_free ( pd->cmd_list[i].entry );
                g_free ( pd->cmd_list[i].icon_name );
            }
        }
        g_free ( pd->cmd_list );
        g_free ( pd->urgent_list );
        g_free ( pd->active_list );
        g_free ( pd->selected_list );

        g_free ( pd );
        mode_set_private_data ( sw, ((void*)0) );
    }
}
