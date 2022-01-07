
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int vlc_tick_t ;
typedef int uint32_t ;
struct TYPE_11__ {int i_nb_inputs; TYPE_3__** pp_inputs; TYPE_2__* p_sys; } ;
typedef TYPE_1__ sout_mux_t ;
struct TYPE_12__ {int i_psm_version; int* crc32_table; } ;
typedef TYPE_2__ sout_mux_sys_t ;
struct TYPE_13__ {TYPE_4__* p_sys; } ;
typedef TYPE_3__ sout_input_t ;
struct TYPE_14__ {scalar_t__* lang; int i_stream_type; int i_stream_id; } ;
typedef TYPE_4__ ps_stream_t ;
struct TYPE_15__ {int* p_buffer; size_t i_buffer; int i_pts; int i_dts; } ;
typedef TYPE_5__ block_t ;
typedef int bits_buffer_t ;


 int bits_initwrite (int *,int,int*) ;
 int bits_write (int *,int,int) ;
 TYPE_5__* block_Alloc (int) ;
 int block_ChainAppend (TYPE_5__**,TYPE_5__*) ;
 int memset (int*,int ,size_t) ;

__attribute__((used)) static void MuxWritePSM( sout_mux_t *p_mux, block_t **p_buf, vlc_tick_t i_dts )
{
    sout_mux_sys_t *p_sys = p_mux->p_sys;
    block_t *p_hdr;
    bits_buffer_t bits;
    int i, i_psm_size = 16, i_es_map_size = 0;

    for( i = 0; i < p_mux->i_nb_inputs; i++ )
    {
        sout_input_t *p_input = p_mux->pp_inputs[i];
        ps_stream_t *p_stream = p_input->p_sys;

        i_es_map_size += 4;
        if( p_stream->lang[0] != 0 ) i_es_map_size += 6;
    }

    i_psm_size += i_es_map_size;

    p_hdr = block_Alloc( i_psm_size );
    if( !p_hdr )
        return;
    p_hdr->i_dts = p_hdr->i_pts = i_dts;

    memset( p_hdr->p_buffer, 0, p_hdr->i_buffer );
    bits_initwrite( &bits, i_psm_size, p_hdr->p_buffer );
    bits_write( &bits, 32, 0x01bc );
    bits_write( &bits, 16, i_psm_size - 6 );
    bits_write( &bits, 1, 1 );
    bits_write( &bits, 2, 0xF );
    bits_write( &bits, 5, p_sys->i_psm_version );
    bits_write( &bits, 7, 0xFF );
    bits_write( &bits, 1, 1 );

    bits_write( &bits, 16, 0 );


    bits_write( &bits, 16, i_es_map_size );
    for( i = 0; i < p_mux->i_nb_inputs; i++ )
    {
        sout_input_t *p_input = p_mux->pp_inputs[i];
        ps_stream_t *p_stream = p_input->p_sys;

        bits_write( &bits, 8, p_stream->i_stream_type );
        bits_write( &bits, 8, p_stream->i_stream_id );


        if( p_stream->lang[0] != 0 )
        {
            bits_write( &bits, 16, 6 );

            bits_write( &bits, 8, 0x0a );
            bits_write( &bits, 8, 4 );

            bits_write( &bits, 8, p_stream->lang[0] );
            bits_write( &bits, 8, p_stream->lang[1] );
            bits_write( &bits, 8, p_stream->lang[2] );
            bits_write( &bits, 8, 0 );
        }
        else
        {
            bits_write( &bits, 16, 0 );
        }
    }


    {
        uint32_t i_crc = 0xffffffff;
        for( i = 0; (size_t)i < p_hdr->i_buffer; i++ )
        i_crc = (i_crc << 8) ^
            p_sys->crc32_table[((i_crc >> 24) ^ p_hdr->p_buffer[i]) & 0xff];

        bits_write( &bits, 32, i_crc );
    }

    block_ChainAppend( p_buf, p_hdr );
}
