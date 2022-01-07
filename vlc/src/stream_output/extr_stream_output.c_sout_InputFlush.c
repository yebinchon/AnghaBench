
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int b_flushed; int id; TYPE_2__* p_sout; } ;
typedef TYPE_1__ sout_packetizer_input_t ;
struct TYPE_5__ {int lock; int p_stream; } ;
typedef TYPE_2__ sout_instance_t ;


 int sout_StreamFlush (int ,int ) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

void sout_InputFlush( sout_packetizer_input_t *p_input )
{
    sout_instance_t *p_sout = p_input->p_sout;

    vlc_mutex_lock( &p_sout->lock );
    sout_StreamFlush( p_sout->p_stream, p_input->id );
    vlc_mutex_unlock( &p_sout->lock );
    p_input->b_flushed = 1;
}
