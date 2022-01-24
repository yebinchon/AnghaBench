#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int iConstExprReg; } ;
struct ExprList_item {int reusable; TYPE_1__ u; int /*<<< orphan*/  pExpr; } ;
struct TYPE_11__ {int nExpr; struct ExprList_item* a; } ;
struct TYPE_10__ {int nMem; TYPE_3__* pConstExpr; int /*<<< orphan*/  db; } ;
typedef  TYPE_2__ Parse ;
typedef  TYPE_3__ ExprList ;
typedef  int /*<<< orphan*/  Expr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC4 (TYPE_2__*,TYPE_3__*,int /*<<< orphan*/ *) ; 

int FUNC5(
  Parse *pParse,    /* Parsing context */
  Expr *pExpr,      /* The expression to code when the VDBE initializes */
  int regDest       /* Store the value in this register */
){
  ExprList *p;
  FUNC1( FUNC0(pParse) );
  p = pParse->pConstExpr;
  if( regDest<0 && p ){
    struct ExprList_item *pItem;
    int i;
    for(pItem=p->a, i=p->nExpr; i>0; pItem++, i--){
      if( pItem->reusable && FUNC2(0,pItem->pExpr,pExpr,-1)==0 ){
        return pItem->u.iConstExprReg;
      }
    }
  }
  pExpr = FUNC3(pParse->db, pExpr, 0);
  p = FUNC4(pParse, p, pExpr);
  if( p ){
     struct ExprList_item *pItem = &p->a[p->nExpr-1];
     pItem->reusable = regDest<0;
     if( regDest<0 ) regDest = ++pParse->nMem;
     pItem->u.iConstExprReg = regDest;
  }
  pParse->pConstExpr = p;
  return regDest;
}