
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* pWaiting; } ;
struct TYPE_6__ {int nRef; struct TYPE_6__* pWaitingNext; } ;
typedef TYPE_1__ Page ;
typedef TYPE_2__ FileSystem ;


 int LSM_OK ;
 int assert (int) ;
 int lsmFsPagePersist (TYPE_1__*) ;
 int lsmFsPageRelease (TYPE_1__*) ;

void lsmFsFlushWaiting(FileSystem *pFS, int *pRc){
  int rc = *pRc;
  Page *pPg;

  pPg = pFS->pWaiting;
  pFS->pWaiting = 0;

  while( pPg ){
    Page *pNext = pPg->pWaitingNext;
    if( rc==LSM_OK ) rc = lsmFsPagePersist(pPg);
    assert( pPg->nRef==1 );
    lsmFsPageRelease(pPg);
    pPg = pNext;
  }
  *pRc = rc;
}
