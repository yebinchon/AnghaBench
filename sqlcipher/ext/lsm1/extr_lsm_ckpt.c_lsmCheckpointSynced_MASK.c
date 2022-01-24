#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct TYPE_5__ {TYPE_1__* pShmhdr; int /*<<< orphan*/  pEnv; int /*<<< orphan*/  pFS; } ;
typedef  TYPE_2__ lsm_db ;
typedef  int i64 ;
struct TYPE_4__ {int iMetaPage; } ;
typedef  int /*<<< orphan*/  MetaPage ;

/* Variables and functions */
 int CKPT_HDR_NCKPT ; 
 size_t CKPT_HDR_NWRITE ; 
 int LSM_META_RW_PAGE_SIZE ; 
 int LSM_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int) ; 
 scalar_t__ FUNC2 (int*) ; 
 int FUNC3 (int*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int* FUNC10 (int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC11 (int*,int /*<<< orphan*/ *,int) ; 

int FUNC12(lsm_db *pDb, i64 *piId, i64 *piLog, u32 *pnWrite){
  int rc = LSM_OK;
  MetaPage *pPg;
  u32 iMeta;

  iMeta = pDb->pShmhdr->iMetaPage;
  if( iMeta==1 || iMeta==2 ){
    rc = FUNC7(pDb->pFS, 0, iMeta, &pPg);
    if( rc==LSM_OK ){
      int nCkpt;
      int nData;
      u8 *aData; 

      aData = FUNC6(pPg, &nData);
      FUNC0( nData==LSM_META_RW_PAGE_SIZE );
      nCkpt = FUNC9(&aData[CKPT_HDR_NCKPT*sizeof(u32)]);
      if( nCkpt<(LSM_META_RW_PAGE_SIZE/sizeof(u32)) ){
        u32 *aCopy = FUNC10(pDb->pEnv, sizeof(u32) * nCkpt, &rc);
        if( aCopy ){
          FUNC11(aCopy, aData, nCkpt*sizeof(u32));
          FUNC1(aCopy, nCkpt);
          if( FUNC2(aCopy) ){
            if( piId ) *piId = FUNC3(aCopy, 0);
            if( piLog ) *piLog = (FUNC4(aCopy) >> 1);
            if( pnWrite ) *pnWrite = aCopy[CKPT_HDR_NWRITE];
          }
          FUNC5(pDb->pEnv, aCopy);
        }
      }
      FUNC8(pPg);
    }
  }

  if( (iMeta!=1 && iMeta!=2) || rc!=LSM_OK || pDb->pShmhdr->iMetaPage!=iMeta ){
    if( piId ) *piId = 0;
    if( piLog ) *piLog = 0;
    if( pnWrite ) *pnWrite = 0;
  }
  return rc;
}