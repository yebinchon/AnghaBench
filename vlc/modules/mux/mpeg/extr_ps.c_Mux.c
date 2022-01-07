
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_19__ ;


typedef scalar_t__ vlc_tick_t ;
struct TYPE_21__ {int i_nb_inputs; int p_access; TYPE_3__** pp_inputs; TYPE_2__* p_sys; } ;
typedef TYPE_1__ sout_mux_t ;
struct TYPE_22__ {int i_pes_count; scalar_t__ i_instant_dts; int i_instant_size; int i_instant_bitrate; int i_pes_max_size; int b_mpeg2; } ;
typedef TYPE_2__ sout_mux_sys_t ;
struct TYPE_23__ {TYPE_19__* p_fmt; int p_fifo; scalar_t__ p_sys; } ;
typedef TYPE_3__ sout_input_t ;
struct TYPE_24__ {scalar_t__ i_dts; int i_stream_id; } ;
typedef TYPE_4__ ps_stream_t ;
typedef int int64_t ;
struct TYPE_25__ {scalar_t__ i_buffer; struct TYPE_25__* p_next; int i_flags; } ;
typedef TYPE_5__ block_t ;
struct TYPE_20__ {scalar_t__ i_cat; } ;


 int BLOCK_FLAG_HEADER ;
 int EStoPES (TYPE_5__**,TYPE_19__*,int ,int ,int ,int ,int ,int ) ;
 scalar_t__ INT64_MAX ;
 int MuxWritePSM (TYPE_1__*,TYPE_5__**,scalar_t__) ;
 int MuxWritePackHeader (TYPE_1__*,TYPE_5__**,scalar_t__) ;
 int MuxWriteSystemHeader (TYPE_1__*,TYPE_5__**,scalar_t__) ;
 scalar_t__ SPU_ES ;
 int VLC_SUCCESS ;
 scalar_t__ VLC_TICK_FROM_SEC (int) ;
 int block_ChainAppend (TYPE_5__**,TYPE_5__*) ;
 TYPE_5__* block_FifoGet (int ) ;
 int sout_AccessOutWrite (int ,TYPE_5__*) ;
 int sout_MuxGetStream (TYPE_1__*,int,scalar_t__*) ;

__attribute__((used)) static int Mux( sout_mux_t *p_mux )
{
    sout_mux_sys_t *p_sys = p_mux->p_sys;

    for( ;; )
    {
        sout_input_t *p_input;
        ps_stream_t *p_stream;

        block_t *p_ps, *p_data;

        vlc_tick_t i_dts;


        int i_stream = sout_MuxGetStream( p_mux, 1, &i_dts );
        if( i_stream < 0 )
        {
            return VLC_SUCCESS;
        }

        p_input = p_mux->pp_inputs[i_stream];
        p_stream = (ps_stream_t*)p_input->p_sys;
        p_ps = ((void*)0);

        p_stream->i_dts = i_dts;


        if( p_sys->i_pes_count % 30 == 0)
        {
            vlc_tick_t i_mindts = INT64_MAX;
            for( int i=0; i < p_mux->i_nb_inputs; i++ )
            {
                ps_stream_t *p_s = (ps_stream_t*)p_input->p_sys;
                if( p_input->p_fmt->i_cat == SPU_ES && p_mux->i_nb_inputs > 1 )
                    continue;
                if( p_s->i_dts >= 0 && i_mindts > p_s->i_dts )
                    i_mindts = p_s->i_dts;
            }

            if( i_mindts > p_sys->i_instant_dts )
            {

                if( p_sys->i_instant_size &&
                    i_dts - p_sys->i_instant_dts > VLC_TICK_FROM_SEC(1))
                {
                    int64_t i_instant_bitrate = p_sys->i_instant_size * 8000000 /
                            ( i_dts - p_sys->i_instant_dts );

                    p_sys->i_instant_bitrate += i_instant_bitrate;
                    p_sys->i_instant_bitrate /= 2;

                    p_sys->i_instant_size = 0;
                    p_sys->i_instant_dts = i_dts;
                }
                else if( !p_sys->i_instant_size )
                {
                    p_sys->i_instant_dts = i_dts;
                }

                MuxWritePackHeader( p_mux, &p_ps, i_dts );
            }
        }


        if( p_sys->i_pes_count % 300 == 0 )
        {
            block_t *p_pk;

            MuxWriteSystemHeader( p_mux, &p_ps, i_dts );


            for( p_pk = p_ps; p_pk != ((void*)0); p_pk = p_pk->p_next )
            {
                p_pk->i_flags |= BLOCK_FLAG_HEADER;
            }
        }


        if( p_sys->b_mpeg2 && p_sys->i_pes_count % 300 == 0 )
        {
            MuxWritePSM( p_mux, &p_ps, i_dts );
        }


        p_data = block_FifoGet( p_input->p_fifo );
        EStoPES ( &p_data, p_input->p_fmt, p_stream->i_stream_id,
                       p_sys->b_mpeg2, 0, 0, p_sys->i_pes_max_size, 0 );

        block_ChainAppend( &p_ps, p_data );


        for( p_data = p_ps; p_data; p_data = p_data->p_next )
        {
            p_sys->i_instant_size += p_data->i_buffer;
        }

        sout_AccessOutWrite( p_mux->p_access, p_ps );


        p_sys->i_pes_count++;
    }

    return VLC_SUCCESS;
}
