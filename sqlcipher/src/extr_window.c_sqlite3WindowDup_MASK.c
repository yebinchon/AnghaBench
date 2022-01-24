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
struct TYPE_6__ {int /*<<< orphan*/ * pOwner; void* pEnd; void* pStart; int /*<<< orphan*/  eExclude; int /*<<< orphan*/  eStart; int /*<<< orphan*/  eEnd; int /*<<< orphan*/  eFrmType; void* pOrderBy; void* pPartition; int /*<<< orphan*/  pFunc; void* pFilter; int /*<<< orphan*/  zName; } ;
typedef  TYPE_1__ Window ;
typedef  int /*<<< orphan*/  Expr ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 

Window *FUNC5(sqlite3 *db, Expr *pOwner, Window *p){
  Window *pNew = 0;
  if( FUNC0(p) ){
    pNew = FUNC1(db, sizeof(Window));
    if( pNew ){
      pNew->zName = FUNC2(db, p->zName);
      pNew->pFilter = FUNC3(db, p->pFilter, 0);
      pNew->pFunc = p->pFunc;
      pNew->pPartition = FUNC4(db, p->pPartition, 0);
      pNew->pOrderBy = FUNC4(db, p->pOrderBy, 0);
      pNew->eFrmType = p->eFrmType;
      pNew->eEnd = p->eEnd;
      pNew->eStart = p->eStart;
      pNew->eExclude = p->eExclude;
      pNew->pStart = FUNC3(db, p->pStart, 0);
      pNew->pEnd = FUNC3(db, p->pEnd, 0);
      pNew->pOwner = pOwner;
    }
  }
  return pNew;
}