#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_6__ {int selFlags; int* addrOpenEphm; struct TYPE_6__* pPrior; int /*<<< orphan*/  selId; scalar_t__ pWin; int /*<<< orphan*/  pWinDefn; int /*<<< orphan*/  pWith; int /*<<< orphan*/  nSelectRow; scalar_t__ iOffset; scalar_t__ iLimit; void* pLimit; struct TYPE_6__* pNext; int /*<<< orphan*/  op; void* pOrderBy; void* pHaving; void* pGroupBy; void* pWhere; int /*<<< orphan*/  pSrc; void* pEList; } ;
typedef  TYPE_1__ Select ;

/* Variables and functions */
 int SF_UsesEphemeral ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,int) ; 
 void* FUNC3 (int /*<<< orphan*/ *,void*,int) ; 
 void* FUNC4 (int /*<<< orphan*/ *,void*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

Select *FUNC8(sqlite3 *db, Select *pDup, int flags){
  Select *pRet = 0;
  Select *pNext = 0;
  Select **pp = &pRet;
  Select *p;

  FUNC0( db!=0 );
  for(p=pDup; p; p=p->pPrior){
    Select *pNew = FUNC2(db, sizeof(*p) );
    if( pNew==0 ) break;
    pNew->pEList = FUNC4(db, p->pEList, flags);
    pNew->pSrc = FUNC5(db, p->pSrc, flags);
    pNew->pWhere = FUNC3(db, p->pWhere, flags);
    pNew->pGroupBy = FUNC4(db, p->pGroupBy, flags);
    pNew->pHaving = FUNC3(db, p->pHaving, flags);
    pNew->pOrderBy = FUNC4(db, p->pOrderBy, flags);
    pNew->op = p->op;
    pNew->pNext = pNext;
    pNew->pPrior = 0;
    pNew->pLimit = FUNC3(db, p->pLimit, flags);
    pNew->iLimit = 0;
    pNew->iOffset = 0;
    pNew->selFlags = p->selFlags & ~SF_UsesEphemeral;
    pNew->addrOpenEphm[0] = -1;
    pNew->addrOpenEphm[1] = -1;
    pNew->nSelectRow = p->nSelectRow;
    pNew->pWith = FUNC7(db, p->pWith);
#ifndef SQLITE_OMIT_WINDOWFUNC
    pNew->pWin = 0;
    pNew->pWinDefn = FUNC6(db, p->pWinDefn);
    if( p->pWin ) FUNC1(pNew);
#endif
    pNew->selId = p->selId;
    *pp = pNew;
    pp = &pNew->pPrior;
    pNext = pNew;
  }

  return pRet;
}