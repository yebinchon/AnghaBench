
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int errCode; int nSavepoint; scalar_t__ journalMode; scalar_t__ eState; TYPE_1__* aSavepoint; int jfd; scalar_t__ nSubRec; int sjfd; } ;
struct TYPE_8__ {int pInSavepoint; } ;
typedef TYPE_1__ PagerSavepoint ;
typedef TYPE_2__ Pager ;


 scalar_t__ PAGER_ERROR ;
 scalar_t__ PAGER_JOURNALMODE_OFF ;
 scalar_t__ PAGER_WRITER_CACHEMOD ;
 int SAVEPOINT_RELEASE ;
 int SAVEPOINT_ROLLBACK ;
 int SQLITE_ABORT ;
 int SQLITE_DONE ;
 int SQLITE_OK ;
 int assert (int) ;
 scalar_t__ isOpen (int ) ;
 int pagerPlaybackSavepoint (TYPE_2__*,TYPE_1__*) ;
 scalar_t__ pagerUseWal (TYPE_2__*) ;
 int setGetterMethod (TYPE_2__*) ;
 int sqlite3BitvecDestroy (int ) ;
 scalar_t__ sqlite3JournalIsInMemory (int ) ;
 int sqlite3OsTruncate (int ,int ) ;

int sqlite3PagerSavepoint(Pager *pPager, int op, int iSavepoint){
  int rc = pPager->errCode;





  assert( op==SAVEPOINT_RELEASE || op==SAVEPOINT_ROLLBACK );
  assert( iSavepoint>=0 || op==SAVEPOINT_ROLLBACK );

  if( rc==SQLITE_OK && iSavepoint<pPager->nSavepoint ){
    int ii;
    int nNew;





    nNew = iSavepoint + (( op==SAVEPOINT_RELEASE ) ? 0 : 1);
    for(ii=nNew; ii<pPager->nSavepoint; ii++){
      sqlite3BitvecDestroy(pPager->aSavepoint[ii].pInSavepoint);
    }
    pPager->nSavepoint = nNew;



    if( op==SAVEPOINT_RELEASE ){
      if( nNew==0 && isOpen(pPager->sjfd) ){

        if( sqlite3JournalIsInMemory(pPager->sjfd) ){
          rc = sqlite3OsTruncate(pPager->sjfd, 0);
          assert( rc==SQLITE_OK );
        }
        pPager->nSubRec = 0;
      }
    }





    else if( pagerUseWal(pPager) || isOpen(pPager->jfd) ){
      PagerSavepoint *pSavepoint = (nNew==0)?0:&pPager->aSavepoint[nNew-1];
      rc = pagerPlaybackSavepoint(pPager, pSavepoint);
      assert(rc!=SQLITE_DONE);
    }
  }

  return rc;
}
