
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* sys; } ;
typedef TYPE_1__ vout_display_t ;
struct TYPE_8__ {int buffer_mutex; int buffer_cond; int buffers_in_transit; } ;
typedef TYPE_2__ vout_display_sys_t ;
typedef int picture_t ;
struct TYPE_10__ {scalar_t__ user_data; } ;
struct TYPE_9__ {scalar_t__ userdata; } ;
typedef TYPE_3__ MMAL_PORT_T ;
typedef TYPE_4__ MMAL_BUFFER_HEADER_T ;


 int atomic_fetch_sub (int *,int) ;
 int picture_Release (int *) ;
 int vlc_cond_signal (int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static void input_port_cb(MMAL_PORT_T *port, MMAL_BUFFER_HEADER_T *buffer)
{
    vout_display_t *vd = (vout_display_t *)port->userdata;
    vout_display_sys_t *sys = vd->sys;
    picture_t *picture = (picture_t *)buffer->user_data;

    if (picture)
        picture_Release(picture);

    vlc_mutex_lock(&sys->buffer_mutex);
    atomic_fetch_sub(&sys->buffers_in_transit, 1);
    vlc_cond_signal(&sys->buffer_cond);
    vlc_mutex_unlock(&sys->buffer_mutex);
}
