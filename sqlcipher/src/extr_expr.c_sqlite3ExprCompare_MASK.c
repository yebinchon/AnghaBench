#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_12__ {int /*<<< orphan*/  pList; } ;
struct TYPE_11__ {scalar_t__ iValue; scalar_t__ zToken; } ;
struct TYPE_10__ {int /*<<< orphan*/  pWin; } ;
struct TYPE_13__ {scalar_t__ op; int flags; scalar_t__ iColumn; int iTable; TYPE_3__ x; struct TYPE_13__* pRight; struct TYPE_13__* pLeft; TYPE_2__ u; TYPE_1__ y; } ;
typedef  int /*<<< orphan*/  Parse ;
typedef  TYPE_4__ Expr ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int EP_Distinct ; 
 int EP_FixedCol ; 
 int EP_IntValue ; 
 int EP_Reduced ; 
 int EP_TokenOnly ; 
 int /*<<< orphan*/  EP_WinFunc ; 
 int EP_xIsSelect ; 
 scalar_t__ FUNC1 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ TK_AGG_COLUMN ; 
 scalar_t__ TK_COLLATE ; 
 scalar_t__ TK_COLUMN ; 
 scalar_t__ TK_FUNCTION ; 
 scalar_t__ TK_NULL ; 
 scalar_t__ TK_RAISE ; 
 scalar_t__ TK_STRING ; 
 scalar_t__ TK_TRUEFALSE ; 
 scalar_t__ TK_VARIABLE ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,TYPE_4__*,TYPE_4__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__,scalar_t__) ; 

int FUNC10(Parse *pParse, Expr *pA, Expr *pB, int iTab){
  u32 combinedFlags;
  if( pA==0 || pB==0 ){
    return pB==pA ? 0 : 2;
  }
  if( pParse && pA->op==TK_VARIABLE && FUNC4(pParse, pA, pB) ){
    return 0;
  }
  combinedFlags = pA->flags | pB->flags;
  if( combinedFlags & EP_IntValue ){
    if( (pA->flags&pB->flags&EP_IntValue)!=0 && pA->u.iValue==pB->u.iValue ){
      return 0;
    }
    return 2;
  }
  if( pA->op!=pB->op || pA->op==TK_RAISE ){
    if( pA->op==TK_COLLATE && FUNC10(pParse, pA->pLeft,pB,iTab)<2 ){
      return 1;
    }
    if( pB->op==TK_COLLATE && FUNC10(pParse, pA,pB->pLeft,iTab)<2 ){
      return 1;
    }
    return 2;
  }
  if( pA->op!=TK_COLUMN && pA->op!=TK_AGG_COLUMN && pA->u.zToken ){
    if( pA->op==TK_FUNCTION ){
      if( FUNC6(pA->u.zToken,pB->u.zToken)!=0 ) return 2;
#ifndef SQLITE_OMIT_WINDOWFUNC
      /* Justification for the assert():
      ** window functions have p->op==TK_FUNCTION but aggregate functions
      ** have p->op==TK_AGG_FUNCTION.  So any comparison between an aggregate
      ** function and a window function should have failed before reaching
      ** this point.  And, it is not possible to have a window function and
      ** a scalar function with the same name and number of arguments.  So
      ** if we reach this point, either A and B both window functions or
      ** neither are a window functions. */
      FUNC3( FUNC1(pA,EP_WinFunc)==FUNC1(pB,EP_WinFunc) );
      if( FUNC1(pA,EP_WinFunc) ){
        if( FUNC7(pParse,pA->y.pWin,pB->y.pWin)!=0 ) return 2;
      }
#endif
    }else if( pA->op==TK_NULL ){
      return 0;
    }else if( pA->op==TK_COLLATE ){
      if( FUNC8(pA->u.zToken,pB->u.zToken)!=0 ) return 2;
    }else if( FUNC0(pB->u.zToken!=0) && FUNC9(pA->u.zToken,pB->u.zToken)!=0 ){
      return 2;
    }
  }
  if( (pA->flags & EP_Distinct)!=(pB->flags & EP_Distinct) ) return 2;
  if( (combinedFlags & EP_TokenOnly)==0 ){
    if( combinedFlags & EP_xIsSelect ) return 2;
    if( (combinedFlags & EP_FixedCol)==0
     && FUNC10(pParse, pA->pLeft, pB->pLeft, iTab) ) return 2;
    if( FUNC10(pParse, pA->pRight, pB->pRight, iTab) ) return 2;
    if( FUNC5(pA->x.pList, pB->x.pList, iTab) ) return 2;
    if( pA->op!=TK_STRING
     && pA->op!=TK_TRUEFALSE
     && (combinedFlags & EP_Reduced)==0
    ){
      if( pA->iColumn!=pB->iColumn ) return 2;
      if( pA->iTable!=pB->iTable 
       && (pA->iTable!=iTab || FUNC2(pB->iTable>=0)) ) return 2;
    }
  }
  return 0;
}