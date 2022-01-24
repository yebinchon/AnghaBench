#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u8 ;
typedef  int /*<<< orphan*/  Segment ;
typedef  int /*<<< orphan*/  Page ;
typedef  scalar_t__ LsmPgno ;

/* Variables and functions */
 int LSM_OK ; 
 int LSM_START_DELETE ; 
 int SEGMENT_BTREE_FLAG ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ **) ; 
 int* FUNC1 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int* FUNC3 (int*,int,int) ; 
 int FUNC4 (int*,int) ; 
 int FUNC5 (int*,int) ; 
 scalar_t__ FUNC6 (int*,int) ; 
 scalar_t__ FUNC7 (int*,int,int) ; 

__attribute__((used)) static int FUNC8(
  Page *pPage,
  int iCell,
  Segment *pSeg,
  LsmPgno *piPtr,
  int *pbFound
){
  Page *pPg = pPage;
  int iFirst = iCell;
  int rc = LSM_OK;

  do {
    Page *pNext = 0;
    u8 *aData;
    int nData;

    aData = FUNC1(pPg, &nData);
    if( (FUNC4(aData, nData) & SEGMENT_BTREE_FLAG)==0 ){
      int i;
      int nCell = FUNC5(aData, nData);
      for(i=iFirst; i<nCell; i++){
        u8 eType = *FUNC3(aData, nData, i);
        if( (eType & LSM_START_DELETE)==0 ){
          *pbFound = 1;
          *piPtr = FUNC7(aData, nData, i) + FUNC6(aData, nData);
          FUNC2(pPg);
          return LSM_OK;
        }
      }
    }

    rc = FUNC0(pSeg, pPg, 1, &pNext);
    FUNC2(pPg);
    pPg = pNext;
    iFirst = 0;
  }while( pPg && rc==LSM_OK );
  FUNC2(pPg);

  *pbFound = 0;
  return rc;
}