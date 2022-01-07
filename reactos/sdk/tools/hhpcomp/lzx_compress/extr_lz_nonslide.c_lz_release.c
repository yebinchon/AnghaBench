
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int prevtab; int lentab; int block_buf; } ;
typedef TYPE_1__ lz_info ;


 int free (int ) ;

void lz_release(lz_info *lzi)
{
  free(lzi->block_buf);
  free(lzi->lentab);
  free(lzi->prevtab);
}
