
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ p_sys; } ;
typedef TYPE_1__ decoder_t ;
struct TYPE_8__ {scalar_t__ i_buffer; int i_flags; int p_buffer; } ;
typedef TYPE_2__ block_t ;
typedef int FILE ;


 int BLOCK_FLAG_CORRUPTED ;
 int VLCDEC_SUCCESS ;
 int block_Release (TYPE_2__*) ;
 int fwrite (int ,int,scalar_t__,int *) ;
 int msg_Dbg (TYPE_1__*,char*,scalar_t__) ;

__attribute__((used)) static int DecodeBlock( decoder_t *p_dec, block_t *p_block )
{
    FILE *stream = (void *)p_dec->p_sys;

    if( !p_block ) return VLCDEC_SUCCESS;

    if( stream != ((void*)0)
     && p_block->i_buffer > 0
     && !(p_block->i_flags & (BLOCK_FLAG_CORRUPTED)) )
    {
        fwrite( p_block->p_buffer, 1, p_block->i_buffer, stream );
        msg_Dbg( p_dec, "dumped %zu bytes", p_block->i_buffer );
    }
    block_Release( p_block );

    return VLCDEC_SUCCESS;
}
