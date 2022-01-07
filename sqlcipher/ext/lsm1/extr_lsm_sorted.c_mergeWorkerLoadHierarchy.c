
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u8 ;
typedef int lsm_env ;
struct TYPE_15__ {scalar_t__ apHier; int nHier; } ;
struct TYPE_14__ {TYPE_3__* aSave; TYPE_2__* pDb; TYPE_6__ hier; TYPE_1__* pLevel; } ;
struct TYPE_13__ {scalar_t__ iRoot; } ;
struct TYPE_12__ {scalar_t__ iPgno; } ;
struct TYPE_11__ {int * pEnv; int * pFS; } ;
struct TYPE_10__ {TYPE_4__ lhs; } ;
typedef TYPE_4__ Segment ;
typedef int Page ;
typedef TYPE_5__ MergeWorker ;
typedef TYPE_6__ Hierarchy ;
typedef int FileSystem ;


 int LSM_NOMEM_BKPT ;
 int LSM_OK ;
 int SEGMENT_BTREE_FLAG ;
 int * fsPageData (int *,int*) ;
 int lsmFree (int *,int **) ;
 int lsmFsDbPageGet (int *,TYPE_4__*,int,int **) ;
 int lsmFsPageRelease (int *) ;
 scalar_t__ lsmRealloc (int *,int **,int) ;
 int memmove (int **,int **,int) ;
 int mergeWorkerMoveHierarchy (TYPE_5__*,int ) ;
 int pageGetFlags (int *,int) ;
 scalar_t__ pageGetPtr (int *,int) ;

__attribute__((used)) static int mergeWorkerLoadHierarchy(MergeWorker *pMW){
  int rc = LSM_OK;
  Segment *pSeg;
  Hierarchy *p;

  pSeg = &pMW->pLevel->lhs;
  p = &pMW->hier;

  if( p->apHier==0 && pSeg->iRoot!=0 ){
    FileSystem *pFS = pMW->pDb->pFS;
    lsm_env *pEnv = pMW->pDb->pEnv;
    Page **apHier = 0;
    int nHier = 0;
    int iPg = (int)pSeg->iRoot;

    do {
      Page *pPg = 0;
      u8 *aData;
      int nData;
      int flags;

      rc = lsmFsDbPageGet(pFS, pSeg, iPg, &pPg);
      if( rc!=LSM_OK ) break;

      aData = fsPageData(pPg, &nData);
      flags = pageGetFlags(aData, nData);
      if( flags&SEGMENT_BTREE_FLAG ){
        Page **apNew = (Page **)lsmRealloc(
            pEnv, apHier, sizeof(Page *)*(nHier+1)
        );
        if( apNew==0 ){
          rc = LSM_NOMEM_BKPT;
          break;
        }
        apHier = apNew;
        memmove(&apHier[1], &apHier[0], sizeof(Page *) * nHier);
        nHier++;

        apHier[0] = pPg;
        iPg = (int)pageGetPtr(aData, nData);
      }else{
        lsmFsPageRelease(pPg);
        break;
      }
    }while( 1 );

    if( rc==LSM_OK ){
      u8 *aData;
      int nData;
      aData = fsPageData(apHier[0], &nData);
      pMW->aSave[0].iPgno = pageGetPtr(aData, nData);
      p->nHier = nHier;
      p->apHier = apHier;
      rc = mergeWorkerMoveHierarchy(pMW, 0);
    }else{
      int i;
      for(i=0; i<nHier; i++){
        lsmFsPageRelease(apHier[i]);
      }
      lsmFree(pEnv, apHier);
    }
  }

  return rc;
}
