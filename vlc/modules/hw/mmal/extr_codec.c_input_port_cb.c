
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ decoder_t ;
struct TYPE_9__ {int sem; int input_in_transit; } ;
typedef TYPE_2__ decoder_sys_t ;
typedef int block_t ;
struct TYPE_11__ {int * user_data; } ;
struct TYPE_10__ {scalar_t__ userdata; } ;
typedef TYPE_3__ MMAL_PORT_T ;
typedef TYPE_4__ MMAL_BUFFER_HEADER_T ;


 int atomic_fetch_sub (int *,int) ;
 int block_Release (int *) ;
 int mmal_buffer_header_release (TYPE_4__*) ;
 int vlc_sem_post (int *) ;

__attribute__((used)) static void input_port_cb(MMAL_PORT_T *port, MMAL_BUFFER_HEADER_T *buffer)
{
    block_t *block = (block_t *)buffer->user_data;
    decoder_t *dec = (decoder_t *)port->userdata;
    decoder_sys_t *sys = dec->p_sys;
    buffer->user_data = ((void*)0);

    mmal_buffer_header_release(buffer);
    if (block)
        block_Release(block);
    atomic_fetch_sub(&sys->input_in_transit, 1);
    vlc_sem_post(&sys->sem);
}
