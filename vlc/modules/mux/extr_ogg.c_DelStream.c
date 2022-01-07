
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {int p_access; TYPE_2__* p_sys; } ;
typedef TYPE_1__ sout_mux_t ;
struct TYPE_15__ {int i_del_streams; int i_add_streams; TYPE_4__** pp_del_streams; int i_pos; } ;
typedef TYPE_2__ sout_mux_sys_t ;
struct TYPE_16__ {int * p_sys; int p_fifo; } ;
typedef TYPE_3__ sout_input_t ;
struct TYPE_17__ {struct TYPE_17__* p_oggds_header; int b_new; int i_length; int i_dts; int os; } ;
typedef TYPE_4__ ogg_stream_t ;
typedef int block_t ;


 int FREENULL (TYPE_4__*) ;
 int MuxBlock (TYPE_1__*,TYPE_3__*) ;
 int OggSetDate (int *,int ,int ) ;
 int * OggStreamFlush (TYPE_1__*,int *,int ) ;
 scalar_t__ block_FifoCount (int ) ;
 int msg_Dbg (TYPE_1__*,char*) ;
 scalar_t__ sout_AccessOutWrite (int ,int *) ;
 TYPE_4__** xrealloc (TYPE_4__**,int) ;

__attribute__((used)) static void DelStream( sout_mux_t *p_mux, sout_input_t *p_input )
{
    sout_mux_sys_t *p_sys = p_mux->p_sys;
    ogg_stream_t *p_stream = (ogg_stream_t*)p_input->p_sys;
    block_t *p_og;

    msg_Dbg( p_mux, "removing input" );


    if( p_input->p_sys )
    {
        if( !p_stream->b_new )
        {
            while( block_FifoCount( p_input->p_fifo ) )
                MuxBlock( p_mux, p_input );
        }

        if( !p_stream->b_new &&
            ( p_og = OggStreamFlush( p_mux, &p_stream->os, 0 ) ) )
        {
            OggSetDate( p_og, p_stream->i_dts, p_stream->i_length );
            p_sys->i_pos += sout_AccessOutWrite( p_mux->p_access, p_og );
        }


        if( !p_stream->b_new )
        {
            p_sys->pp_del_streams = xrealloc( p_sys->pp_del_streams,
                        (p_sys->i_del_streams + 1) * sizeof(ogg_stream_t *) );
            p_sys->pp_del_streams[p_sys->i_del_streams++] = p_stream;
        }
        else
        {

            FREENULL( p_stream->p_oggds_header );
            FREENULL( p_stream );
            p_sys->i_add_streams--;
        }
    }

    p_input->p_sys = ((void*)0);
}
