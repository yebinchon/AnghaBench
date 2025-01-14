
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int offset_bits; int this_word; int next_word; int ctx; scalar_t__ offset; } ;
typedef TYPE_1__ Jbig2HuffmanState ;


 int JBIG2_SEVERITY_WARNING ;
 int huff_get_next_word (TYPE_1__*,scalar_t__,int*) ;
 int jbig2_error (int ,int ,int,char*) ;

int
jbig2_huffman_skip(Jbig2HuffmanState *hs)
{
    int bits = hs->offset_bits & 7;
    int code;

    if (bits) {
        bits = 8 - bits;
        hs->offset_bits += bits;
        hs->this_word = (hs->this_word << bits) | (hs->next_word >> (32 - hs->offset_bits));
    }

    if (hs->offset_bits >= 32) {
        hs->this_word = hs->next_word;
        hs->offset += 4;
        code = huff_get_next_word(hs, hs->offset + 4, &hs->next_word);
        if (code < 0) {
            return jbig2_error(hs->ctx, JBIG2_SEVERITY_WARNING, -1, "failed to read next huffman word when skipping");
        }
        hs->offset_bits -= 32;
        if (hs->offset_bits) {
            hs->this_word = (hs->this_word << hs->offset_bits) | (hs->next_word >> (32 - hs->offset_bits));
        }
    }
    return 0;
}
