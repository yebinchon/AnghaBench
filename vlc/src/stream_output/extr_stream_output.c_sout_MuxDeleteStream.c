
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int b_waiting_stream; scalar_t__ i_nb_inputs; int (* pf_delstream ) (TYPE_1__*,TYPE_2__*) ;int pp_inputs; int (* pf_mux ) (TYPE_1__*) ;} ;
typedef TYPE_1__ sout_mux_t ;
struct TYPE_12__ {int fmt; int p_fifo; } ;
typedef TYPE_2__ sout_input_t ;


 int TAB_ERASE (scalar_t__,int ,int) ;
 int TAB_FIND (scalar_t__,int ,TYPE_2__*,int) ;
 scalar_t__ block_FifoCount (int ) ;
 int block_FifoRelease (int ) ;
 int es_format_Clean (int *) ;
 int free (TYPE_2__*) ;
 int msg_Warn (TYPE_1__*,char*) ;
 int stub1 (TYPE_1__*) ;
 int stub2 (TYPE_1__*,TYPE_2__*) ;

void sout_MuxDeleteStream( sout_mux_t *p_mux, sout_input_t *p_input )
{
    int i_index;

    if( p_mux->b_waiting_stream
     && block_FifoCount( p_input->p_fifo ) > 0 )
    {


        p_mux->b_waiting_stream = 0;
        p_mux->pf_mux( p_mux );
    }

    TAB_FIND( p_mux->i_nb_inputs, p_mux->pp_inputs, p_input, i_index );
    if( i_index >= 0 )
    {

        TAB_ERASE( p_mux->i_nb_inputs, p_mux->pp_inputs, i_index );

        p_mux->pf_delstream( p_mux, p_input );

        if( p_mux->i_nb_inputs == 0 )
        {
            msg_Warn( p_mux, "no more input streams for this mux" );
        }

        block_FifoRelease( p_input->p_fifo );
        es_format_Clean( &p_input->fmt );
        free( p_input );
    }
}
