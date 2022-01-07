
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ decoder_t ;
struct TYPE_6__ {int sem; int input_in_transit; int output_in_transit; int input; int output; } ;
typedef TYPE_2__ decoder_sys_t ;
typedef int MMAL_STATUS_T ;
typedef int MMAL_BUFFER_HEADER_T ;


 scalar_t__ atomic_load (int *) ;
 int mmal_port_flush (int ) ;
 int msg_Dbg (TYPE_1__*,char*) ;
 int vlc_sem_wait (int *) ;

__attribute__((used)) static void flush_decoder(decoder_t *dec)
{
    decoder_sys_t *sys = dec->p_sys;
    MMAL_BUFFER_HEADER_T *buffer;
    MMAL_STATUS_T status;

    msg_Dbg(dec, "Flushing decoder ports...");
    mmal_port_flush(sys->output);
    mmal_port_flush(sys->input);

    while (atomic_load(&sys->output_in_transit) ||
           atomic_load(&sys->input_in_transit))
        vlc_sem_wait(&sys->sem);
}
