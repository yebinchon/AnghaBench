
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct lzx_data {int num_position_slots; int main_tree_size; scalar_t__ len_compressed_output; scalar_t__ len_uncompressed_input; void* lzi; void* prev_main_treelengths; void* main_tree; void* main_freq_table; int * block_codes; scalar_t__ bits_in_buf; int mark_frame; int at_eof; int put_bytes; int get_bytes; void* mark_frame_arg; void* out_arg; void* in_arg; } ;
typedef int lzx_put_bytes_t ;
typedef int lzx_mark_frame_t ;
typedef int lzx_get_bytes_t ;
typedef int lzx_at_eof_t ;
typedef int huff_entry ;


 int LZX_FRAME_SIZE ;
 int MAX_MATCH ;
 int MIN_MATCH ;
 int NUM_CHARS ;
 int lz_init (void*,int,int,int ,int ,int ,int ,int ,int ,struct lzx_data*) ;
 int lzx_get_chars ;
 int lzx_init_static () ;
 int lzx_output_literal ;
 int lzx_output_match ;
 int lzx_reset (struct lzx_data*) ;
 void* malloc (int) ;
 int* num_position_slots ;

int lzx_init(struct lzx_data **lzxdp, int wsize_code,
      lzx_get_bytes_t get_bytes, void *get_bytes_arg,
      lzx_at_eof_t at_eof,
      lzx_put_bytes_t put_bytes, void *put_bytes_arg,
      lzx_mark_frame_t mark_frame, void *mark_frame_arg)
{
  int wsize;
  struct lzx_data *lzxd;

  if ((wsize_code < 15) || (wsize_code > 21)) {
    return -1;
  }
  lzx_init_static();

  *lzxdp = lzxd = malloc(sizeof(*lzxd));
  if (lzxd == 0)
    return -2;

  lzxd->in_arg = get_bytes_arg;
  lzxd->out_arg = put_bytes_arg;
  lzxd->mark_frame_arg = mark_frame_arg;
  lzxd->get_bytes = get_bytes;
  lzxd->put_bytes = put_bytes;
  lzxd->at_eof = at_eof;
  lzxd->mark_frame = mark_frame;

  wsize = 1 << (wsize_code);

  lzxd->bits_in_buf = 0;
  lzxd->block_codes = ((void*)0);
  lzxd->num_position_slots = num_position_slots[wsize_code-15];
  lzxd->main_tree_size = (NUM_CHARS + 8 * lzxd->num_position_slots);

  lzxd->main_freq_table = malloc(sizeof(int) * lzxd->main_tree_size);
  lzxd->main_tree = malloc(sizeof(huff_entry)* lzxd->main_tree_size);
  lzxd->prev_main_treelengths = malloc(sizeof(uint8_t)*lzxd->main_tree_size);

  lzxd->lzi = malloc(sizeof (*lzxd->lzi));

  lz_init(lzxd->lzi, wsize, wsize - 3, MAX_MATCH, MIN_MATCH, LZX_FRAME_SIZE,
   lzx_get_chars, lzx_output_match, lzx_output_literal,lzxd);
  lzxd->len_uncompressed_input = 0;
  lzxd->len_compressed_output = 0;
  lzx_reset(lzxd);
  return 0;
}
