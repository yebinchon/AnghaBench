
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int chars_in_buf; int block_loc; } ;
typedef TYPE_1__ lz_info ;



int lz_left_to_process(lz_info *lzi)
{
  return lzi->chars_in_buf - lzi->block_loc;
}
