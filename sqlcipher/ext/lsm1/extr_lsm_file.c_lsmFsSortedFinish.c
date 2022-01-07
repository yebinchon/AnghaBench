
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_19__ {TYPE_1__* pWorker; } ;
struct TYPE_18__ {scalar_t__ pCompress; int nPagesize; TYPE_8__* pDb; } ;
struct TYPE_17__ {int * aData; } ;
struct TYPE_16__ {scalar_t__ iLastPg; scalar_t__ pRedirect; } ;
struct TYPE_15__ {scalar_t__* aiAppend; } ;
typedef TYPE_2__ Segment ;
typedef TYPE_3__ Page ;
typedef scalar_t__ LsmPgno ;
typedef TYPE_4__ FileSystem ;


 int LSM_APPLIST_SZ ;
 int LSM_OK ;
 int assert (int) ;
 int fsBlockNext (TYPE_4__*,TYPE_2__*,int ,int*) ;
 scalar_t__ fsLastPageOnPagesBlock (TYPE_4__*,scalar_t__) ;
 int fsPageGet (TYPE_4__*,int ,scalar_t__,int ,TYPE_3__**,int ) ;
 int fsPageToBlock (TYPE_4__*,scalar_t__) ;
 int lsmBlockRefree (TYPE_8__*,int) ;
 int lsmFsPageRelease (TYPE_3__*) ;
 scalar_t__ lsmGetU32 (int *) ;

int lsmFsSortedFinish(FileSystem *pFS, Segment *p){
  int rc = LSM_OK;
  if( p && p->iLastPg ){
    assert( p->pRedirect==0 );
    if( fsLastPageOnPagesBlock(pFS, p->iLastPg)!=p->iLastPg ){
      int i;
      LsmPgno *aiAppend = pFS->pDb->pWorker->aiAppend;
      for(i=0; i<LSM_APPLIST_SZ; i++){
        if( aiAppend[i]==0 ){
          aiAppend[i] = p->iLastPg+1;
          break;
        }
      }
    }else if( pFS->pCompress==0 ){
      Page *pLast;
      rc = fsPageGet(pFS, 0, p->iLastPg, 0, &pLast, 0);
      if( rc==LSM_OK ){
        int iBlk = (int)lsmGetU32(&pLast->aData[pFS->nPagesize-4]);
        lsmBlockRefree(pFS->pDb, iBlk);
        lsmFsPageRelease(pLast);
      }
    }else{
      int iBlk = 0;
      rc = fsBlockNext(pFS, p, fsPageToBlock(pFS, p->iLastPg), &iBlk);
      if( rc==LSM_OK ){
        lsmBlockRefree(pFS->pDb, iBlk);
      }
    }
  }
  return rc;
}
