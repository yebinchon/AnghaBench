
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int decoder_t ;
struct TYPE_4__ {int i_buffer; int p_buffer; int i_pts; } ;
typedef TYPE_1__ block_t ;


 int Convert (int *,int ,int ,int ) ;
 TYPE_1__* Pop (int *,int) ;
 int block_Release (TYPE_1__*) ;

__attribute__((used)) static bool DoDecode( decoder_t *p_dec, bool b_drain )
{
    block_t *p_block = Pop( p_dec, b_drain );
    if( !p_block )
        return 0;

    Convert( p_dec, p_block->i_pts, p_block->p_buffer, p_block->i_buffer );
    block_Release( p_block );

    return 1;
}
