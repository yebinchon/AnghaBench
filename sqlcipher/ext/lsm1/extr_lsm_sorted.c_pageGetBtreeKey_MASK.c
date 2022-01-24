#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_4__ {int nData; void* pData; } ;
typedef  int /*<<< orphan*/  Segment ;
typedef  int /*<<< orphan*/  Page ;
typedef  int /*<<< orphan*/  LsmPgno ;
typedef  TYPE_1__ LsmBlob ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int LSM_OK ; 
 int SEGMENT_BTREE_FLAG ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,TYPE_1__*) ; 
 int FUNC11 (int /*<<< orphan*/ *,int) ; 
 int FUNC12 (int) ; 

__attribute__((used)) static int FUNC13(
  Segment *pSeg,                  /* Segment page pPg belongs to */
  Page *pPg,
  int iKey, 
  LsmPgno *piPtr, 
  int *piTopic, 
  void **ppKey,
  int *pnKey,
  LsmBlob *pBlob
){
  u8 *aData;
  int nData;
  u8 *aCell;
  int eType;

  aData = FUNC3(pPg, &nData);
  FUNC2( SEGMENT_BTREE_FLAG & FUNC9(aData, nData) );
  FUNC2( iKey>=0 && iKey<FUNC11(aData, nData) );

  aCell = FUNC8(aData, nData, iKey);
  eType = *aCell++;
  aCell += FUNC1(aCell, *piPtr);

  if( eType==0 ){
    int rc;
    LsmPgno iRef;               /* Page number of referenced page */
    Page *pRef;
    aCell += FUNC1(aCell, iRef);
    rc = FUNC4(FUNC7(pPg), pSeg, iRef, &pRef);
    if( rc!=LSM_OK ) return rc;
    FUNC10(FUNC6(pPg), pSeg, pRef, 0, &eType, pBlob);
    FUNC5(pRef);
    *ppKey = pBlob->pData;
    *pnKey = pBlob->nData;
  }else{
    aCell += FUNC0(aCell, *pnKey);
    *ppKey = aCell;
  }
  if( piTopic ) *piTopic = FUNC12(eType);

  return LSM_OK;
}