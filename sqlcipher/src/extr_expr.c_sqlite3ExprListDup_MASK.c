#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct ExprList_item {int /*<<< orphan*/  u; int /*<<< orphan*/  bSorterRef; int /*<<< orphan*/  bSpanIsTab; scalar_t__ done; int /*<<< orphan*/  sortOrder; void* zSpan; void* zName; TYPE_2__* pExpr; } ;
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_10__ {scalar_t__ op; scalar_t__ iColumn; scalar_t__ pLeft; scalar_t__ pRight; } ;
struct TYPE_9__ {int nExpr; struct ExprList_item* a; } ;
typedef  TYPE_1__ ExprList ;
typedef  TYPE_2__ Expr ;

/* Variables and functions */
 scalar_t__ TK_SELECT_COLUMN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 void* FUNC3 (int /*<<< orphan*/ *,void*) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ *,TYPE_2__*,int) ; 

ExprList *FUNC5(sqlite3 *db, ExprList *p, int flags){
  ExprList *pNew;
  struct ExprList_item *pItem, *pOldItem;
  int i;
  Expr *pPriorSelectCol = 0;
  FUNC0( db!=0 );
  if( p==0 ) return 0;
  pNew = FUNC1(db, FUNC2(db, p));
  if( pNew==0 ) return 0;
  pNew->nExpr = p->nExpr;
  pItem = pNew->a;
  pOldItem = p->a;
  for(i=0; i<p->nExpr; i++, pItem++, pOldItem++){
    Expr *pOldExpr = pOldItem->pExpr;
    Expr *pNewExpr;
    pItem->pExpr = FUNC4(db, pOldExpr, flags);
    if( pOldExpr 
     && pOldExpr->op==TK_SELECT_COLUMN
     && (pNewExpr = pItem->pExpr)!=0 
    ){
      FUNC0( pNewExpr->iColumn==0 || i>0 );
      if( pNewExpr->iColumn==0 ){
        FUNC0( pOldExpr->pLeft==pOldExpr->pRight );
        pPriorSelectCol = pNewExpr->pLeft = pNewExpr->pRight;
      }else{
        FUNC0( i>0 );
        FUNC0( pItem[-1].pExpr!=0 );
        FUNC0( pNewExpr->iColumn==pItem[-1].pExpr->iColumn+1 );
        FUNC0( pPriorSelectCol==pItem[-1].pExpr->pLeft );
        pNewExpr->pLeft = pPriorSelectCol;
      }
    }
    pItem->zName = FUNC3(db, pOldItem->zName);
    pItem->zSpan = FUNC3(db, pOldItem->zSpan);
    pItem->sortOrder = pOldItem->sortOrder;
    pItem->done = 0;
    pItem->bSpanIsTab = pOldItem->bSpanIsTab;
    pItem->bSorterRef = pOldItem->bSorterRef;
    pItem->u = pOldItem->u;
  }
  return pNew;
}