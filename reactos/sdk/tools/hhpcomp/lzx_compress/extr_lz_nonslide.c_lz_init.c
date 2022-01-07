
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
typedef int output_match_t ;
typedef int output_literal_t ;
struct TYPE_3__ {int wsize; int max_match; int min_match; int max_dist; int block_buf_size; int frame_size; scalar_t__ analysis_valid; void* prevtab; void* lentab; void* user_data; int output_literal; int output_match; int get_chars; scalar_t__ eofcount; scalar_t__ chars_in_buf; scalar_t__ block_loc; scalar_t__ cur_loc; int * block_buf; int * block_bufe; } ;
typedef TYPE_1__ lz_info ;
typedef int get_chars_t ;


 int assert (int ) ;
 void* calloc (int,int) ;
 int * malloc (int) ;

void lz_init(lz_info *lzi, int wsize, int max_dist,
      int max_match, int min_match,
      int frame_size,
      get_chars_t get_chars,
      output_match_t output_match,
      output_literal_t output_literal, void *user_data)
{





  lzi->wsize = wsize;
  if (max_match > wsize)
    lzi->max_match = wsize;
  else
    lzi->max_match = max_match;

  lzi->min_match = min_match;
  if (lzi->min_match < 3) lzi->min_match = 3;

  lzi->max_dist = max_dist;
  lzi->block_buf_size = wsize + lzi->max_dist;
  lzi->block_buf = malloc(lzi->block_buf_size);
  lzi->block_bufe = lzi->block_buf + lzi->block_buf_size;
  assert(lzi->block_buf != ((void*)0));

  lzi->cur_loc = 0;
  lzi->block_loc = 0;
  lzi->chars_in_buf = 0;
  lzi->eofcount = 0;
  lzi->get_chars = get_chars;
  lzi->output_match = output_match;
  lzi->output_literal = output_literal;
  lzi->user_data = user_data;
  lzi->frame_size = frame_size;
  lzi->lentab = calloc(sizeof(int), lzi->block_buf_size);
  lzi->prevtab = calloc(sizeof(u_char *), lzi->block_buf_size);
  lzi->analysis_valid = 0;
}
