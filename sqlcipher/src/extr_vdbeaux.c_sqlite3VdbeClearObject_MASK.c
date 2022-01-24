#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_7__ {int nResColumn; scalar_t__ magic; int nVar; int nScan; TYPE_2__* aScan; TYPE_2__* pDblStr; TYPE_2__* zNormSql; TYPE_2__* zSql; TYPE_2__* aColName; int /*<<< orphan*/  nOp; int /*<<< orphan*/  aOp; TYPE_2__* pFree; TYPE_2__* pVList; TYPE_2__* aVar; TYPE_2__* pProgram; int /*<<< orphan*/ * db; } ;
typedef  TYPE_1__ Vdbe ;
struct TYPE_8__ {struct TYPE_8__* zName; struct TYPE_8__* pNextStr; int /*<<< orphan*/  nOp; int /*<<< orphan*/  aOp; struct TYPE_8__* pNext; } ;
typedef  TYPE_2__ SubProgram ;
typedef  TYPE_2__ DblquoteStr ;

/* Variables and functions */
 int COLNAME_N ; 
 scalar_t__ VDBE_MAGIC_INIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(sqlite3 *db, Vdbe *p){
  SubProgram *pSub, *pNext;
  FUNC0( p->db==0 || p->db==db );
  FUNC1(p->aColName, p->nResColumn*COLNAME_N);
  for(pSub=p->pProgram; pSub; pSub=pNext){
    pNext = pSub->pNext;
    FUNC3(db, pSub->aOp, pSub->nOp);
    FUNC2(db, pSub);
  }
  if( p->magic!=VDBE_MAGIC_INIT ){
    FUNC1(p->aVar, p->nVar);
    FUNC2(db, p->pVList);
    FUNC2(db, p->pFree);
  }
  FUNC3(db, p->aOp, p->nOp);
  FUNC2(db, p->aColName);
  FUNC2(db, p->zSql);
#ifdef SQLITE_ENABLE_NORMALIZE
  sqlite3DbFree(db, p->zNormSql);
  {
    DblquoteStr *pThis, *pNext;
    for(pThis=p->pDblStr; pThis; pThis=pNext){
      pNext = pThis->pNextStr;
      sqlite3DbFree(db, pThis);
    }
  }
#endif
#ifdef SQLITE_ENABLE_STMT_SCANSTATUS
  {
    int i;
    for(i=0; i<p->nScan; i++){
      sqlite3DbFree(db, p->aScan[i].zName);
    }
    sqlite3DbFree(db, p->aScan);
  }
#endif
}