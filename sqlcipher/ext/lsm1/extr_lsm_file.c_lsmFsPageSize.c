
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nPagesize; } ;
typedef TYPE_1__ FileSystem ;



int lsmFsPageSize(FileSystem *pFS){
  return pFS->nPagesize;
}
