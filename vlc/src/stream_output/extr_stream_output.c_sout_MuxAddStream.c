
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ (* pf_addstream ) (TYPE_1__*,TYPE_2__*) ;int pp_inputs; int i_nb_inputs; int b_waiting_stream; int b_add_stream_any_time; } ;
typedef TYPE_1__ sout_mux_t ;
struct TYPE_14__ {int fmt; int p_fifo; int * p_sys; int * p_fmt; } ;
typedef TYPE_2__ sout_input_t ;
typedef int es_format_t ;


 int TAB_APPEND (int ,int ,TYPE_2__*) ;
 int TAB_REMOVE (int ,int ,TYPE_2__*) ;
 int block_FifoNew () ;
 int block_FifoRelease (int ) ;
 int es_format_Clean (int *) ;
 int es_format_Copy (int *,int const*) ;
 int free (TYPE_2__*) ;
 TYPE_2__* malloc (int) ;
 int msg_Dbg (TYPE_1__*,char*) ;
 int msg_Err (TYPE_1__*,char*) ;
 scalar_t__ stub1 (TYPE_1__*,TYPE_2__*) ;

sout_input_t *sout_MuxAddStream( sout_mux_t *p_mux, const es_format_t *p_fmt )
{
    sout_input_t *p_input;

    if( !p_mux->b_add_stream_any_time && !p_mux->b_waiting_stream )
    {
        msg_Err( p_mux, "cannot add a new stream (unsupported while muxing "
                        "to this format). You can try increasing sout-mux-caching value" );
        return ((void*)0);
    }

    msg_Dbg( p_mux, "adding a new input" );


    p_input = malloc( sizeof( sout_input_t ) );
    if( !p_input )
        return ((void*)0);


    es_format_Copy( &p_input->fmt, p_fmt );
    p_input->p_fmt = &p_input->fmt;

    p_input->p_fifo = block_FifoNew();
    p_input->p_sys = ((void*)0);

    TAB_APPEND( p_mux->i_nb_inputs, p_mux->pp_inputs, p_input );
    if( p_mux->pf_addstream( p_mux, p_input ) < 0 )
    {
        msg_Err( p_mux, "cannot add this stream" );
        TAB_REMOVE( p_mux->i_nb_inputs, p_mux->pp_inputs, p_input );
        block_FifoRelease( p_input->p_fifo );
        es_format_Clean( &p_input->fmt );
        free( p_input );
        return ((void*)0);
    }

    return p_input;
}
