
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int decoder_t ;
struct TYPE_5__ {int i_flags; scalar_t__ i_dts; scalar_t__ i_pts; } ;
typedef TYPE_1__ block_t ;


 int BLOCK_FLAG_CORRUPTED ;
 scalar_t__ VLC_TICK_INVALID ;
 int block_Release (TYPE_1__*) ;
 int msg_Dbg (int *,char*) ;

__attribute__((used)) static block_t *PacketizeSub( decoder_t *p_dec, block_t **pp_block )
{
    block_t *p_block;

    if( pp_block == ((void*)0) || *pp_block == ((void*)0) )
        return ((void*)0);
    if( (*pp_block)->i_flags&(BLOCK_FLAG_CORRUPTED) )
    {
        block_Release( *pp_block );
        return ((void*)0);
    }

    p_block = *pp_block;
    *pp_block = ((void*)0);

    if( p_block->i_dts == VLC_TICK_INVALID )
    {
        p_block->i_dts = p_block->i_pts;
    }

    if( p_block->i_dts == VLC_TICK_INVALID )
    {
        msg_Dbg( p_dec, "need valid dts" );
        block_Release( p_block );
        return ((void*)0);
    }

    return p_block;
}
