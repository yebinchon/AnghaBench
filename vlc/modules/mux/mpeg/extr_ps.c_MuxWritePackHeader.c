
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ vlc_tick_t ;
struct TYPE_9__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ sout_mux_t ;
struct TYPE_10__ {int i_instant_bitrate; scalar_t__ b_mpeg2; scalar_t__ i_dts_delay; } ;
typedef TYPE_2__ sout_mux_sys_t ;
typedef int int64_t ;
struct TYPE_11__ {int i_buffer; int p_buffer; scalar_t__ i_dts; scalar_t__ i_pts; } ;
typedef TYPE_3__ block_t ;
typedef int bits_buffer_t ;


 int TO_SCALE_NZ (scalar_t__) ;
 int bits_initwrite (int *,int,int ) ;
 int bits_write (int *,int,int) ;
 TYPE_3__* block_Alloc (int) ;
 int block_ChainAppend (TYPE_3__**,TYPE_3__*) ;

__attribute__((used)) static void MuxWritePackHeader( sout_mux_t *p_mux, block_t **p_buf,
                                vlc_tick_t i_dts )
{
    sout_mux_sys_t *p_sys = p_mux->p_sys;
    bits_buffer_t bits;
    block_t *p_hdr;
    int64_t i_scr;
    int i_mux_rate;

    i_scr = TO_SCALE_NZ(i_dts - p_sys->i_dts_delay);

    p_hdr = block_Alloc( 18 );
    if( !p_hdr )
        return;
    p_hdr->i_pts = p_hdr->i_dts = i_dts;
    bits_initwrite( &bits, 14, p_hdr->p_buffer );
    bits_write( &bits, 32, 0x01ba );


    i_mux_rate = (p_sys->i_instant_bitrate + 8 * 50 - 1 ) / (8 * 50);

    if( p_sys->b_mpeg2 )
    {
        bits_write( &bits, 2, 0x01 );
    }
    else
    {
        bits_write( &bits, 4, 0x02 );
    }

    bits_write( &bits, 3, ( i_scr >> 30 )&0x07 );
    bits_write( &bits, 1, 1 );
    bits_write( &bits, 15, ( i_scr >> 15 )&0x7fff );
    bits_write( &bits, 1, 1 );
    bits_write( &bits, 15, i_scr&0x7fff );
    bits_write( &bits, 1, 1 );

    if( p_sys->b_mpeg2 )
    {
        bits_write( &bits, 9, 0 );
    }
    bits_write( &bits, 1, 1 );

    bits_write( &bits, 22, i_mux_rate);
    bits_write( &bits, 1, 1 );

    if( p_sys->b_mpeg2 )
    {
        bits_write( &bits, 1, 1 );
        bits_write( &bits, 5, 0x1f );
        bits_write( &bits, 3, 0 );
    }

    p_hdr->i_buffer = p_sys->b_mpeg2 ? 14: 12;

    block_ChainAppend( p_buf, p_hdr );
}
