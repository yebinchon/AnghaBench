
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int picture_t ;
struct TYPE_7__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ filter_t ;
struct TYPE_8__ {int started; int filtered_pictures; int sem; int output_in_transit; int input_in_transit; int input; int output; } ;
typedef TYPE_2__ filter_sys_t ;
struct TYPE_9__ {scalar_t__ user_data; } ;
typedef TYPE_3__ MMAL_BUFFER_HEADER_T ;


 scalar_t__ atomic_load (int *) ;
 int atomic_store (int *,int) ;
 int mmal_port_flush (int ) ;
 TYPE_3__* mmal_queue_get (int ) ;
 int msg_Dbg (TYPE_1__*,char*,...) ;
 int picture_Release (int *) ;
 int vlc_sem_wait (int *) ;

__attribute__((used)) static void flush(filter_t *filter)
{
    filter_sys_t *sys = filter->p_sys;
    MMAL_BUFFER_HEADER_T *buffer;

    msg_Dbg(filter, "flush deinterlace filter");

    msg_Dbg(filter, "flush: flush ports (input: %d, output: %d in transit)",
            sys->input_in_transit, sys->output_in_transit);
    mmal_port_flush(sys->output);
    mmal_port_flush(sys->input);

    msg_Dbg(filter, "flush: wait for all buffers to be returned");
    while (atomic_load(&sys->input_in_transit) ||
            atomic_load(&sys->output_in_transit))
        vlc_sem_wait(&sys->sem);

    while ((buffer = mmal_queue_get(sys->filtered_pictures))) {
        picture_t *pic = (picture_t *)buffer->user_data;
        msg_Dbg(filter, "flush: release already filtered pic %p",
                (void *)pic);
        picture_Release(pic);
    }
    atomic_store(&sys->started, 0);
    msg_Dbg(filter, "flush: done");
}
