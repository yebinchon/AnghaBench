
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mxPgno; scalar_t__ eState; } ;
typedef TYPE_1__ Pager ;


 scalar_t__ PAGER_OPEN ;
 int assert (int) ;

int sqlite3PagerMaxPageCount(Pager *pPager, int mxPage){
  if( mxPage>0 ){
    pPager->mxPgno = mxPage;
  }
  assert( pPager->eState!=PAGER_OPEN );




  return pPager->mxPgno;
}
