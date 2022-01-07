
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int b_flushed; int id; TYPE_2__* p_sout; } ;
typedef TYPE_1__ sout_packetizer_input_t ;
struct TYPE_8__ {int lock; int p_stream; } ;
typedef TYPE_2__ sout_instance_t ;
struct TYPE_9__ {int i_flags; } ;
typedef TYPE_3__ block_t ;


 int BLOCK_FLAG_DISCONTINUITY ;
 int sout_StreamIdSend (int ,int ,TYPE_3__*) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

int sout_InputSendBuffer( sout_packetizer_input_t *p_input,
                          block_t *p_buffer )
{
    sout_instance_t *p_sout = p_input->p_sout;
    int i_ret;

    if( p_input->b_flushed )
    {
        p_buffer->i_flags |= BLOCK_FLAG_DISCONTINUITY;
        p_input->b_flushed = 0;
    }
    vlc_mutex_lock( &p_sout->lock );
    i_ret = sout_StreamIdSend( p_sout->p_stream, p_input->id, p_buffer );
    vlc_mutex_unlock( &p_sout->lock );

    return i_ret;
}
