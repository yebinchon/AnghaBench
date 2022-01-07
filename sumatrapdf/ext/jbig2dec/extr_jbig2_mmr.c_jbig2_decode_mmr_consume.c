
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int word; int bit_index; int data_index; int size; int* data; } ;
typedef TYPE_1__ Jbig2MmrCtx ;



__attribute__((used)) static void
jbig2_decode_mmr_consume(Jbig2MmrCtx *mmr, int n_bits)
{
    mmr->word <<= n_bits;
    mmr->bit_index += n_bits;
    while (mmr->bit_index >= 8) {
        mmr->bit_index -= 8;
        if (mmr->data_index + 4 < mmr->size)
            mmr->word |= (mmr->data[mmr->data_index + 4] << mmr->bit_index);
        mmr->data_index++;
    }
}
