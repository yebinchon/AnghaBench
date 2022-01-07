
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int subpicture_t ;
typedef int decoder_t ;
typedef int block_t ;


 int * DecodeBlock (int *,int **) ;
 int VLCDEC_SUCCESS ;
 int decoder_QueueSub (int *,int *) ;

__attribute__((used)) static int DecodeSubtitle(decoder_t *dec, block_t *block)
{
    block_t **block_ptr = block ? &block : ((void*)0);
    subpicture_t *spu;
    while ((spu = DecodeBlock(dec, block_ptr)) != ((void*)0))
        decoder_QueueSub(dec, spu);
    return VLCDEC_SUCCESS;
}
