#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_9__ ;
typedef  struct TYPE_27__   TYPE_8__ ;
typedef  struct TYPE_26__   TYPE_7__ ;
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_12__ ;
typedef  struct TYPE_18__   TYPE_11__ ;
typedef  struct TYPE_17__   TYPE_10__ ;

/* Type definitions */
struct TYPE_28__ {TYPE_8__* pEList; } ;
struct TYPE_27__ {TYPE_7__* a; } ;
struct TYPE_26__ {TYPE_12__* pExpr; } ;
struct TYPE_25__ {scalar_t__ pTab; } ;
struct TYPE_24__ {int /*<<< orphan*/  zToken; } ;
struct TYPE_23__ {TYPE_3__* pSelect; } ;
struct TYPE_22__ {TYPE_2__* pEList; } ;
struct TYPE_21__ {TYPE_1__* a; } ;
struct TYPE_20__ {TYPE_12__* pExpr; } ;
struct TYPE_19__ {int flags; int op; int op2; size_t iColumn; char affinity; TYPE_11__* pLeft; TYPE_6__ y; TYPE_5__ u; TYPE_4__ x; } ;
struct TYPE_17__ {TYPE_9__* pSelect; } ;
struct TYPE_18__ {int flags; TYPE_10__ x; } ;
typedef  TYPE_12__ Expr ;

/* Variables and functions */
 int EP_Generic ; 
 int /*<<< orphan*/  EP_IntValue ; 
 int EP_xIsSelect ; 
 int /*<<< orphan*/  FUNC0 (TYPE_12__*,int /*<<< orphan*/ ) ; 
 int TK_AGG_COLUMN ; 
 int TK_CAST ; 
 int TK_COLUMN ; 
 int TK_REGISTER ; 
 int TK_SELECT ; 
 int TK_SELECT_COLUMN ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 char FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_12__* FUNC3 (TYPE_12__*) ; 
 char FUNC4 (scalar_t__,size_t) ; 

char FUNC5(Expr *pExpr){
  int op;
  pExpr = FUNC3(pExpr);
  if( pExpr->flags & EP_Generic ) return 0;
  op = pExpr->op;
  if( op==TK_SELECT ){
    FUNC1( pExpr->flags&EP_xIsSelect );
    return FUNC5(pExpr->x.pSelect->pEList->a[0].pExpr);
  }
  if( op==TK_REGISTER ) op = pExpr->op2;
#ifndef SQLITE_OMIT_CAST
  if( op==TK_CAST ){
    FUNC1( !FUNC0(pExpr, EP_IntValue) );
    return FUNC2(pExpr->u.zToken, 0);
  }
#endif
  if( (op==TK_AGG_COLUMN || op==TK_COLUMN) && pExpr->y.pTab ){
    return FUNC4(pExpr->y.pTab, pExpr->iColumn);
  }
  if( op==TK_SELECT_COLUMN ){
    FUNC1( pExpr->pLeft->flags&EP_xIsSelect );
    return FUNC5(
        pExpr->pLeft->x.pSelect->pEList->a[pExpr->iColumn].pExpr
    );
  }
  return pExpr->affinity;
}