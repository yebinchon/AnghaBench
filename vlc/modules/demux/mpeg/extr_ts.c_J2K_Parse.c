
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
typedef int demux_t ;
struct TYPE_5__ {int i_buffer; int * p_buffer; int i_length; } ;
typedef TYPE_1__ block_t ;


 scalar_t__ GetWBE (int const*) ;
 int block_Release (TYPE_1__*) ;
 scalar_t__ memcmp (int const*,char*,int) ;
 int msg_Warn (int *,char*) ;
 int vlc_tick_from_samples (scalar_t__,scalar_t__) ;

__attribute__((used)) static block_t *J2K_Parse( demux_t *p_demux, block_t *p_block, bool b_interlaced )
{
    const uint8_t *p_buf = p_block->p_buffer;

    if( p_block->i_buffer < ((b_interlaced) ? 48 : 38) )
        goto invalid;

    if( memcmp( p_buf, "elsmfrat", 8 ) )
        goto invalid;

    uint16_t i_den = GetWBE( &p_buf[8] );
    uint16_t i_num = GetWBE( &p_buf[10] );
    if( i_den == 0 )
        goto invalid;
    p_block->i_length = vlc_tick_from_samples( i_den, i_num );

    p_block->p_buffer += (b_interlaced) ? 48 : 38;
    p_block->i_buffer -= (b_interlaced) ? 48 : 38;

    return p_block;

invalid:
    msg_Warn( p_demux, "invalid J2K header, dropping codestream" );
    block_Release( p_block );
    return ((void*)0);
}
