
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int gboolean ;
struct TYPE_8__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ decoder_t ;
struct TYPE_9__ {int b_running; scalar_t__ p_decoder; scalar_t__ p_decode_out; scalar_t__ p_decode_in; scalar_t__ p_decode_src; scalar_t__ p_bus; scalar_t__ p_allocator; scalar_t__ p_que; } ;
typedef TYPE_2__ decoder_sys_t ;
typedef int GstMessage ;
typedef int GstFlowReturn ;
typedef int GstBuffer ;


 int GST_APP_SRC_CAST (scalar_t__) ;

 int GST_MESSAGE_ERROR ;
 int GST_MESSAGE_TYPE (int *) ;
 scalar_t__ GST_STATE_CHANGE_SUCCESS ;
 int GST_STATE_NULL ;
 int default_msg_handler (TYPE_1__*,int *) ;
 int free (TYPE_2__*) ;
 int gst_app_src_end_of_stream (int ) ;
 int * gst_atomic_queue_pop (scalar_t__) ;
 int gst_atomic_queue_unref (scalar_t__) ;
 int gst_buffer_unref (int *) ;
 int * gst_bus_timed_pop_filtered (scalar_t__,unsigned long long,int) ;
 scalar_t__ gst_element_set_state (scalar_t__,int ) ;
 int gst_flow_get_name (int ) ;
 int gst_message_unref (int *) ;
 int gst_object_unref (scalar_t__) ;
 int msg_Dbg (TYPE_1__*,char*,...) ;
 int msg_Err (TYPE_1__*,char*) ;
 int msg_Warn (TYPE_1__*,char*) ;

__attribute__((used)) static void CloseDecoder( vlc_object_t *p_this )
{
    decoder_t *p_dec = ( decoder_t* )p_this;
    decoder_sys_t *p_sys = p_dec->p_sys;
    gboolean b_running = p_sys->b_running;

    if( b_running )
    {
        GstMessage *p_msg;
        GstFlowReturn i_ret;

        p_sys->b_running = 0;


        i_ret = gst_app_src_end_of_stream(
                GST_APP_SRC_CAST( p_sys->p_decode_src ));
        msg_Dbg( p_dec, "app src eos: %s", gst_flow_get_name( i_ret ) );


        p_msg = gst_bus_timed_pop_filtered( p_sys->p_bus,
                2000000000ULL, 128 | GST_MESSAGE_ERROR );

        if( p_msg )
        {
            switch( GST_MESSAGE_TYPE( p_msg ) ){
            case 128:
                msg_Dbg( p_dec, "got eos" );
                break;
            default:
                if( default_msg_handler( p_dec, p_msg ) )
                {
                    msg_Err( p_dec, "pipeline may not close gracefully" );
                    return;
                }
                break;
            }

            gst_message_unref( p_msg );
        }
        else
            msg_Warn( p_dec,
                    "no message, pipeline may not close gracefully" );
    }


    if( p_sys->p_que )
    {
        GstBuffer *p_buf;
        while( ( p_buf = gst_atomic_queue_pop( p_sys->p_que ) ) )
            gst_buffer_unref( p_buf );
        gst_atomic_queue_unref( p_sys->p_que );
    }

    if( b_running && gst_element_set_state( p_sys->p_decoder, GST_STATE_NULL )
            != GST_STATE_CHANGE_SUCCESS )
        msg_Err( p_dec,
                "failed to change the state to NULL," "pipeline may not close gracefully" );


    if( p_sys->p_allocator )
        gst_object_unref( p_sys->p_allocator );
    if( p_sys->p_bus )
        gst_object_unref( p_sys->p_bus );
    if( p_sys->p_decode_src )
        gst_object_unref( p_sys->p_decode_src );
    if( p_sys->p_decode_in )
        gst_object_unref( p_sys->p_decode_in );
    if( p_sys->p_decode_out )
        gst_object_unref( p_sys->p_decode_out );
    if( p_sys->p_decoder )
        gst_object_unref( p_sys->p_decoder );

    free( p_sys );
}
