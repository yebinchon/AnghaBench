
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_14__ ;


struct RedirectEntry {int dummy; } ;
struct TYPE_21__ {TYPE_3__* pWorker; int pFS; int pEnv; } ;
typedef TYPE_2__ lsm_db ;
struct TYPE_25__ {int iTo; int iFrom; } ;
struct TYPE_19__ {TYPE_1__* pRedirect; } ;
struct TYPE_24__ {scalar_t__ pNext; scalar_t__ nRight; TYPE_14__ lhs; } ;
struct TYPE_23__ {int iFrom; scalar_t__ iSeen; } ;
struct TYPE_20__ {int n; TYPE_7__* a; } ;
struct TYPE_22__ {TYPE_1__ redirect; scalar_t__ nBlock; } ;
typedef TYPE_3__ Snapshot ;
typedef TYPE_4__ MoveBlockCtx ;
typedef TYPE_5__ Level ;


 int LSM_LOG_DATA ;
 int LSM_MAX_BLOCK_REDIRECTS ;
 int LSM_OK ;
 int assert (int) ;
 int lsmBlockAllocate (TYPE_2__*,int,int*) ;
 int lsmBlockFree (TYPE_2__*,int) ;
 TYPE_5__* lsmDbSnapshotLevel (TYPE_3__*) ;
 int lsmFsBlockSize (int ) ;
 int lsmFsMoveBlock (int ,TYPE_14__*,int,int) ;
 int lsmFsPageSize (int ) ;
 TYPE_7__* lsmMallocZeroRc (int ,int,int*) ;
 int lsmSortedDumpStructure (TYPE_2__*,TYPE_3__*,int ,int ,char*) ;
 int lsmWalkFreelist (TYPE_2__*,int,int ,TYPE_4__*) ;
 int memmove (TYPE_7__*,TYPE_7__*,int) ;
 int moveBlockCb ;
 int sprintf (char*,char*,int,int) ;

__attribute__((used)) static int sortedMoveBlock(lsm_db *pDb, int *pnWrite){
  Snapshot *p = pDb->pWorker;
  Level *pLvl = lsmDbSnapshotLevel(p);
  int iFrom;
  int iTo;
  int rc;

  MoveBlockCtx sCtx;

  assert( pLvl->pNext==0 && pLvl->nRight==0 );
  assert( p->redirect.n<=LSM_MAX_BLOCK_REDIRECTS );

  *pnWrite = 0;



  if( p->redirect.n>=LSM_MAX_BLOCK_REDIRECTS ) return LSM_OK;






  sCtx.iSeen = p->nBlock+1;
  sCtx.iFrom = 0;
  rc = lsmWalkFreelist(pDb, 1, moveBlockCb, &sCtx);
  if( rc!=LSM_OK || sCtx.iFrom==0 ) return rc;
  iFrom = sCtx.iFrom;



  rc = lsmBlockAllocate(pDb, iFrom, &iTo);
  if( rc!=LSM_OK || iTo==0 ) return rc;
  assert( iTo!=1 && iTo<iFrom );

  rc = lsmFsMoveBlock(pDb->pFS, &pLvl->lhs, iTo, iFrom);
  if( rc==LSM_OK ){
    if( p->redirect.a==0 ){
      int nByte = sizeof(struct RedirectEntry) * LSM_MAX_BLOCK_REDIRECTS;
      p->redirect.a = lsmMallocZeroRc(pDb->pEnv, nByte, &rc);
    }
    if( rc==LSM_OK ){


      int i;
      for(i=0; i<p->redirect.n; i++){
        if( p->redirect.a[i].iTo==iFrom ) break;
      }

      if( i==p->redirect.n ){

        memmove(&p->redirect.a[1], &p->redirect.a[0],
            sizeof(struct RedirectEntry) * p->redirect.n
            );
        p->redirect.a[0].iFrom = iFrom;
        p->redirect.a[0].iTo = iTo;
        p->redirect.n++;
      }else{

        p->redirect.a[i].iTo = iTo;
      }

      rc = lsmBlockFree(pDb, iFrom);

      *pnWrite = lsmFsBlockSize(pDb->pFS) / lsmFsPageSize(pDb->pFS);
      pLvl->lhs.pRedirect = &p->redirect;
    }
  }
  return rc;
}
