
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int need_1bit_header; int R0; int R1; int R2; int main_tree_size; int lzi; int prev_length_treelengths; int prev_main_treelengths; } ;
typedef TYPE_1__ lzx_data ;


 int NUM_SECONDARY_LENGTHS ;
 int lz_reset (int ) ;
 int memset (int ,int ,int) ;

void
lzx_reset(lzx_data *lzxd)
{
  lzxd->need_1bit_header = 1;
  lzxd->R0 = lzxd->R1 = lzxd->R2 = 1;
  memset(lzxd->prev_main_treelengths, 0, lzxd->main_tree_size * sizeof(uint8_t));
  memset(lzxd->prev_length_treelengths, 0, NUM_SECONDARY_LENGTHS * sizeof(uint8_t));
  lz_reset(lzxd->lzi);
}
