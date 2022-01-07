
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {TYPE_2__* pFreelist; TYPE_1__* pWorker; } ;
typedef TYPE_3__ lsm_db ;
struct TYPE_11__ {int bReverse; int iFree; int (* xUsr ) (void*,int,i64) ;scalar_t__ bDone; void* pUsrctx; TYPE_2__* pFreelist; TYPE_3__* pDb; } ;
typedef TYPE_4__ WalkFreelistCtx ;
struct TYPE_12__ {scalar_t__ iId; int iBlk; } ;
struct TYPE_9__ {int nEntry; TYPE_5__* aEntry; } ;
struct TYPE_8__ {TYPE_2__ freelist; } ;
typedef TYPE_5__ FreelistEntry ;


 int LSM_OK ;
 int lsmSortedWalkFreelist (TYPE_3__*,int,int (*) (void*,int,i64),void*) ;
 int stub1 (void*,int ,scalar_t__) ;
 int walkFreelistCb (void*,int,i64) ;

int lsmWalkFreelist(
  lsm_db *pDb,
  int bReverse,
  int (*x)(void *, int, i64),
  void *pCtx
){
  const int iDir = (bReverse ? -1 : 1);
  int rc;
  int iCtx;

  WalkFreelistCtx ctx[2];

  ctx[0].pDb = pDb;
  ctx[0].bReverse = bReverse;
  ctx[0].pFreelist = &pDb->pWorker->freelist;
  if( ctx[0].pFreelist && bReverse ){
    ctx[0].iFree = ctx[0].pFreelist->nEntry-1;
  }else{
    ctx[0].iFree = 0;
  }
  ctx[0].xUsr = walkFreelistCb;
  ctx[0].pUsrctx = (void *)&ctx[1];
  ctx[0].bDone = 0;

  ctx[1].pDb = pDb;
  ctx[1].bReverse = bReverse;
  ctx[1].pFreelist = pDb->pFreelist;
  if( ctx[1].pFreelist && bReverse ){
    ctx[1].iFree = ctx[1].pFreelist->nEntry-1;
  }else{
    ctx[1].iFree = 0;
  }
  ctx[1].xUsr = x;
  ctx[1].pUsrctx = pCtx;
  ctx[1].bDone = 0;

  rc = lsmSortedWalkFreelist(pDb, bReverse, walkFreelistCb, (void *)&ctx[0]);

  if( ctx[0].bDone==0 ){
    for(iCtx=0; iCtx<2; iCtx++){
      int i;
      WalkFreelistCtx *p = &ctx[iCtx];
      for(i=p->iFree;
          p->pFreelist && rc==LSM_OK && i<p->pFreelist->nEntry && i>=0;
          i += iDir
         ){
        FreelistEntry *pEntry = &p->pFreelist->aEntry[i];
        if( pEntry->iId>=0 && p->xUsr(p->pUsrctx, pEntry->iBlk, pEntry->iId) ){
          return LSM_OK;
        }
      }
    }
  }

  return rc;
}
