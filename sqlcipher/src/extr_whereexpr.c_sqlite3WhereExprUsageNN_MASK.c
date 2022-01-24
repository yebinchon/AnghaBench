#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int bVarSelect; } ;
typedef  TYPE_4__ WhereMaskSet ;
struct TYPE_14__ {TYPE_2__* pWin; } ;
struct TYPE_12__ {scalar_t__ pList; int /*<<< orphan*/  pSelect; } ;
struct TYPE_16__ {scalar_t__ op; TYPE_3__ y; TYPE_1__ x; struct TYPE_16__* pRight; struct TYPE_16__* pLeft; int /*<<< orphan*/  iTable; } ;
struct TYPE_13__ {scalar_t__ pPartition; scalar_t__ pOrderBy; } ;
typedef  TYPE_5__ Expr ;
typedef  int /*<<< orphan*/  Bitmask ;

/* Variables and functions */
 int EP_FixedCol ; 
 int EP_Leaf ; 
 int EP_TokenOnly ; 
 int EP_VarSelect ; 
 int EP_xIsSelect ; 
 scalar_t__ FUNC0 (TYPE_5__*,int) ; 
 scalar_t__ TK_COLUMN ; 
 scalar_t__ TK_FUNCTION ; 
 scalar_t__ TK_IF_NULL_ROW ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ ) ; 

Bitmask FUNC5(WhereMaskSet *pMaskSet, Expr *p){
  Bitmask mask;
  if( p->op==TK_COLUMN && !FUNC0(p, EP_FixedCol) ){
    return FUNC4(pMaskSet, p->iTable);
  }else if( FUNC0(p, EP_TokenOnly|EP_Leaf) ){
    FUNC1( p->op!=TK_IF_NULL_ROW );
    return 0;
  }
  mask = (p->op==TK_IF_NULL_ROW) ? FUNC4(pMaskSet, p->iTable) : 0;
  if( p->pLeft ) mask |= FUNC5(pMaskSet, p->pLeft);
  if( p->pRight ){
    mask |= FUNC5(pMaskSet, p->pRight);
    FUNC1( p->x.pList==0 );
  }else if( FUNC0(p, EP_xIsSelect) ){
    if( FUNC0(p, EP_VarSelect) ) pMaskSet->bVarSelect = 1;
    mask |= FUNC2(pMaskSet, p->x.pSelect);
  }else if( p->x.pList ){
    mask |= FUNC3(pMaskSet, p->x.pList);
  }
#ifndef SQLITE_OMIT_WINDOWFUNC
  if( p->op==TK_FUNCTION && p->y.pWin ){
    mask |= FUNC3(pMaskSet, p->y.pWin->pPartition);
    mask |= FUNC3(pMaskSet, p->y.pWin->pOrderBy);
  }
#endif
  return mask;
}