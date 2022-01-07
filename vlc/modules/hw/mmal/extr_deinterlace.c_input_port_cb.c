
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int picture_t ;
struct TYPE_9__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ filter_t ;
struct TYPE_10__ {int sem; int input_in_transit; } ;
typedef TYPE_2__ filter_sys_t ;
struct TYPE_12__ {scalar_t__ user_data; } ;
struct TYPE_11__ {scalar_t__ userdata; } ;
typedef TYPE_3__ MMAL_PORT_T ;
typedef TYPE_4__ MMAL_BUFFER_HEADER_T ;


 int atomic_fetch_sub (int *,int) ;
 int mmal_buffer_header_release (TYPE_4__*) ;
 int msg_Warn (TYPE_1__*,char*) ;
 int picture_Release (int *) ;
 int vlc_sem_post (int *) ;

__attribute__((used)) static void input_port_cb(MMAL_PORT_T *port, MMAL_BUFFER_HEADER_T *buffer)
{
    picture_t *picture = (picture_t *)buffer->user_data;
    filter_t *filter = (filter_t *)port->userdata;
    filter_sys_t *sys = filter->p_sys;

    if (picture) {
        picture_Release(picture);
    } else {
        msg_Warn(filter, "Got buffer without picture on input port - OOOPS");
        mmal_buffer_header_release(buffer);
    }

    atomic_fetch_sub(&sys->input_in_transit, 1);
    vlc_sem_post(&sys->sem);
}
