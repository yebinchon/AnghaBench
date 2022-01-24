#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ eStart; TYPE_4__* pFunc; int /*<<< orphan*/  regResult; int /*<<< orphan*/  regAccum; scalar_t__ regApp; int /*<<< orphan*/  csrApp; struct TYPE_5__* pNextWin; } ;
typedef  TYPE_1__ Window ;
typedef  int /*<<< orphan*/  Vdbe ;
struct TYPE_6__ {int funcFlags; } ;
typedef  int /*<<< orphan*/  Parse ;

/* Variables and functions */
 int /*<<< orphan*/  OP_AggFinal ; 
 int /*<<< orphan*/  OP_AggValue ; 
 int /*<<< orphan*/  OP_Column ; 
 int /*<<< orphan*/  OP_Copy ; 
 int /*<<< orphan*/  OP_Last ; 
 int /*<<< orphan*/  OP_Null ; 
 int /*<<< orphan*/  OP_ResetSorter ; 
 int /*<<< orphan*/  P4_FUNCDEF ; 
 int SQLITE_FUNC_MINMAX ; 
 scalar_t__ TK_UNBOUNDED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC9(Parse *pParse, Window *pMWin, int bFinal){
  Vdbe *v = FUNC1(pParse);
  Window *pWin;

  for(pWin=pMWin; pWin; pWin=pWin->pNextWin){
    if( (pWin->pFunc->funcFlags & SQLITE_FUNC_MINMAX) 
     && pWin->eStart!=TK_UNBOUNDED 
    ){
      FUNC3(v, OP_Null, 0, pWin->regResult);
      FUNC2(v, OP_Last, pWin->csrApp);
      FUNC0(v);
      FUNC4(v, OP_Column, pWin->csrApp, 0, pWin->regResult);
      FUNC7(v, FUNC6(v)-2);
      if( bFinal ){
        FUNC2(v, OP_ResetSorter, pWin->csrApp);
      }
    }else if( pWin->regApp ){
    }else{
      if( bFinal ){
        FUNC3(v, OP_AggFinal, pWin->regAccum, FUNC8(pWin));
        FUNC5(v, pWin->pFunc, P4_FUNCDEF);
        FUNC3(v, OP_Copy, pWin->regAccum, pWin->regResult);
        FUNC3(v, OP_Null, 0, pWin->regAccum);
      }else{
        FUNC4(v, OP_AggValue, pWin->regAccum, FUNC8(pWin),
                             pWin->regResult);
        FUNC5(v, pWin->pFunc, P4_FUNCDEF);
      }
    }
  }
}