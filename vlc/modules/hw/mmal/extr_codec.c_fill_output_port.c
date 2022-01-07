
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {TYPE_4__* p_sys; } ;
typedef TYPE_3__ decoder_t ;
struct TYPE_11__ {TYPE_2__* output; int output_in_transit; TYPE_1__* output_pool; } ;
typedef TYPE_4__ decoder_sys_t ;
struct TYPE_9__ {int buffer_num; } ;
struct TYPE_8__ {int queue; int headers_num; } ;


 int MIN_NUM_BUFFERS_IN_TRANSIT ;
 unsigned int NUM_DECODER_BUFFER_HEADERS ;
 unsigned int __MAX (int ,int ) ;
 unsigned int atomic_load (int *) ;
 int mmal_queue_length (int ) ;
 int msg_Dbg (TYPE_3__*,char*,int,int,unsigned int,int ) ;
 scalar_t__ send_output_buffer (TYPE_3__*) ;

__attribute__((used)) static void fill_output_port(decoder_t *dec)
{
    decoder_sys_t *sys = dec->p_sys;

    unsigned max_buffers_in_transit = 0;
    int buffers_available = 0;
    int buffers_to_send = 0;
    int i;

    if (sys->output_pool) {
        max_buffers_in_transit = __MAX(sys->output_pool->headers_num,
                MIN_NUM_BUFFERS_IN_TRANSIT);
        buffers_available = mmal_queue_length(sys->output_pool->queue);
    } else {
        max_buffers_in_transit = NUM_DECODER_BUFFER_HEADERS;
        buffers_available = NUM_DECODER_BUFFER_HEADERS - atomic_load(&sys->output_in_transit);
    }
    buffers_to_send = max_buffers_in_transit - atomic_load(&sys->output_in_transit);

    if (buffers_to_send > buffers_available)
        buffers_to_send = buffers_available;


    msg_Dbg(dec, "Send %d buffers to output port (available: %d, "
                    "in_transit: %d, buffer_num: %d)",
                    buffers_to_send, buffers_available,
                    atomic_load(&sys->output_in_transit),
                    sys->output->buffer_num);

    for (i = 0; i < buffers_to_send; ++i)
        if (send_output_buffer(dec) < 0)
            break;
}
