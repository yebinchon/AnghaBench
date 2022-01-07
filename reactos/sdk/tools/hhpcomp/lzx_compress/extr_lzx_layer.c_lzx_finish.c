
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lzx_results {int len_uncompressed_input; int len_compressed_output; } ;
struct lzx_data {struct lzx_data* main_freq_table; struct lzx_data* main_tree; struct lzx_data* prev_main_treelengths; struct lzx_data* lzi; int len_uncompressed_input; int len_compressed_output; } ;


 int free (struct lzx_data*) ;
 int lz_release (struct lzx_data*) ;

int lzx_finish(struct lzx_data *lzxd, struct lzx_results *lzxr)
{

  if (lzxr) {
    lzxr->len_compressed_output = lzxd->len_compressed_output;
    lzxr->len_uncompressed_input = lzxd->len_uncompressed_input;
  }
  lz_release(lzxd->lzi);
  free(lzxd->lzi);
  free(lzxd->prev_main_treelengths);
  free(lzxd->main_tree);
  free(lzxd->main_freq_table);
  free(lzxd);
  return 0;
}
