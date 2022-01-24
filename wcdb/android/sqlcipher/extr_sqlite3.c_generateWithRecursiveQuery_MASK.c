#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_35__   TYPE_8__ ;
typedef  struct TYPE_34__   TYPE_7__ ;
typedef  struct TYPE_33__   TYPE_6__ ;
typedef  struct TYPE_32__   TYPE_5__ ;
typedef  struct TYPE_31__   TYPE_4__ ;
typedef  struct TYPE_30__   TYPE_3__ ;
typedef  struct TYPE_29__   TYPE_2__ ;
typedef  struct TYPE_28__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Vdbe ;
struct TYPE_35__ {int nExpr; } ;
struct TYPE_34__ {int nMem; int /*<<< orphan*/  db; int /*<<< orphan*/  nTab; int /*<<< orphan*/ * pVdbe; } ;
struct TYPE_33__ {int nSelectRow; int iLimit; int iOffset; scalar_t__ op; int selFlags; int /*<<< orphan*/ * pLimit; TYPE_8__* pOrderBy; struct TYPE_33__* pPrior; struct TYPE_33__* pNext; void** addrOpenEphm; scalar_t__ pWin; TYPE_1__* pEList; TYPE_4__* pSrc; } ;
struct TYPE_32__ {TYPE_8__* pOrderBy; } ;
struct TYPE_31__ {int nSrc; TYPE_3__* a; } ;
struct TYPE_29__ {scalar_t__ isRecursive; } ;
struct TYPE_30__ {int iCursor; TYPE_2__ fg; } ;
struct TYPE_28__ {int nExpr; } ;
typedef  TYPE_4__ SrcList ;
typedef  TYPE_5__ SelectDest ;
typedef  TYPE_6__ Select ;
typedef  TYPE_7__ Parse ;
typedef  int /*<<< orphan*/  KeyInfo ;
typedef  TYPE_8__ ExprList ;
typedef  int /*<<< orphan*/  Expr ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_7__*) ; 
 int /*<<< orphan*/  OP_Column ; 
 int /*<<< orphan*/  OP_DecrJumpZero ; 
 int /*<<< orphan*/  OP_Delete ; 
 int /*<<< orphan*/  OP_NullRow ; 
 int /*<<< orphan*/  OP_OpenEphemeral ; 
 int /*<<< orphan*/  OP_OpenPseudo ; 
 int /*<<< orphan*/  OP_Rewind ; 
 int /*<<< orphan*/  OP_RowData ; 
 int /*<<< orphan*/  P4_KEYINFO ; 
 int SF_Aggregate ; 
 int SF_UsesEphemeral ; 
 int /*<<< orphan*/  SQLITE_RECURSIVE ; 
 int SRT_DistFifo ; 
 int SRT_DistQueue ; 
 int SRT_Fifo ; 
 int SRT_Queue ; 
 scalar_t__ TK_UNION ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_7__*,TYPE_6__*,int) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_7__*,TYPE_6__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_7__*,TYPE_6__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_5__*,int,int) ; 
 scalar_t__ FUNC9 (TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_7__*,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,TYPE_8__*) ; 
 int FUNC12 (TYPE_7__*,TYPE_6__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_5__*,int,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 void* FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int) ; 
 int FUNC19 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC21(
  Parse *pParse,        /* Parsing context */
  Select *p,            /* The recursive SELECT to be coded */
  SelectDest *pDest     /* What to do with query results */
){
  SrcList *pSrc = p->pSrc;      /* The FROM clause of the recursive query */
  int nCol = p->pEList->nExpr;  /* Number of columns in the recursive table */
  Vdbe *v = pParse->pVdbe;      /* The prepared statement under construction */
  Select *pSetup = p->pPrior;   /* The setup query */
  int addrTop;                  /* Top of the loop */
  int addrCont, addrBreak;      /* CONTINUE and BREAK addresses */
  int iCurrent = 0;             /* The Current table */
  int regCurrent;               /* Register holding Current table */
  int iQueue;                   /* The Queue table */
  int iDistinct = 0;            /* To ensure unique results if UNION */
  int eDest = SRT_Fifo;         /* How to write to Queue */
  SelectDest destQueue;         /* SelectDest targetting the Queue table */
  int i;                        /* Loop counter */
  int rc;                       /* Result code */
  ExprList *pOrderBy;           /* The ORDER BY clause */
  Expr *pLimit;                 /* Saved LIMIT and OFFSET */
  int regLimit, regOffset;      /* Registers used by LIMIT and OFFSET */

#ifndef SQLITE_OMIT_WINDOWFUNC
  if( p->pWin ){
    FUNC10(pParse, "cannot use window functions in recursive queries");
    return;
  }
#endif

  /* Obtain authorization to do a recursive query */
  if( FUNC9(pParse, SQLITE_RECURSIVE, 0, 0, 0) ) return;

  /* Process the LIMIT and OFFSET clauses, if they exist */
  addrBreak = FUNC19(pParse);
  p->nSelectRow = 320;  /* 4 billion rows */
  FUNC6(pParse, p, addrBreak);
  pLimit = p->pLimit;
  regLimit = p->iLimit;
  regOffset = p->iOffset;
  p->pLimit = 0;
  p->iLimit = p->iOffset = 0;
  pOrderBy = p->pOrderBy;

  /* Locate the cursor number of the Current table */
  for(i=0; FUNC0(i<pSrc->nSrc); i++){
    if( pSrc->a[i].fg.isRecursive ){
      iCurrent = pSrc->a[i].iCursor;
      break;
    }
  }

  /* Allocate cursors numbers for Queue and Distinct.  The cursor number for
  ** the Distinct table must be exactly one greater than Queue in order
  ** for the SRT_DistFifo and SRT_DistQueue destinations to work. */
  iQueue = pParse->nTab++;
  if( p->op==TK_UNION ){
    eDest = pOrderBy ? SRT_DistQueue : SRT_DistFifo;
    iDistinct = pParse->nTab++;
  }else{
    eDest = pOrderBy ? SRT_Queue : SRT_Fifo;
  }
  FUNC13(&destQueue, eDest, iQueue);

  /* Allocate cursors for Current, Queue, and Distinct. */
  regCurrent = ++pParse->nMem;
  FUNC16(v, OP_OpenPseudo, iCurrent, regCurrent, nCol);
  if( pOrderBy ){
    KeyInfo *pKeyInfo = FUNC7(pParse, p, 1);
    FUNC17(v, OP_OpenEphemeral, iQueue, pOrderBy->nExpr+2, 0,
                      (char*)pKeyInfo, P4_KEYINFO);
    destQueue.pOrderBy = pOrderBy;
  }else{
    FUNC15(v, OP_OpenEphemeral, iQueue, nCol);
  }
  FUNC2((v, "Queue table"));
  if( iDistinct ){
    p->addrOpenEphm[0] = FUNC15(v, OP_OpenEphemeral, iDistinct, 0);
    p->selFlags |= SF_UsesEphemeral;
  }

  /* Detach the ORDER BY clause from the compound SELECT */
  p->pOrderBy = 0;

  /* Store the results of the setup-query in Queue. */
  pSetup->pNext = 0;
  FUNC1((pParse, 1, "SETUP"));
  rc = FUNC12(pParse, pSetup, &destQueue);
  pSetup->pNext = p;
  if( rc ) goto end_of_recursive_query;

  /* Find the next row in the Queue and output that row */
  addrTop = FUNC15(v, OP_Rewind, iQueue, addrBreak); FUNC3(v);

  /* Transfer the next row in Queue over to Current */
  FUNC14(v, OP_NullRow, iCurrent); /* To reset column cache */
  if( pOrderBy ){
    FUNC16(v, OP_Column, iQueue, pOrderBy->nExpr+1, regCurrent);
  }else{
    FUNC15(v, OP_RowData, iQueue, regCurrent);
  }
  FUNC14(v, OP_Delete, iQueue);

  /* Output the single row in Current */
  addrCont = FUNC19(pParse);
  FUNC5(v, regOffset, addrCont);
  FUNC8(pParse, p, iCurrent,
      0, 0, pDest, addrCont, addrBreak);
  if( regLimit ){
    FUNC15(v, OP_DecrJumpZero, regLimit, addrBreak);
    FUNC3(v);
  }
  FUNC20(v, addrCont);

  /* Execute the recursive SELECT taking the single row in Current as
  ** the value for the recursive-table. Store the results in the Queue.
  */
  if( p->selFlags & SF_Aggregate ){
    FUNC10(pParse, "recursive aggregate queries not supported");
  }else{
    p->pPrior = 0;
    FUNC1((pParse, 1, "RECURSIVE STEP"));
    FUNC12(pParse, p, &destQueue);
    FUNC4( p->pPrior==0 );
    p->pPrior = pSetup;
  }

  /* Keep running the loop until the Queue is empty */
  FUNC18(v, addrTop);
  FUNC20(v, addrBreak);

end_of_recursive_query:
  FUNC11(pParse->db, p->pOrderBy);
  p->pOrderBy = pOrderBy;
  p->pLimit = pLimit;
  return;
}