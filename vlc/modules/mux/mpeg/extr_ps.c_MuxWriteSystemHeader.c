
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int vlc_tick_t ;
struct TYPE_13__ {int i_nb_inputs; TYPE_4__** pp_inputs; TYPE_3__* p_sys; } ;
typedef TYPE_2__ sout_mux_t ;
struct TYPE_14__ {int i_rate_bound; int i_audio_bound; int i_video_bound; } ;
typedef TYPE_3__ sout_mux_sys_t ;
struct TYPE_15__ {TYPE_1__* p_fmt; scalar_t__ p_sys; } ;
typedef TYPE_4__ sout_input_t ;
struct TYPE_16__ {int i_stream_id; int i_max_buff_size; } ;
typedef TYPE_5__ ps_stream_t ;
struct TYPE_17__ {int p_buffer; int i_pts; int i_dts; } ;
typedef TYPE_6__ block_t ;
typedef int bits_buffer_t ;
struct TYPE_12__ {scalar_t__ i_cat; } ;


 scalar_t__ AUDIO_ES ;
 scalar_t__ VIDEO_ES ;
 int bits_initwrite (int *,int,int ) ;
 int bits_write (int *,int,int) ;
 TYPE_6__* block_Alloc (int) ;
 int block_ChainAppend (TYPE_6__**,TYPE_6__*) ;

__attribute__((used)) static void MuxWriteSystemHeader( sout_mux_t *p_mux, block_t **p_buf,
                                  vlc_tick_t i_dts )
{
    sout_mux_sys_t *p_sys = p_mux->p_sys;
    block_t *p_hdr;
    bits_buffer_t bits;
    bool b_private;
    int i_rate_bound;

    int i_nb_private, i_nb_stream;
    int i;


    for( i = 0, i_nb_private = 0; i < p_mux->i_nb_inputs; i++ )
    {
        ps_stream_t *p_stream;

        p_stream = (ps_stream_t*)p_mux->pp_inputs[i]->p_sys;

        if( ( p_stream->i_stream_id&0xff00 ) == 0xbd00 )
        {
            i_nb_private++;
        }
    }


    i_nb_stream = p_mux->i_nb_inputs -
        ( i_nb_private > 0 ? i_nb_private - 1 : 0 );

    p_hdr = block_Alloc( 12 + i_nb_stream * 3 );
    if( !p_hdr )
        return;
    p_hdr->i_dts = p_hdr->i_pts = i_dts;


    i_rate_bound = (p_sys->i_rate_bound);

    bits_initwrite( &bits, 12 + i_nb_stream * 3, p_hdr->p_buffer );
    bits_write( &bits, 32, 0x01bb );
    bits_write( &bits, 16, 12 - 6 + i_nb_stream * 3 );
    bits_write( &bits, 1, 1 );
    bits_write( &bits, 22, i_rate_bound);
    bits_write( &bits, 1, 1 );

    bits_write( &bits, 6, p_sys->i_audio_bound );
    bits_write( &bits, 1, 0 );
    bits_write( &bits, 1, 0 );
    bits_write( &bits, 1, 0 );
    bits_write( &bits, 1, 0 );

    bits_write( &bits, 1, 1 );

    bits_write( &bits, 5, p_sys->i_video_bound );
    bits_write( &bits, 1, 1 );
    bits_write( &bits, 7, 0xff );


    for( i = 0, b_private = 0; i < p_mux->i_nb_inputs; i++ )
    {
        sout_input_t *p_input;
        ps_stream_t *p_stream;

        p_input = p_mux->pp_inputs[i];
        p_stream = (ps_stream_t *)p_input->p_sys;

        if( ( p_stream->i_stream_id&0xff00 ) == 0xbd00 )
        {
            if( b_private )
            {
                continue;
            }
            b_private = 1;

            bits_write( &bits, 8, 0xbd );
        }
        else
        {

            bits_write( &bits, 8, p_stream->i_stream_id&0xff );
        }

        bits_write( &bits, 2, 0x03 );
        if( p_input->p_fmt->i_cat == AUDIO_ES )
        {
            bits_write( &bits, 1, 0 );
            bits_write( &bits, 13, p_stream->i_max_buff_size / 128 );
        }
        else if( p_input->p_fmt->i_cat == VIDEO_ES )
        {
            bits_write( &bits, 1, 1 );
            bits_write( &bits, 13, p_stream->i_max_buff_size / 1024);
        }
        else
        {

            bits_write( &bits, 1, 0 );
            bits_write( &bits, 13, p_stream->i_max_buff_size / 128 );
        }
    }

    block_ChainAppend( p_buf, p_hdr );
}
