#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_10__ {scalar_t__ pVtab; } ;
struct TYPE_13__ {scalar_t__ ePlan; TYPE_2__* zRankArgs; TYPE_2__* zRank; TYPE_2__* apRankArg; int /*<<< orphan*/  pRankArgStmt; TYPE_2__* pAuxdata; int /*<<< orphan*/  pExpr; TYPE_2__* pSorter; scalar_t__ pStmt; TYPE_2__* aInst; TYPE_2__* aInstIter; TYPE_1__ base; } ;
struct TYPE_12__ {int /*<<< orphan*/  pStorage; } ;
struct TYPE_11__ {int /*<<< orphan*/  pPtr; int /*<<< orphan*/  (* xDelete ) (int /*<<< orphan*/ ) ;struct TYPE_11__* pNext; int /*<<< orphan*/  pStmt; } ;
typedef  TYPE_2__ Fts5Sorter ;
typedef  TYPE_3__ Fts5FullTable ;
typedef  TYPE_4__ Fts5Cursor ;
typedef  TYPE_2__ Fts5Auxdata ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FTS5CSR_FREE_ZRANK ; 
 scalar_t__ FTS5_PLAN_SOURCE ; 
 int FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(Fts5Cursor *pCsr){
  Fts5FullTable *pTab = (Fts5FullTable*)(pCsr->base.pVtab);
  Fts5Auxdata *pData;
  Fts5Auxdata *pNext;

  FUNC6(pCsr->aInstIter);
  FUNC6(pCsr->aInst);
  if( pCsr->pStmt ){
    int eStmt = FUNC1(pCsr);
    FUNC4(pTab->pStorage, eStmt, pCsr->pStmt);
  }
  if( pCsr->pSorter ){
    Fts5Sorter *pSorter = pCsr->pSorter;
    FUNC5(pSorter->pStmt);
    FUNC6(pSorter);
  }

  if( pCsr->ePlan!=FTS5_PLAN_SOURCE ){
    FUNC3(pCsr->pExpr);
  }

  for(pData=pCsr->pAuxdata; pData; pData=pNext){
    pNext = pData->pNext;
    if( pData->xDelete ) pData->xDelete(pData->pPtr);
    FUNC6(pData);
  }

  FUNC5(pCsr->pRankArgStmt);
  FUNC6(pCsr->apRankArg);

  if( FUNC0(pCsr, FTS5CSR_FREE_ZRANK) ){
    FUNC6(pCsr->zRank);
    FUNC6(pCsr->zRankArgs);
  }

  FUNC2(&pCsr->ePlan, 0, sizeof(Fts5Cursor) - ((u8*)&pCsr->ePlan - (u8*)pCsr));
}