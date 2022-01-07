
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pPCache; } ;
typedef TYPE_1__ Pager ;


 int sqlite3PcacheSetSpillsize (int ,int) ;

int sqlite3PagerSetSpillsize(Pager *pPager, int mxPage){
  return sqlite3PcacheSetSpillsize(pPager->pPCache, mxPage);
}
