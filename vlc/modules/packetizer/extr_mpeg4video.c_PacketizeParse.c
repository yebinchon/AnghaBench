
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ vlc_tick_t ;
typedef int decoder_t ;
struct TYPE_6__ {scalar_t__ i_dts; scalar_t__ i_pts; } ;
typedef TYPE_1__ block_t ;


 TYPE_1__* ParseMPEGBlock (int *,TYPE_1__*) ;

__attribute__((used)) static block_t *PacketizeParse( void *p_private, bool *pb_ts_used, block_t *p_block )
{
    decoder_t *p_dec = p_private;
    const vlc_tick_t i_dts = p_block->i_dts;
    const vlc_tick_t i_pts = p_block->i_pts;

    block_t *p_au = ParseMPEGBlock( p_dec, p_block );

    *pb_ts_used = p_au && p_au->i_dts == i_dts && p_au->i_pts == i_pts;

    return p_au;
}
