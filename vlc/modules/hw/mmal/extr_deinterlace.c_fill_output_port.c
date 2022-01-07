
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_3__* p_sys; } ;
typedef TYPE_2__ filter_t ;
struct TYPE_9__ {unsigned int output_in_transit; TYPE_1__* output; int filtered_pictures; } ;
typedef TYPE_3__ filter_sys_t ;
struct TYPE_7__ {int buffer_num; } ;


 int MIN_NUM_BUFFERS_IN_TRANSIT ;
 unsigned int __MAX (int,int ) ;
 int atomic_load (unsigned int*) ;
 int mmal_queue_length (int ) ;
 int msg_Dbg (TYPE_2__*,char*,int,int,unsigned int,int) ;
 scalar_t__ send_output_buffer (TYPE_2__*) ;

__attribute__((used)) static void fill_output_port(filter_t *filter)
{
    filter_sys_t *sys = filter->p_sys;

    unsigned max_buffers_in_transit = __MAX(2, MIN_NUM_BUFFERS_IN_TRANSIT);
    int buffers_available = sys->output->buffer_num -
        atomic_load(&sys->output_in_transit) -
        mmal_queue_length(sys->filtered_pictures);
    int buffers_to_send = max_buffers_in_transit - sys->output_in_transit;
    int i;

    if (buffers_to_send > buffers_available)
        buffers_to_send = buffers_available;


    msg_Dbg(filter, "Send %d buffers to output port (available: %d, in_transit: %d, buffer_num: %d)",
                    buffers_to_send, buffers_available, sys->output_in_transit,
                    sys->output->buffer_num);

    for (i = 0; i < buffers_to_send; ++i) {
        if (send_output_buffer(filter) < 0)
            break;
    }
}
