
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_6__ {int* block_codes; int* block_codesp; int len_uncompressed_input; TYPE_2__* main_tree; TYPE_2__* aligned_tree; TYPE_2__* length_tree; } ;
typedef TYPE_1__ lzx_data ;
struct TYPE_7__ {int codelength; int code; } ;
typedef TYPE_2__ huff_entry ;


 int LZX_ALIGNED_OFFSET_BLOCK ;
 int LZX_FRAME_SIZE ;
 int NUM_CHARS ;
 int NUM_PRIMARY_LENGTHS ;
 int assert (int) ;
 int* extra_bits ;
 int fprintf (int ,char*,int,int,int,int) ;
 int lzx_align_output (TYPE_1__*) ;
 int lzx_write_bits (TYPE_1__*,int,int) ;
 int stderr ;

__attribute__((used)) static void
lzx_write_compressed_literals(lzx_data *lzxd, int block_type)
{
  uint32_t *cursor = lzxd->block_codes;
  uint32_t *endp = lzxd->block_codesp;
  uint16_t position_slot;
  uint32_t position_footer;
  uint32_t match_len_m2;
  uint32_t verbatim_bits;
  uint32_t block_code;
  uint16_t length_header;
  uint16_t length_footer;
  uint16_t len_pos_header;
  huff_entry *huffe;
  int frame_count = (lzxd->len_uncompressed_input % LZX_FRAME_SIZE);

  lzxd->len_uncompressed_input -= frame_count;
  while (cursor < endp) {
    block_code = *cursor++;
    if (block_code & 0x80000000) {
      match_len_m2 = block_code & 0xFF;
      position_footer = (block_code >> 8)& 0x1FFFF;
      position_slot = (block_code >> 25) & 0x3F;




      if (match_len_m2 < NUM_PRIMARY_LENGTHS) {
 length_header = match_len_m2;
 length_footer = 255;
      }
      else {
 length_header = NUM_PRIMARY_LENGTHS;
 length_footer = match_len_m2 - NUM_PRIMARY_LENGTHS;
      }
      len_pos_header = (position_slot << 3) | length_header;
      huffe = &lzxd->main_tree[len_pos_header+NUM_CHARS];
      lzx_write_bits(lzxd, huffe->codelength, huffe->code);
      if (length_footer != 255) {
 huffe = &lzxd->length_tree[length_footer];
 lzx_write_bits(lzxd, huffe->codelength, huffe->code);
      }
      if ((block_type == LZX_ALIGNED_OFFSET_BLOCK) && (extra_bits[position_slot] >= 3)) {

 verbatim_bits = position_footer >> 3;
 lzx_write_bits(lzxd, extra_bits[position_slot] - 3, verbatim_bits);
 huffe = &lzxd->aligned_tree[position_footer&7];
 lzx_write_bits(lzxd, huffe->codelength, huffe->code);
      }
      else {
 verbatim_bits = position_footer;
 lzx_write_bits(lzxd, extra_bits[position_slot], verbatim_bits);
      }
      frame_count += match_len_m2 + 2;
    }
    else {

      assert(block_code < NUM_CHARS);
      huffe = &lzxd->main_tree[block_code];
      lzx_write_bits(lzxd, huffe->codelength, huffe->code);
      frame_count++;
    }
    if (frame_count == LZX_FRAME_SIZE) {
      lzxd->len_uncompressed_input += frame_count;
      lzx_align_output(lzxd);
      frame_count = 0;
    }





    assert (frame_count < LZX_FRAME_SIZE);
  }
  lzxd->len_uncompressed_input += frame_count;
}
