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
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_4__ {scalar_t__ pUpsertIdx; int /*<<< orphan*/ * pUpsertWhere; int /*<<< orphan*/ * pUpsertSet; int /*<<< orphan*/ * pUpsertTargetWhere; int /*<<< orphan*/ * pUpsertTarget; } ;
typedef  TYPE_1__ Upsert ;
typedef  int /*<<< orphan*/  ExprList ;
typedef  int /*<<< orphan*/  Expr ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

Upsert *FUNC3(
  sqlite3 *db,           /* Determines which memory allocator to use */
  ExprList *pTarget,     /* Target argument to ON CONFLICT, or NULL */
  Expr *pTargetWhere,    /* Optional WHERE clause on the target */
  ExprList *pSet,        /* UPDATE columns, or NULL for a DO NOTHING */
  Expr *pWhere           /* WHERE clause for the ON CONFLICT UPDATE */
){
  Upsert *pNew;
  pNew = FUNC0(db, sizeof(Upsert));
  if( pNew==0 ){
    FUNC2(db, pTarget);
    FUNC1(db, pTargetWhere);
    FUNC2(db, pSet);
    FUNC1(db, pWhere);
    return 0;
  }else{
    pNew->pUpsertTarget = pTarget;
    pNew->pUpsertTargetWhere = pTargetWhere;
    pNew->pUpsertSet = pSet;
    pNew->pUpsertWhere = pWhere;
    pNew->pUpsertIdx = 0;
  }
  return pNew;
}