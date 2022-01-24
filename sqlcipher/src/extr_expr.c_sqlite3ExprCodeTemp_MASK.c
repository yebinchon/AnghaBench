#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ op; } ;
typedef  int /*<<< orphan*/  Parse ;
typedef  TYPE_1__ Expr ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ TK_REGISTER ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 TYPE_1__* FUNC4 (TYPE_1__*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 

int FUNC7(Parse *pParse, Expr *pExpr, int *pReg){
  int r2;
  pExpr = FUNC4(pExpr);
  if( FUNC0(pParse)
   && pExpr->op!=TK_REGISTER
   && FUNC3(pExpr)
  ){
    *pReg  = 0;
    r2 = FUNC1(pParse, pExpr, -1);
  }else{
    int r1 = FUNC5(pParse);
    r2 = FUNC2(pParse, pExpr, r1);
    if( r2==r1 ){
      *pReg = r1;
    }else{
      FUNC6(pParse, r1);
      *pReg = 0;
    }
  }
  return r2;
}