#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  lsm_env ;
struct TYPE_13__ {int /*<<< orphan*/  pFS; int /*<<< orphan*/ * pEnv; } ;
typedef  TYPE_2__ lsm_db ;
struct TYPE_16__ {int iSplitTopic; void* pSplitKey; int /*<<< orphan*/  nSplitKey; TYPE_3__* pMerge; } ;
struct TYPE_15__ {void* pData; int /*<<< orphan*/  nData; int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_12__ {int /*<<< orphan*/  iCell; int /*<<< orphan*/  iPg; } ;
struct TYPE_14__ {TYPE_1__ splitkey; } ;
typedef  int /*<<< orphan*/  Segment ;
typedef  int /*<<< orphan*/  Page ;
typedef  TYPE_3__ Merge ;
typedef  int /*<<< orphan*/  LsmPgno ;
typedef  TYPE_4__ LsmBlob ;
typedef  TYPE_5__ Level ;

/* Variables and functions */
 int LSM_OK ; 
 int SEGMENT_BTREE_FLAG ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,void**,int*,TYPE_4__*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,TYPE_4__*) ; 
 int FUNC6 (int /*<<< orphan*/ *,TYPE_4__*,void*,int) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_5__*) ; 

__attribute__((used)) static void FUNC8(lsm_db *pDb, Level *pLevel, int *pRc){
  Segment *pSeg;
  Page *pPg = 0;
  lsm_env *pEnv = pDb->pEnv;      /* Environment handle */
  int rc = *pRc;
  Merge *pMerge = pLevel->pMerge;

  pSeg = FUNC7(pLevel);
  if( rc==LSM_OK ){
    rc = FUNC0(pDb->pFS, pSeg, pMerge->splitkey.iPg, &pPg);
  }
  if( rc==LSM_OK ){
    int iTopic;
    LsmBlob blob = {0, 0, 0, 0};
    u8 *aData;
    int nData;
  
    aData = FUNC1(pPg, &nData);
    if( FUNC4(aData, nData) & SEGMENT_BTREE_FLAG ){
      void *pKey;
      int nKey;
      LsmPgno dummy;
      rc = FUNC3(pSeg,
          pPg, pMerge->splitkey.iCell, &dummy, &iTopic, &pKey, &nKey, &blob
      );
      if( rc==LSM_OK && blob.pData!=pKey ){
        rc = FUNC6(pEnv, &blob, pKey, nKey);
      }
    }else{
      rc = FUNC5(
          pEnv, pSeg, pPg, pMerge->splitkey.iCell, &iTopic, &blob
      );
    }

    pLevel->iSplitTopic = iTopic;
    pLevel->pSplitKey = blob.pData;
    pLevel->nSplitKey = blob.nData;
    FUNC2(pPg);
  }

  *pRc = rc;
}