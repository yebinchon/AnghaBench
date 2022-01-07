
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sout_mux_t ;
struct TYPE_3__ {int p_fifo; } ;
typedef TYPE_1__ sout_input_t ;


 int VLC_UNUSED (int *) ;
 int block_FifoEmpty (int ) ;

void sout_MuxFlush( sout_mux_t *p_mux, sout_input_t *p_input )
{
    VLC_UNUSED(p_mux);
    block_FifoEmpty( p_input->p_fifo );
}
