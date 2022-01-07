
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int decoder_t ;
typedef int block_t ;


 int * DecodeBlock (int *,int **) ;
 int VLCDEC_SUCCESS ;
 int decoder_QueueAudio (int *,int *) ;

__attribute__((used)) static int DecodeAudio(decoder_t *dec, block_t *block)
{
    if (block == ((void*)0))
        return VLCDEC_SUCCESS;

    block_t **block_ptr = &block, *out;
    while ((out = DecodeBlock(dec, block_ptr)) != ((void*)0))
        decoder_QueueAudio(dec,out);
    return VLCDEC_SUCCESS;
}
