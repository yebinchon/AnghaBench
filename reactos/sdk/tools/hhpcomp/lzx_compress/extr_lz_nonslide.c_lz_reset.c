
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int chars_in_buf; int block_loc; int block_buf; scalar_t__ analysis_valid; } ;
typedef TYPE_1__ lz_info ;


 int memmove (int,int,int) ;

void lz_reset(lz_info *lzi)
{
  int residual = lzi->chars_in_buf - lzi->block_loc;
  memmove(lzi->block_buf, lzi->block_buf + lzi->block_loc, residual);
  lzi->chars_in_buf = residual;
  lzi->block_loc = 0;
  lzi->analysis_valid = 0;
}
