
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ eState; scalar_t__ dbSize; } ;
typedef TYPE_1__ Pager ;


 scalar_t__ PAGER_READER ;
 scalar_t__ PAGER_WRITER_FINISHED ;
 int assert (int) ;

void sqlite3PagerPagecount(Pager *pPager, int *pnPage){
  assert( pPager->eState>=PAGER_READER );
  assert( pPager->eState!=PAGER_WRITER_FINISHED );
  *pnPage = (int)pPager->dbSize;
}
