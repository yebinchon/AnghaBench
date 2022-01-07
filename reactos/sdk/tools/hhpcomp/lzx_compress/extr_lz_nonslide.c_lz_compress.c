
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_8__ {int eofcount; int chars_in_buf; int block_loc; int max_dist; int* lentab; int max_match; int frame_size; int cur_loc; int min_match; scalar_t__ (* output_match ) (TYPE_1__*,int,int) ;int (* output_literal ) (TYPE_1__*,int ) ;int * block_buf; scalar_t__ stop; int ** prevtab; int analysis_valid; } ;
typedef TYPE_1__ lz_info ;


 int assert (int) ;
 int fill_blockbuf (TYPE_1__*,int) ;
 int fprintf (int ,char*,int,int,int,...) ;
 int lz_analyze_block (TYPE_1__*) ;
 scalar_t__ lz_left_to_process (TYPE_1__*) ;
 int memmove (int *,int *,int) ;
 int stderr ;
 scalar_t__ stub1 (TYPE_1__*,int,int) ;
 int stub2 (TYPE_1__*,int ) ;

int lz_compress(lz_info *lzi, int nchars)
{

  u_char *bbp, *bbe;
  int *lentab, *lenp;
  u_char **prevtab, **prevp;
  int len;
  int holdback;
  short trimmed;

  lzi->stop = 0;
  while ((lz_left_to_process(lzi) || !lzi->eofcount) && !lzi->stop && nchars > 0) {

    if (!lzi->analysis_valid ||
 (!lzi->eofcount &&
  ((lzi->chars_in_buf- lzi->block_loc) < nchars))) {
      int residual = lzi->chars_in_buf - lzi->block_loc;
      int bytes_to_move = lzi->max_dist + residual;
      if (bytes_to_move > lzi->chars_in_buf)
 bytes_to_move = lzi->chars_in_buf;



      memmove(lzi->block_buf, lzi->block_buf + lzi->chars_in_buf - bytes_to_move,
       bytes_to_move);

      lzi->block_loc = bytes_to_move - residual;
      lzi->chars_in_buf = bytes_to_move;



      fill_blockbuf(lzi, nchars);



      lz_analyze_block(lzi);
    }
    prevtab = prevp = lzi->prevtab + lzi->block_loc;
    lentab = lenp = lzi->lentab + lzi->block_loc;
    bbp = lzi->block_buf + lzi->block_loc;
    holdback = lzi->max_match;
    if (lzi->eofcount) holdback = 0;
    if (lzi->chars_in_buf < (nchars + lzi->block_loc))
      bbe = lzi->block_buf + lzi->chars_in_buf - holdback;
    else
      bbe = bbp + nchars;
    while ((bbp < bbe) && (!lzi->stop)) {
      trimmed = 0;
      len = *lenp;
      if (lzi->frame_size && (len > (lzi->frame_size - lzi->cur_loc % lzi->frame_size))) {



 trimmed = 1;
 len = (lzi->frame_size - lzi->cur_loc % lzi->frame_size);
      }
      if (len > nchars) {



 trimmed = 1;
 len = nchars;
      }
      if (len >= lzi->min_match) {
   if (lzi->output_match(lzi, (*prevp - lzi->block_buf) - lzi->block_loc,
    len) < 0) {

     len = 1;
   }
      }
      else
 len = 1;

      if (len < lzi->min_match) {
 assert(len == 1);
 lzi->output_literal(lzi, *bbp);
      }

      bbp += len;
      prevp += len;
      lenp += len;
      lzi->cur_loc += len;
      lzi->block_loc += len;
      assert(nchars >= len);
      nchars -= len;

    }
  }
  return 0;
}
