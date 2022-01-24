#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_46__   TYPE_9__ ;
typedef  struct TYPE_45__   TYPE_8__ ;
typedef  struct TYPE_44__   TYPE_7__ ;
typedef  struct TYPE_43__   TYPE_6__ ;
typedef  struct TYPE_42__   TYPE_5__ ;
typedef  struct TYPE_41__   TYPE_4__ ;
typedef  struct TYPE_40__   TYPE_3__ ;
typedef  struct TYPE_39__   TYPE_2__ ;
typedef  struct TYPE_38__   TYPE_1__ ;

/* Type definitions */
struct ExprList_item {TYPE_9__* pExpr; } ;
typedef  int /*<<< orphan*/  Vdbe ;
struct TYPE_38__ {int regReturn; int iAddr; } ;
struct TYPE_39__ {TYPE_1__ sub; } ;
struct TYPE_40__ {TYPE_8__* pList; TYPE_5__* pSelect; } ;
struct TYPE_46__ {int iTable; TYPE_2__ y; struct TYPE_46__* pLeft; TYPE_3__ x; } ;
struct TYPE_45__ {int nExpr; struct ExprList_item* a; } ;
struct TYPE_44__ {int /*<<< orphan*/ * aColl; } ;
struct TYPE_43__ {scalar_t__ iSelfTab; int nMem; int /*<<< orphan*/  db; int /*<<< orphan*/ * pVdbe; } ;
struct TYPE_42__ {int selFlags; scalar_t__ iLimit; int /*<<< orphan*/  selId; TYPE_8__* pEList; } ;
struct TYPE_41__ {int /*<<< orphan*/  zAffSdst; } ;
typedef  TYPE_4__ SelectDest ;
typedef  TYPE_5__ Select ;
typedef  TYPE_6__ Parse ;
typedef  TYPE_7__ KeyInfo ;
typedef  TYPE_8__ ExprList ;
typedef  TYPE_9__ Expr ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  EP_Subrtn ; 
 int /*<<< orphan*/  EP_VarSelect ; 
 int /*<<< orphan*/  EP_xIsSelect ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*) ; 
 scalar_t__ FUNC2 (TYPE_9__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_9__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OP_Gosub ; 
 int /*<<< orphan*/  OP_IdxInsert ; 
 int /*<<< orphan*/  OP_Integer ; 
 int /*<<< orphan*/  OP_MakeRecord ; 
 int /*<<< orphan*/  OP_Once ; 
 int /*<<< orphan*/  OP_OpenDup ; 
 int /*<<< orphan*/  OP_OpenEphemeral ; 
 int /*<<< orphan*/  OP_Return ; 
 int /*<<< orphan*/  P4_KEYINFO ; 
 int SF_Distinct ; 
 char SQLITE_AFF_BLOB ; 
 int /*<<< orphan*/  SRT_Set ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*,TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*,TYPE_9__*,TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char FUNC10 (TYPE_9__*) ; 
 int FUNC11 (TYPE_6__*,TYPE_9__*,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_6__*,TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_9__*) ; 
 int FUNC14 (TYPE_9__*) ; 
 int FUNC15 (TYPE_6__*) ; 
 TYPE_7__* FUNC16 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC17 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_6__*,int) ; 
 scalar_t__ FUNC20 (TYPE_6__*,TYPE_5__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 int FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int,char*,int) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *,int,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC30 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *,int) ; 
 TYPE_9__* FUNC32 (TYPE_9__*,int) ; 
 int /*<<< orphan*/  FUNC33 (int) ; 

