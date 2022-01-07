
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_9__ {TYPE_2__** htrees; TYPE_1__* packed_table; } ;
struct TYPE_8__ {scalar_t__ value; scalar_t__ bits; } ;
struct TYPE_7__ {scalar_t__ value; scalar_t__ bits; } ;
typedef TYPE_1__ HuffmanCode32 ;
typedef TYPE_2__ HuffmanCode ;
typedef TYPE_3__ HTreeGroup ;


 size_t ALPHA ;
 scalar_t__ AccumulateHCode (TYPE_2__,int,TYPE_1__* const) ;
 scalar_t__ BITS_SPECIAL_MARKER ;
 size_t BLUE ;
 size_t GREEN ;
 scalar_t__ HUFFMAN_PACKED_TABLE_SIZE ;
 scalar_t__ NUM_LITERAL_CODES ;
 size_t RED ;

__attribute__((used)) static void BuildPackedTable(HTreeGroup* const htree_group) {
  uint32_t code;
  for (code = 0; code < HUFFMAN_PACKED_TABLE_SIZE; ++code) {
    uint32_t bits = code;
    HuffmanCode32* const huff = &htree_group->packed_table[bits];
    HuffmanCode hcode = htree_group->htrees[GREEN][bits];
    if (hcode.value >= NUM_LITERAL_CODES) {
      huff->bits = hcode.bits + BITS_SPECIAL_MARKER;
      huff->value = hcode.value;
    } else {
      huff->bits = 0;
      huff->value = 0;
      bits >>= AccumulateHCode(hcode, 8, huff);
      bits >>= AccumulateHCode(htree_group->htrees[RED][bits], 16, huff);
      bits >>= AccumulateHCode(htree_group->htrees[BLUE][bits], 0, huff);
      bits >>= AccumulateHCode(htree_group->htrees[ALPHA][bits], 24, huff);
      (void)bits;
    }
  }
}
