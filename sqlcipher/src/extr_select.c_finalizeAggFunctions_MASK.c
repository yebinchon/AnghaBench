#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct AggInfo_func {int /*<<< orphan*/  pFunc; int /*<<< orphan*/  iMem; TYPE_7__* pExpr; } ;
typedef  int /*<<< orphan*/  Vdbe ;
struct TYPE_8__ {TYPE_3__* pList; } ;
struct TYPE_12__ {TYPE_1__ x; } ;
struct TYPE_11__ {int nFunc; struct AggInfo_func* aFunc; } ;
struct TYPE_10__ {int /*<<< orphan*/  nExpr; } ;
struct TYPE_9__ {int /*<<< orphan*/ * pVdbe; } ;
typedef  TYPE_2__ Parse ;
typedef  TYPE_3__ ExprList ;
typedef  TYPE_4__ AggInfo ;

/* Variables and functions */
 int /*<<< orphan*/  EP_xIsSelect ; 
 int /*<<< orphan*/  FUNC0 (TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OP_AggFinal ; 
 int /*<<< orphan*/  P4_FUNCDEF ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(Parse *pParse, AggInfo *pAggInfo){
  Vdbe *v = pParse->pVdbe;
  int i;
  struct AggInfo_func *pF;
  for(i=0, pF=pAggInfo->aFunc; i<pAggInfo->nFunc; i++, pF++){
    ExprList *pList = pF->pExpr->x.pList;
    FUNC1( !FUNC0(pF->pExpr, EP_xIsSelect) );
    FUNC2(v, OP_AggFinal, pF->iMem, pList ? pList->nExpr : 0);
    FUNC3(v, pF->pFunc, P4_FUNCDEF);
  }
}