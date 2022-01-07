
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* main_freq_table; double main_entropy; int block_codesp; int block_codes; int left_in_block; int main_tree_size; double last_ratio; int subdivide; int lzi; } ;
typedef TYPE_1__ lzx_data ;


 int NUM_CHARS ;
 int NUM_SECONDARY_LENGTHS ;
 int fprintf (int ,char*,int) ;
 double log (double) ;
 int lz_stop_compressing (int ) ;
 double rloge2 ;
 int stderr ;

__attribute__((used)) static void check_entropy(lzx_data *lzud, int main_index)
{
    double freq;
    double n_ln_n;
    double rn_ln2;
    double cur_ratio;
    int n;


    if (lzud->main_freq_table[main_index] != 1) {
      freq = (double)lzud->main_freq_table[main_index]-1;
      lzud->main_entropy += freq * log(freq);
    }

    freq = (double)lzud->main_freq_table[main_index];
    lzud->main_entropy -= freq * log(freq);
    n = lzud->block_codesp - lzud->block_codes;

    if (((n & 0xFFF) == 0) && (lzud->left_in_block >= 0x1000)) {
      n_ln_n = (double)n * log((double)n);
      rn_ln2 = rloge2 / (double)n;
      cur_ratio = (n * rn_ln2 *(n_ln_n + lzud->main_entropy) + 24 + 3 * 80 + NUM_CHARS + (lzud->main_tree_size-NUM_CHARS)*3 + NUM_SECONDARY_LENGTHS ) / (double)n;






      if (cur_ratio > lzud->last_ratio) {



 lzud->subdivide = -1;
 lz_stop_compressing(lzud->lzi);
      }
      lzud->last_ratio = cur_ratio;
    }
}
