
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int decoder_t ;
struct TYPE_5__ {int i_buffer; scalar_t__* p_buffer; int i_dts; } ;
typedef TYPE_1__ block_t ;


 int ParseBlock (int *,TYPE_1__*) ;
 int VLCDEC_SUCCESS ;
 int block_Release (TYPE_1__*) ;
 int msg_Dbg (int *,char*,int ,scalar_t__*) ;

__attribute__((used)) static int DecodeBlock( decoder_t *p_dec, block_t *p_block )
{
    if( p_block == ((void*)0) )
        return VLCDEC_SUCCESS;

    int ret = ParseBlock( p_dec, p_block );







    block_Release( p_block );
    return ret;
}
