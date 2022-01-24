#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/  zType; TYPE_10__* pParse; } ;
struct TYPE_13__ {int /*<<< orphan*/  pList; int /*<<< orphan*/  pSelect; } ;
struct TYPE_16__ {scalar_t__ op; struct TYPE_16__* pLeft; struct TYPE_16__* pRight; TYPE_1__ x; } ;
struct TYPE_14__ {scalar_t__ busy; } ;
struct TYPE_15__ {TYPE_2__ init; } ;
struct TYPE_12__ {TYPE_3__* db; } ;
typedef  TYPE_4__ Expr ;
typedef  TYPE_5__ DbFixer ;

/* Variables and functions */
 int EP_Leaf ; 
 int EP_TokenOnly ; 
 int EP_xIsSelect ; 
 scalar_t__ FUNC0 (TYPE_4__*,int) ; 
 scalar_t__ TK_NULL ; 
 scalar_t__ TK_VARIABLE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_10__*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_5__*,int /*<<< orphan*/ ) ; 

int FUNC4(
  DbFixer *pFix,     /* Context of the fixation */
  Expr *pExpr        /* The expression to be fixed to one database */
){
  while( pExpr ){
    if( pExpr->op==TK_VARIABLE ){
      if( pFix->pParse->db->init.busy ){
        pExpr->op = TK_NULL;
      }else{
        FUNC1(pFix->pParse, "%s cannot use variables", pFix->zType);
        return 1;
      }
    }
    if( FUNC0(pExpr, EP_TokenOnly|EP_Leaf) ) break;
    if( FUNC0(pExpr, EP_xIsSelect) ){
      if( FUNC3(pFix, pExpr->x.pSelect) ) return 1;
    }else{
      if( FUNC2(pFix, pExpr->x.pList) ) return 1;
    }
    if( FUNC4(pFix, pExpr->pRight) ){
      return 1;
    }
    pExpr = pExpr->pLeft;
  }
  return 0;
}