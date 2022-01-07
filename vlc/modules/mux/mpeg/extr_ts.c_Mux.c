
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int i_nb_inputs; TYPE_1__** pp_inputs; TYPE_3__* p_sys; } ;
typedef TYPE_2__ sout_mux_t ;
struct TYPE_9__ {int * p_pcr_input; } ;
typedef TYPE_3__ sout_mux_sys_t ;
struct TYPE_7__ {int p_fifo; } ;


 int MuxStreams (TYPE_2__*) ;
 int VLC_SUCCESS ;
 int block_FifoEmpty (int ) ;
 int msg_Dbg (TYPE_2__*,char*) ;

__attribute__((used)) static int Mux( sout_mux_t *p_mux )
{
    sout_mux_sys_t *p_sys = p_mux->p_sys;

    if( p_sys->p_pcr_input == ((void*)0) )
    {
        for (int i = 0; i < p_mux->i_nb_inputs; i++ )
        {
            block_FifoEmpty( p_mux->pp_inputs[i]->p_fifo );
        }
        msg_Dbg( p_mux, "waiting for PCR streams" );
        return VLC_SUCCESS;
    }

    while (!MuxStreams(p_mux))
        ;
    return VLC_SUCCESS;
}
