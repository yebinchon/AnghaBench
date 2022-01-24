#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_32__   TYPE_8__ ;
typedef  struct TYPE_31__   TYPE_7__ ;
typedef  struct TYPE_30__   TYPE_6__ ;
typedef  struct TYPE_29__   TYPE_5__ ;
typedef  struct TYPE_28__   TYPE_4__ ;
typedef  struct TYPE_27__   TYPE_3__ ;
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_1__ ;
typedef  struct TYPE_24__   TYPE_13__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Vdbe ;
struct TYPE_27__ {int regReturn; int iAddr; } ;
struct TYPE_28__ {TYPE_3__ sub; } ;
struct TYPE_25__ {TYPE_6__* pSelect; } ;
struct TYPE_32__ {scalar_t__ op; int iTable; TYPE_4__ y; TYPE_1__ x; } ;
struct TYPE_31__ {int nMem; int /*<<< orphan*/  db; int /*<<< orphan*/ * pVdbe; } ;
struct TYPE_30__ {scalar_t__ iLimit; TYPE_13__* pLimit; TYPE_2__* pEList; int /*<<< orphan*/  selId; } ;
struct TYPE_29__ {int iSdst; int iSDParm; int nSdst; int /*<<< orphan*/  eDest; } ;
struct TYPE_26__ {int nExpr; } ;
struct TYPE_24__ {TYPE_8__* pLeft; } ;
typedef  TYPE_5__ SelectDest ;
typedef  TYPE_6__ Select ;
typedef  TYPE_7__ Parse ;
typedef  TYPE_8__ Expr ;

/* Variables and functions */
 int /*<<< orphan*/  EP_NoReduce ; 
 int /*<<< orphan*/  EP_Subrtn ; 
 int /*<<< orphan*/  EP_VarSelect ; 
 int /*<<< orphan*/  EP_xIsSelect ; 
 int /*<<< orphan*/  FUNC0 (TYPE_7__*) ; 
 int FUNC1 (TYPE_8__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_8__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_8__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OP_Gosub ; 
 int /*<<< orphan*/  OP_Integer ; 
 int /*<<< orphan*/  OP_Null ; 
 int /*<<< orphan*/  OP_Once ; 
 int /*<<< orphan*/  OP_Return ; 
 int /*<<< orphan*/  SRT_Exists ; 
 int /*<<< orphan*/  SRT_Mem ; 
 scalar_t__ TK_EXISTS ; 
 int /*<<< orphan*/  TK_INTEGER ; 
 int /*<<< orphan*/  TK_LIMIT ; 
 scalar_t__ TK_SELECT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 TYPE_8__* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_8__*) ; 
 int /*<<< orphan*/ * sqlite3IntTokens ; 
 TYPE_13__* FUNC9 (TYPE_7__*,int /*<<< orphan*/ ,TYPE_8__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (TYPE_7__*,TYPE_6__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int,scalar_t__) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC19 (int) ; 

int FUNC20(Parse *pParse, Expr *pExpr){
  int addrOnce = 0;           /* Address of OP_Once at top of subroutine */
  int rReg = 0;               /* Register storing resulting */
  Select *pSel;               /* SELECT statement to encode */
  SelectDest dest;            /* How to deal with SELECT result */
  int nReg;                   /* Registers to allocate */
  Expr *pLimit;               /* New limit expression */

  Vdbe *v = pParse->pVdbe;
  FUNC6( v!=0 );
  FUNC19( pExpr->op==TK_EXISTS );
  FUNC19( pExpr->op==TK_SELECT );
  FUNC6( pExpr->op==TK_EXISTS || pExpr->op==TK_SELECT );
  FUNC6( FUNC1(pExpr, EP_xIsSelect) );
  pSel = pExpr->x.pSelect;

  /* The evaluation of the EXISTS/SELECT must be repeated every time it
  ** is encountered if any of the following is true:
  **
  **    *  The right-hand side is a correlated subquery
  **    *  The right-hand side is an expression list containing variables
  **    *  We are inside a trigger
  **
  ** If all of the above are false, then we can run this code just once
  ** save the results, and reuse the same result on subsequent invocations.
  */
  if( !FUNC1(pExpr, EP_VarSelect) ){
    /* If this routine has already been coded, then invoke it as a
    ** subroutine. */
    if( FUNC1(pExpr, EP_Subrtn) ){
      FUNC0((pParse, 0, "REUSE SUBQUERY %d", pSel->selId));
      FUNC14(v, OP_Gosub, pExpr->y.sub.regReturn,
                        pExpr->y.sub.iAddr);
      return pExpr->iTable;
    }

    /* Begin coding the subroutine */
    FUNC2(pExpr, EP_Subrtn);
    pExpr->y.sub.regReturn = ++pParse->nMem;
    pExpr->y.sub.iAddr =
      FUNC14(v, OP_Integer, 0, pExpr->y.sub.regReturn) + 1;
    FUNC4((v, "return address"));

    addrOnce = FUNC12(v, OP_Once); FUNC5(v);
  }
  
  /* For a SELECT, generate code to put the values for all columns of
  ** the first row into an array of registers and return the index of
  ** the first register.
  **
  ** If this is an EXISTS, write an integer 0 (not exists) or 1 (exists)
  ** into a register and return that register number.
  **
  ** In both cases, the query is augmented with "LIMIT 1".  Any 
  ** preexisting limit is discarded in place of the new LIMIT 1.
  */
  FUNC0((pParse, 1, "%sSCALAR SUBQUERY %d",
        addrOnce?"":"CORRELATED ", pSel->selId));
  nReg = pExpr->op==TK_SELECT ? pSel->pEList->nExpr : 1;
  FUNC11(&dest, 0, pParse->nMem+1);
  pParse->nMem += nReg;
  if( pExpr->op==TK_SELECT ){
    dest.eDest = SRT_Mem;
    dest.iSdst = dest.iSDParm;
    dest.nSdst = nReg;
    FUNC15(v, OP_Null, 0, dest.iSDParm, dest.iSDParm+nReg-1);
    FUNC4((v, "Init subquery result"));
  }else{
    dest.eDest = SRT_Exists;
    FUNC14(v, OP_Integer, 0, dest.iSDParm);
    FUNC4((v, "Init EXISTS result"));
  }
  pLimit = FUNC7(pParse->db, TK_INTEGER,&sqlite3IntTokens[1], 0);
  if( pSel->pLimit ){
    FUNC8(pParse->db, pSel->pLimit->pLeft);
    pSel->pLimit->pLeft = pLimit;
  }else{
    pSel->pLimit = FUNC9(pParse, TK_LIMIT, pLimit, 0);
  }
  pSel->iLimit = 0;
  if( FUNC10(pParse, pSel, &dest) ){
    return 0;
  }
  pExpr->iTable = rReg = dest.iSDParm;
  FUNC3(pExpr, EP_NoReduce);
  if( addrOnce ){
    FUNC18(v, addrOnce);

    /* Subroutine return */
    FUNC13(v, OP_Return, pExpr->y.sub.regReturn);
    FUNC16(v, pExpr->y.sub.iAddr-1, FUNC17(v)-1);
  }

  return rReg;
}