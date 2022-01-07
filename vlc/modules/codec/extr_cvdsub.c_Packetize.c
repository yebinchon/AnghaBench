
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int decoder_t ;
struct TYPE_6__ {int i_length; int i_pts; int i_dts; } ;
typedef TYPE_1__ block_t ;


 TYPE_1__* Reassemble (int *,TYPE_1__*) ;
 int VLC_TICK_INVALID ;

__attribute__((used)) static block_t *Packetize( decoder_t *p_dec, block_t **pp_block )
{
    block_t *p_block, *p_spu;

    if( pp_block == ((void*)0) || *pp_block == ((void*)0) ) return ((void*)0);

    p_block = *pp_block;
    *pp_block = ((void*)0);

    if( !(p_spu = Reassemble( p_dec, p_block )) ) return ((void*)0);

    p_spu->i_dts = p_spu->i_pts;
    p_spu->i_length = VLC_TICK_INVALID;

    return p_spu;
}
