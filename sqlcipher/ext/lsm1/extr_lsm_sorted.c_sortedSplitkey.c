
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int u8 ;
typedef int lsm_env ;
struct TYPE_13__ {int pFS; int * pEnv; } ;
typedef TYPE_2__ lsm_db ;
struct TYPE_16__ {int iSplitTopic; void* pSplitKey; int nSplitKey; TYPE_3__* pMerge; } ;
struct TYPE_15__ {void* pData; int nData; int member_3; int member_2; int member_1; int member_0; } ;
struct TYPE_12__ {int iCell; int iPg; } ;
struct TYPE_14__ {TYPE_1__ splitkey; } ;
typedef int Segment ;
typedef int Page ;
typedef TYPE_3__ Merge ;
typedef int LsmPgno ;
typedef TYPE_4__ LsmBlob ;
typedef TYPE_5__ Level ;


 int LSM_OK ;
 int SEGMENT_BTREE_FLAG ;
 int lsmFsDbPageGet (int ,int *,int ,int **) ;
 int * lsmFsPageData (int *,int*) ;
 int lsmFsPageRelease (int *) ;
 int pageGetBtreeKey (int *,int *,int ,int *,int*,void**,int*,TYPE_4__*) ;
 int pageGetFlags (int *,int) ;
 int pageGetKeyCopy (int *,int *,int *,int ,int*,TYPE_4__*) ;
 int sortedBlobSet (int *,TYPE_4__*,void*,int) ;
 int * sortedSplitkeySegment (TYPE_5__*) ;

__attribute__((used)) static void sortedSplitkey(lsm_db *pDb, Level *pLevel, int *pRc){
  Segment *pSeg;
  Page *pPg = 0;
  lsm_env *pEnv = pDb->pEnv;
  int rc = *pRc;
  Merge *pMerge = pLevel->pMerge;

  pSeg = sortedSplitkeySegment(pLevel);
  if( rc==LSM_OK ){
    rc = lsmFsDbPageGet(pDb->pFS, pSeg, pMerge->splitkey.iPg, &pPg);
  }
  if( rc==LSM_OK ){
    int iTopic;
    LsmBlob blob = {0, 0, 0, 0};
    u8 *aData;
    int nData;

    aData = lsmFsPageData(pPg, &nData);
    if( pageGetFlags(aData, nData) & SEGMENT_BTREE_FLAG ){
      void *pKey;
      int nKey;
      LsmPgno dummy;
      rc = pageGetBtreeKey(pSeg,
          pPg, pMerge->splitkey.iCell, &dummy, &iTopic, &pKey, &nKey, &blob
      );
      if( rc==LSM_OK && blob.pData!=pKey ){
        rc = sortedBlobSet(pEnv, &blob, pKey, nKey);
      }
    }else{
      rc = pageGetKeyCopy(
          pEnv, pSeg, pPg, pMerge->splitkey.iCell, &iTopic, &blob
      );
    }

    pLevel->iSplitTopic = iTopic;
    pLevel->pSplitKey = blob.pData;
    pLevel->nSplitKey = blob.nData;
    lsmFsPageRelease(pPg);
  }

  *pRc = rc;
}
