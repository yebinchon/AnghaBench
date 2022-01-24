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
struct TYPE_6__ {scalar_t__ nCol; scalar_t__ pTmpInsert; TYPE_1__* pRbuUpdate; scalar_t__ pDelete; scalar_t__ pInsert; scalar_t__ pSelect; } ;
struct TYPE_5__ {scalar_t__ pUpdate; struct TYPE_5__* pNext; } ;
typedef  TYPE_1__ RbuUpdateStmt ;
typedef  TYPE_2__ RbuObjIter ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC2(RbuObjIter *pIter){
  RbuUpdateStmt *pUp;

  FUNC0(pIter->pSelect);
  FUNC0(pIter->pInsert);
  FUNC0(pIter->pDelete);
  FUNC0(pIter->pTmpInsert);
  pUp = pIter->pRbuUpdate;
  while( pUp ){
    RbuUpdateStmt *pTmp = pUp->pNext;
    FUNC0(pUp->pUpdate);
    FUNC1(pUp);
    pUp = pTmp;
  }
  
  pIter->pSelect = 0;
  pIter->pInsert = 0;
  pIter->pDelete = 0;
  pIter->pRbuUpdate = 0;
  pIter->pTmpInsert = 0;
  pIter->nCol = 0;
}