
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ decoder_t ;
struct TYPE_13__ {int * p_block; scalar_t__ i_spu; scalar_t__ i_rle_size; scalar_t__ i_spu_size; } ;
typedef TYPE_2__ decoder_sys_t ;
struct TYPE_14__ {int i_length; int i_pts; int i_dts; } ;
typedef TYPE_3__ block_t ;


 TYPE_3__* Reassemble (TYPE_1__*,TYPE_3__*) ;
 int VLC_TICK_INVALID ;
 TYPE_3__* block_ChainGather (TYPE_3__*) ;

__attribute__((used)) static block_t *Packetize( decoder_t *p_dec, block_t **pp_block )
{
    decoder_sys_t *p_sys = p_dec->p_sys;
    if( pp_block == ((void*)0) )
        return ((void*)0);
    block_t *p_block = *pp_block; *pp_block = ((void*)0);
    if( p_block == ((void*)0) )
        return ((void*)0);

    block_t *p_spu = Reassemble( p_dec, p_block );

    if( ! p_spu )
    {
        return ((void*)0);
    }

    p_spu->i_dts = p_spu->i_pts;
    p_spu->i_length = VLC_TICK_INVALID;


    p_sys->i_spu_size = 0;
    p_sys->i_rle_size = 0;
    p_sys->i_spu = 0;
    p_sys->p_block = ((void*)0);

    return block_ChainGather( p_spu );
}
