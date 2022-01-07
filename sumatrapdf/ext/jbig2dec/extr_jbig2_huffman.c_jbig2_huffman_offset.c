
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_3__ {int offset_bits; scalar_t__ offset; } ;
typedef TYPE_1__ Jbig2HuffmanState ;



uint32_t
jbig2_huffman_offset(Jbig2HuffmanState *hs)
{
    return hs->offset + (hs->offset_bits >> 3);
}
