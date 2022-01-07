
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int picture_t ;
struct TYPE_10__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ filter_t ;
struct TYPE_11__ {int sem; int output_in_transit; int filtered_pictures; int started; } ;
typedef TYPE_2__ filter_sys_t ;
struct TYPE_13__ {scalar_t__ cmd; scalar_t__ length; scalar_t__ user_data; } ;
struct TYPE_12__ {scalar_t__ userdata; } ;
typedef TYPE_3__ MMAL_PORT_T ;
typedef TYPE_4__ MMAL_BUFFER_HEADER_T ;


 scalar_t__ MMAL_EVENT_FORMAT_CHANGED ;
 int atomic_fetch_sub (int *,int) ;
 int atomic_store (int *,int) ;
 int mmal_buffer_header_release (TYPE_4__*) ;
 int mmal_queue_put (int ,TYPE_4__*) ;
 int msg_Warn (TYPE_1__*,char*) ;
 int picture_Release (int *) ;
 int vlc_sem_post (int *) ;

__attribute__((used)) static void output_port_cb(MMAL_PORT_T *port, MMAL_BUFFER_HEADER_T *buffer)
{
    filter_t *filter = (filter_t *)port->userdata;
    filter_sys_t *sys = filter->p_sys;
    picture_t *picture;

    if (buffer->cmd == 0) {
        if (buffer->length > 0) {
            atomic_store(&sys->started, 1);
            mmal_queue_put(sys->filtered_pictures, buffer);
            picture = (picture_t *)buffer->user_data;
        } else {
            picture = (picture_t *)buffer->user_data;
            picture_Release(picture);
        }

        atomic_fetch_sub(&sys->output_in_transit, 1);
        vlc_sem_post(&sys->sem);
    } else if (buffer->cmd == MMAL_EVENT_FORMAT_CHANGED) {
        msg_Warn(filter, "MMAL_EVENT_FORMAT_CHANGED seen but not handled");
        mmal_buffer_header_release(buffer);
    } else {
        mmal_buffer_header_release(buffer);
    }
}
