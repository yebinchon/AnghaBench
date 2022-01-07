
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {scalar_t__ bits; scalar_t__ value; } ;
struct TYPE_5__ {scalar_t__ bits; int value; } ;
typedef TYPE_1__ HuffmanCode32 ;
typedef TYPE_2__ HuffmanCode ;


 scalar_t__ HUFFMAN_TABLE_BITS ;
 int assert (int) ;

__attribute__((used)) static int AccumulateHCode(HuffmanCode hcode, int shift,
                           HuffmanCode32* const huff) {
  huff->bits += hcode.bits;
  huff->value |= (uint32_t)hcode.value << shift;
  assert(huff->bits <= HUFFMAN_TABLE_BITS);
  return hcode.bits;
}