void FUNC34(
  Parse *pParse,          /* Parsing context */
  Expr *pExpr,            /* The IN operator */
  int iTab                /* Use this cursor number */
){
  int addrOnce = 0;           /* Address of the OP_Once instruction at top */
  int addr;                   /* Address of OP_OpenEphemeral instruction */
  Expr *pLeft;                /* the LHS of the IN operator */
  KeyInfo *pKeyInfo = 0;      /* Key information */
  int nVal;                   /* Size of vector pLeft */
  Vdbe *v;                    /* The prepared statement under construction */

  v = pParse->pVdbe;
  FUNC6( v!=0 );

  /* The evaluation of the IN must be repeated every time it
  ** is encountered if any of the following is true:
  **
  **    *  The right-hand side is a correlated subquery
  **    *  The right-hand side is an expression list containing variables
  **    *  We are inside a trigger
  **
  ** If all of the above are false, then we can compute the RHS just once
  ** and reuse it many names.
  */
  if( !FUNC2(pExpr, EP_VarSelect) && pParse->iSelfTab==0 ){
    /* Reuse of the RHS is allowed */
    /* If this routine has already been coded, but the previous code
    ** might not have been invoked yet, so invoke it now as a subroutine. 
    */
    if( FUNC2(pExpr, EP_Subrtn) ){
      addrOnce = FUNC22(v, OP_Once); FUNC5(v);
      if( FUNC2(pExpr, EP_xIsSelect) ){
        FUNC1((pParse, 0, "REUSE LIST SUBQUERY %d",
              pExpr->x.pSelect->selId));
      }
      FUNC24(v, OP_Gosub, pExpr->y.sub.regReturn,
                        pExpr->y.sub.iAddr);
      FUNC24(v, OP_OpenDup, iTab, pExpr->iTable);
      FUNC31(v, addrOnce);
      return;
    }

    /* Begin coding the subroutine */
    FUNC3(pExpr, EP_Subrtn);
    pExpr->y.sub.regReturn = ++pParse->nMem;
    pExpr->y.sub.iAddr =
      FUNC24(v, OP_Integer, 0, pExpr->y.sub.regReturn) + 1;
    FUNC4((v, "return address"));

    addrOnce = FUNC22(v, OP_Once); FUNC5(v);
  }

  /* Check to see if this is a vector IN operator */
  pLeft = pExpr->pLeft;
  nVal = FUNC14(pLeft);

  /* Construct the ephemeral table that will contain the content of
  ** RHS of the IN operator.
  */
  pExpr->iTable = iTab;
  addr = FUNC24(v, OP_OpenEphemeral, pExpr->iTable, nVal);
#ifdef SQLITE_ENABLE_EXPLAIN_COMMENTS
  if( ExprHasProperty(pExpr, EP_xIsSelect) ){
    VdbeComment((v, "Result of SELECT %u", pExpr->x.pSelect->selId));
  }else{
    VdbeComment((v, "RHS of IN operator"));
  }
#endif
  pKeyInfo = FUNC16(pParse->db, nVal, 1);

  if( FUNC2(pExpr, EP_xIsSelect) ){
    /* Case 1:     expr IN (SELECT ...)
    **
    ** Generate code to write the results of the select into the temporary
    ** table allocated and opened above.
    */
    Select *pSelect = pExpr->x.pSelect;
    ExprList *pEList = pSelect->pEList;

    FUNC1((pParse, 1, "%sLIST SUBQUERY %d",
        addrOnce?"":"CORRELATED ", pSelect->selId
    ));
    /* If the LHS and RHS of the IN operator do not match, that
    ** error will have been caught long before we reach this point. */
    if( FUNC0(pEList->nExpr==nVal) ){
      SelectDest dest;
      int i;
      FUNC21(&dest, SRT_Set, iTab);
      dest.zAffSdst = FUNC7(pParse, pExpr);
      pSelect->iLimit = 0;
      FUNC33( pSelect->selFlags & SF_Distinct );
      FUNC33( pKeyInfo==0 ); /* Caused by OOM in sqlite3KeyInfoAlloc() */
      if( FUNC20(pParse, pSelect, &dest) ){
        FUNC9(pParse->db, dest.zAffSdst);
        FUNC18(pKeyInfo);
        return;
      }
      FUNC9(pParse->db, dest.zAffSdst);
      FUNC6( pKeyInfo!=0 ); /* OOM will cause exit after sqlite3Select() */
      FUNC6( pEList!=0 );
      FUNC6( pEList->nExpr>0 );
      FUNC6( FUNC17(pKeyInfo) );
      for(i=0; i<nVal; i++){
        Expr *p = FUNC32(pLeft, i);
        pKeyInfo->aColl[i] = FUNC8(
            pParse, p, pEList->a[i].pExpr
        );
      }
    }
  }else if( FUNC0(pExpr->x.pList!=0) ){
    /* Case 2:     expr IN (exprlist)
    **
    ** For each expression, build an index key from the evaluation and
    ** store it in the temporary table. If <expr> is a column, then use
    ** that columns affinity when building index keys. If <expr> is not
    ** a column, use numeric affinity.
    */
    char affinity;            /* Affinity of the LHS of the IN */
    int i;
    ExprList *pList = pExpr->x.pList;
    struct ExprList_item *pItem;
    int r1, r2, r3;
    affinity = FUNC10(pLeft);
    if( !affinity ){
      affinity = SQLITE_AFF_BLOB;
    }
    if( pKeyInfo ){
      FUNC6( FUNC17(pKeyInfo) );
      pKeyInfo->aColl[0] = FUNC12(pParse, pExpr->pLeft);
    }

    /* Loop through each expression in <exprlist>. */
    r1 = FUNC15(pParse);
    r2 = FUNC15(pParse);
    for(i=pList->nExpr, pItem=pList->a; i>0; i--, pItem++){
      Expr *pE2 = pItem->pExpr;

      /* If the expression is not constant then we will need to
      ** disable the test that was generated above that makes sure
      ** this code only executes once.  Because for a non-constant
      ** expression we need to rerun this code each time.
      */
      if( addrOnce && !FUNC13(pE2) ){
        FUNC29(v, addrOnce);
        addrOnce = 0;
      }

      /* Evaluate the expression and insert it into the temp table */
      r3 = FUNC11(pParse, pE2, r1);
      FUNC25(v, OP_MakeRecord, r3, 1, r2, &affinity, 1);
      FUNC26(v, OP_IdxInsert, iTab, r2, r3, 1);
    }
    FUNC19(pParse, r1);
    FUNC19(pParse, r2);
  }
  if( pKeyInfo ){
    FUNC28(v, addr, (void *)pKeyInfo, P4_KEYINFO);
  }
  if( addrOnce ){
    FUNC31(v, addrOnce);
    /* Subroutine return */
    FUNC23(v, OP_Return, pExpr->y.sub.regReturn);
    FUNC27(v, pExpr->y.sub.iAddr-1, FUNC30(v)-1);
  }
}