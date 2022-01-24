#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int csrApp; int regResult; int iEphCsr; int iArgCol; int regApp; TYPE_3__* pOwner; TYPE_5__* pFunc; struct TYPE_10__* pNextWin; } ;
typedef  TYPE_4__ Window ;
typedef  int /*<<< orphan*/  Vdbe ;
struct TYPE_11__ {scalar_t__ zName; } ;
struct TYPE_8__ {TYPE_1__* pList; } ;
struct TYPE_9__ {TYPE_2__ x; } ;
struct TYPE_7__ {int nExpr; } ;
typedef  int /*<<< orphan*/  Parse ;
typedef  TYPE_5__ FuncDef ;

/* Variables and functions */
 int OP_Add ; 
 int /*<<< orphan*/  OP_AddImm ; 
 int OP_Column ; 
 int /*<<< orphan*/  OP_Gosub ; 
 int OP_Gt ; 
 int /*<<< orphan*/  OP_Integer ; 
 int /*<<< orphan*/  OP_Null ; 
 int /*<<< orphan*/  OP_Rowid ; 
 int OP_SeekRowid ; 
 int OP_Subtract ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ first_valueName ; 
 scalar_t__ lagName ; 
 scalar_t__ leadName ; 
 scalar_t__ nth_valueName ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int,int,int) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static void FUNC11(
  Parse *pParse,
  Window *pMWin,
  int regGosub,
  int addrGosub
){
  Vdbe *v = FUNC4(pParse);
  Window *pWin;
  for(pWin=pMWin; pWin; pWin=pWin->pNextWin){
    FuncDef *pFunc = pWin->pFunc;
    if( pFunc->zName==nth_valueName
     || pFunc->zName==first_valueName
    ){
      int csr = pWin->csrApp;
      int lbl = FUNC8(pParse);
      int tmpReg = FUNC3(pParse);
      FUNC6(v, OP_Null, 0, pWin->regResult);

      if( pFunc->zName==nth_valueName ){
        FUNC7(v, OP_Column, pMWin->iEphCsr, pWin->iArgCol+1,tmpReg);
        FUNC10(pParse, tmpReg, 2);
      }else{
        FUNC6(v, OP_Integer, 1, tmpReg);
      }
      FUNC7(v, OP_Add, tmpReg, pWin->regApp, tmpReg);
      FUNC7(v, OP_Gt, pWin->regApp+1, lbl, tmpReg);
      FUNC1(v);
      FUNC7(v, OP_SeekRowid, csr, 0, tmpReg);
      FUNC2(v);
      FUNC7(v, OP_Column, csr, pWin->iArgCol, pWin->regResult);
      FUNC9(v, lbl);
      FUNC5(pParse, tmpReg);
    }
    else if( pFunc->zName==leadName || pFunc->zName==lagName ){
      int nArg = pWin->pOwner->x.pList->nExpr;
      int iEph = pMWin->iEphCsr;
      int csr = pWin->csrApp;
      int lbl = FUNC8(pParse);
      int tmpReg = FUNC3(pParse);

      if( nArg<3 ){
        FUNC6(v, OP_Null, 0, pWin->regResult);
      }else{
        FUNC7(v, OP_Column, iEph, pWin->iArgCol+2, pWin->regResult);
      }
      FUNC6(v, OP_Rowid, iEph, tmpReg);
      if( nArg<2 ){
        int val = (pFunc->zName==leadName ? 1 : -1);
        FUNC6(v, OP_AddImm, tmpReg, val);
      }else{
        int op = (pFunc->zName==leadName ? OP_Add : OP_Subtract);
        int tmpReg2 = FUNC3(pParse);
        FUNC7(v, OP_Column, iEph, pWin->iArgCol+1, tmpReg2);
        FUNC7(v, op, tmpReg2, tmpReg, tmpReg);
        FUNC5(pParse, tmpReg2);
      }

      FUNC7(v, OP_SeekRowid, csr, lbl, tmpReg);
      FUNC0(v);
      FUNC7(v, OP_Column, csr, pWin->iArgCol, pWin->regResult);
      FUNC9(v, lbl);
      FUNC5(pParse, tmpReg);
    }
  }
  FUNC6(v, OP_Gosub, regGosub, addrGosub);
}