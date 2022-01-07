
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int subpicture_t ;
struct TYPE_13__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ decoder_t ;
struct TYPE_14__ {int * p_block; scalar_t__ i_spu; scalar_t__ i_rle_size; scalar_t__ i_spu_size; int i_pts; int buffer; } ;
typedef TYPE_2__ decoder_sys_t ;
struct TYPE_15__ {int i_pts; } ;
typedef TYPE_3__ block_t ;


 int * ParsePacket (TYPE_1__*) ;
 TYPE_3__* Reassemble (TYPE_1__*,TYPE_3__*) ;
 int VLCDEC_SUCCESS ;
 scalar_t__ block_ChainExtract (TYPE_3__*,int ,int) ;
 int block_ChainRelease (TYPE_3__*) ;
 int decoder_QueueSub (TYPE_1__*,int *) ;

__attribute__((used)) static int Decode( decoder_t *p_dec, block_t *p_block )
{
    decoder_sys_t *p_sys = p_dec->p_sys;
    block_t *p_spu_block;
    subpicture_t *p_spu;

    if( p_block == ((void*)0) )
        return VLCDEC_SUCCESS;
    p_spu_block = Reassemble( p_dec, p_block );

    if( ! p_spu_block )
    {
        return VLCDEC_SUCCESS;
    }


    p_sys->i_spu = block_ChainExtract( p_spu_block, p_sys->buffer, 65536 );
    p_sys->i_pts = p_spu_block->i_pts;
    block_ChainRelease( p_spu_block );


    p_spu = ParsePacket( p_dec );


    p_sys->i_spu_size = 0;
    p_sys->i_rle_size = 0;
    p_sys->i_spu = 0;
    p_sys->p_block = ((void*)0);

    if( p_spu != ((void*)0) )
        decoder_QueueSub( p_dec, p_spu );
    return VLCDEC_SUCCESS;
}
