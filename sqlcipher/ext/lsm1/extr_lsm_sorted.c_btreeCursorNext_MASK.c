#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_6__ {size_t iPg; int nDepth; TYPE_1__* aPg; void* iPtr; int /*<<< orphan*/  pSeg; int /*<<< orphan*/  pFS; } ;
struct TYPE_5__ {int iCell; int /*<<< orphan*/ * pPage; } ;
typedef  int /*<<< orphan*/  Page ;
typedef  void* LsmPgno ;
typedef  TYPE_1__ BtreePg ;
typedef  TYPE_2__ BtreeCursor ;

/* Variables and functions */
 int LSM_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_2__*) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC7(BtreeCursor *pCsr){
  int rc = LSM_OK;

  BtreePg *pPg = &pCsr->aPg[pCsr->iPg];
  int nCell; 
  u8 *aData;
  int nData;

  FUNC0( pCsr->iPg>=0 );
  FUNC0( pCsr->iPg==pCsr->nDepth-1 );

  aData = FUNC3(pPg->pPage, &nData);
  nCell = FUNC6(aData, nData);
  FUNC0( pPg->iCell<=nCell );
  pPg->iCell++;
  if( pPg->iCell==nCell ){
    LsmPgno iLoad;

    /* Up to parent. */
    FUNC5(pPg->pPage);
    pPg->pPage = 0;
    pCsr->iPg--;
    while( pCsr->iPg>=0 ){
      pPg = &pCsr->aPg[pCsr->iPg];
      aData = FUNC3(pPg->pPage, &nData);
      if( pPg->iCell<FUNC6(aData, nData) ) break;
      FUNC5(pPg->pPage);
      pCsr->iPg--;
    }

    /* Read the key */
    rc = FUNC1(pCsr);

    /* Unless the cursor is at EOF, descend to cell -1 (yes, negative one) of 
    ** the left-most most descendent. */
    if( pCsr->iPg>=0 ){
      pCsr->aPg[pCsr->iPg].iCell++;

      iLoad = FUNC2(aData, nData, pPg->iCell);
      do {
        Page *pLoad;
        pCsr->iPg++;
        rc = FUNC4(pCsr->pFS, pCsr->pSeg, iLoad, &pLoad);
        pCsr->aPg[pCsr->iPg].pPage = pLoad;
        pCsr->aPg[pCsr->iPg].iCell = 0;
        if( rc==LSM_OK ){
          if( pCsr->iPg==(pCsr->nDepth-1) ) break;
          aData = FUNC3(pLoad, &nData);
          iLoad = FUNC2(aData, nData, 0);
        }
      }while( rc==LSM_OK && pCsr->iPg<(pCsr->nDepth-1) );
      pCsr->aPg[pCsr->iPg].iCell = -1;
    }

  }else{
    rc = FUNC1(pCsr);
  }

  if( rc==LSM_OK && pCsr->iPg>=0 ){
    aData = FUNC3(pCsr->aPg[pCsr->iPg].pPage, &nData);
    pCsr->iPtr = FUNC2(aData, nData, pCsr->aPg[pCsr->iPg].iCell+1);
  }

  return rc;
}