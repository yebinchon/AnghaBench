#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_39__   TYPE_9__ ;
typedef  struct TYPE_38__   TYPE_8__ ;
typedef  struct TYPE_37__   TYPE_7__ ;
typedef  struct TYPE_36__   TYPE_6__ ;
typedef  struct TYPE_35__   TYPE_5__ ;
typedef  struct TYPE_34__   TYPE_4__ ;
typedef  struct TYPE_33__   TYPE_3__ ;
typedef  struct TYPE_32__   TYPE_2__ ;
typedef  struct TYPE_31__   TYPE_1__ ;
typedef  struct TYPE_30__   TYPE_14__ ;
typedef  struct TYPE_29__   TYPE_13__ ;
typedef  struct TYPE_28__   TYPE_12__ ;
typedef  struct TYPE_27__   TYPE_11__ ;
typedef  struct TYPE_26__   TYPE_10__ ;

/* Type definitions */
struct TYPE_32__ {scalar_t__ viaCoroutine; } ;
struct SrcList_item {scalar_t__ iCursor; int /*<<< orphan*/  regResult; TYPE_2__ fg; TYPE_11__* pTab; } ;
struct InLoop {int addrInTop; scalar_t__ eEndLoopOp; int nPrefix; int iBase; int iCur; } ;
struct TYPE_36__ {int flags; int /*<<< orphan*/  mallocFailed; } ;
typedef  TYPE_6__ sqlite3 ;
struct TYPE_33__ {int nIdxCol; TYPE_14__* pIndex; } ;
struct TYPE_34__ {TYPE_3__ btree; } ;
struct TYPE_37__ {int wsFlags; TYPE_4__ u; } ;
typedef  TYPE_7__ WhereLoop ;
struct TYPE_31__ {scalar_t__ nIn; struct InLoop* aInLoop; } ;
struct TYPE_35__ {TYPE_14__* pCovidx; TYPE_1__ in; } ;
struct TYPE_38__ {scalar_t__ op; scalar_t__ iIdxCur; int p2; scalar_t__ p1; int p3; int addrSkip; int addrLikeRep; int iLikeRepCntr; scalar_t__ iLeftJoin; scalar_t__ iTabCur; size_t iFrom; int addrFirst; int addrBody; TYPE_5__ u; TYPE_7__* pWLoop; int /*<<< orphan*/  addrBrk; int /*<<< orphan*/  addrNxt; int /*<<< orphan*/  addrCont; int /*<<< orphan*/  p5; } ;
typedef  TYPE_8__ WhereLevel ;
struct TYPE_39__ {int nLevel; scalar_t__ eDistinct; int wctrlFlags; scalar_t__ eOnePass; scalar_t__* aiCurOnePass; int /*<<< orphan*/  savedNQueryLoop; TYPE_8__* a; int /*<<< orphan*/  iBreak; TYPE_12__* pTabList; TYPE_13__* pParse; } ;
typedef  TYPE_9__ WhereInfo ;
struct TYPE_26__ {scalar_t__ p1; scalar_t__ opcode; int p2; } ;
typedef  TYPE_10__ VdbeOp ;
typedef  int /*<<< orphan*/  Vdbe ;
struct TYPE_27__ {int tabFlags; scalar_t__ pSelect; int /*<<< orphan*/  zName; } ;
typedef  TYPE_11__ Table ;
struct TYPE_30__ {int* aiRowLogEst; int* aiColumn; TYPE_11__* pTable; int /*<<< orphan*/  zName; scalar_t__ hasStat1; } ;
struct TYPE_29__ {int nMem; int /*<<< orphan*/  nQueryLoop; TYPE_6__* db; int /*<<< orphan*/ * pVdbe; } ;
struct TYPE_28__ {int nSrc; struct SrcList_item* a; } ;
typedef  TYPE_12__ SrcList ;
typedef  TYPE_13__ Parse ;
typedef  TYPE_14__ Index ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_11__*) ; 
 scalar_t__ ONEPASS_OFF ; 
 int /*<<< orphan*/  OP_Close ; 
 scalar_t__ OP_Column ; 
 scalar_t__ OP_DecrJumpZero ; 
 scalar_t__ OP_Gosub ; 
 scalar_t__ OP_Goto ; 
 scalar_t__ OP_IdxRowid ; 
 int OP_IfNoHope ; 
 scalar_t__ OP_IfNullRow ; 
 int /*<<< orphan*/  OP_IfPos ; 
 scalar_t__ OP_Next ; 
 scalar_t__ OP_Noop ; 
 int /*<<< orphan*/  OP_NullRow ; 
 scalar_t__ OP_Offset ; 
 scalar_t__ OP_Prev ; 
 scalar_t__ OP_Return ; 
 scalar_t__ OP_Rowid ; 
 int OP_SeekGT ; 
 int OP_SeekLT ; 
 scalar_t__ OP_VNext ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*,int,TYPE_10__*) ; 
 int SQLITE_VdbeAddopTrace ; 
 int TF_Ephemeral ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int WHERE_AUTO_INDEX ; 
 scalar_t__ WHERE_DISTINCT_ORDERED ; 
 int WHERE_IDX_ONLY ; 
 int WHERE_INDEXED ; 
 int WHERE_IN_ABLE ; 
 int WHERE_IN_EARLYOUT ; 
 int WHERE_IPK ; 
 int WHERE_MULTI_OR ; 
 int WHERE_OR_SUBCLAUSE ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int FUNC8 (TYPE_14__*,int) ; 
 TYPE_14__* FUNC9 (TYPE_11__*) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,int,int) ; 
 int FUNC13 (int /*<<< orphan*/ *,int,scalar_t__,int,int,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ *) ; 
 TYPE_10__* FUNC16 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_13__*,int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_6__*,TYPE_9__*) ; 

void FUNC23(WhereInfo *pWInfo){
  Parse *pParse = pWInfo->pParse;
  Vdbe *v = pParse->pVdbe;
  int i;
  WhereLevel *pLevel;
  WhereLoop *pLoop;
  SrcList *pTabList = pWInfo->pTabList;
  sqlite3 *db = pParse->db;

  /* Generate loop termination code.
  */
  FUNC5((v, "End WHERE-core"));
  for(i=pWInfo->nLevel-1; i>=0; i--){
    int addr;
    pLevel = &pWInfo->a[i];
    pLoop = pLevel->pWLoop;
    if( pLevel->op!=OP_Noop ){
#ifndef SQLITE_DISABLE_SKIPAHEAD_DISTINCT
      int addrSeek = 0;
      Index *pIdx;
      int n;
      if( pWInfo->eDistinct==WHERE_DISTINCT_ORDERED
       && i==pWInfo->nLevel-1  /* Ticket [ef9318757b152e3] 2017-10-21 */
       && (pLoop->wsFlags & WHERE_INDEXED)!=0
       && (pIdx = pLoop->u.btree.pIndex)->hasStat1
       && (n = pLoop->u.btree.nIdxCol)>0
       && pIdx->aiRowLogEst[n]>=36
      ){
        int r1 = pParse->nMem+1;
        int j, op;
        for(j=0; j<n; j++){
          FUNC12(v, OP_Column, pLevel->iIdxCur, j, r1+j);
        }
        pParse->nMem += n+1;
        op = pLevel->op==OP_Prev ? OP_SeekLT : OP_SeekGT;
        addrSeek = FUNC13(v, op, pLevel->iIdxCur, 0, r1, n);
        FUNC4(v, op==OP_SeekLT);
        FUNC4(v, op==OP_SeekGT);
        FUNC11(v, OP_Goto, 1, pLevel->p2);
      }
#endif /* SQLITE_DISABLE_SKIPAHEAD_DISTINCT */
      /* The common case: Advance to the next row */
      FUNC19(v, pLevel->addrCont);
      FUNC12(v, pLevel->op, pLevel->p1, pLevel->p2, pLevel->p3);
      FUNC14(v, pLevel->p5);
      FUNC3(v);
      FUNC4(v, pLevel->op==OP_Next);
      FUNC4(v, pLevel->op==OP_Prev);
      FUNC4(v, pLevel->op==OP_VNext);
#ifndef SQLITE_DISABLE_SKIPAHEAD_DISTINCT
      if( addrSeek ) FUNC18(v, addrSeek);
#endif
    }else{
      FUNC19(v, pLevel->addrCont);
    }
    if( pLoop->wsFlags & WHERE_IN_ABLE && pLevel->u.in.nIn>0 ){
      struct InLoop *pIn;
      int j;
      FUNC19(v, pLevel->addrNxt);
      for(j=pLevel->u.in.nIn, pIn=&pLevel->u.in.aInLoop[j-1]; j>0; j--, pIn--){
        FUNC18(v, pIn->addrInTop+1);
        if( pIn->eEndLoopOp!=OP_Noop ){
          if( pIn->nPrefix ){
            FUNC6( pLoop->wsFlags & WHERE_IN_EARLYOUT );
            FUNC13(v, OP_IfNoHope, pLevel->iIdxCur,
                              FUNC15(v)+2,
                              pIn->iBase, pIn->nPrefix);
            FUNC3(v);
          }
          FUNC11(v, pIn->eEndLoopOp, pIn->iCur, pIn->addrInTop);
          FUNC3(v);
          FUNC4(v, pIn->eEndLoopOp==OP_Prev);
          FUNC4(v, pIn->eEndLoopOp==OP_Next);
        }
        FUNC18(v, pIn->addrInTop-1);
      }
    }
    FUNC19(v, pLevel->addrBrk);
    if( pLevel->addrSkip ){
      FUNC17(v, pLevel->addrSkip);
      FUNC2((v, "next skip-scan on %s", pLoop->u.btree.pIndex->zName));
      FUNC18(v, pLevel->addrSkip);
      FUNC18(v, pLevel->addrSkip-2);
    }
#ifndef SQLITE_LIKE_DOESNT_MATCH_BLOBS
    if( pLevel->addrLikeRep ){
      FUNC11(v, OP_DecrJumpZero, (int)(pLevel->iLikeRepCntr>>1),
                        pLevel->addrLikeRep);
      FUNC3(v);
    }
#endif
    if( pLevel->iLeftJoin ){
      int ws = pLoop->wsFlags;
      addr = FUNC10(v, OP_IfPos, pLevel->iLeftJoin); FUNC3(v);
      FUNC6( (ws & WHERE_IDX_ONLY)==0 || (ws & WHERE_INDEXED)!=0 );
      if( (ws & WHERE_IDX_ONLY)==0 ){
        FUNC6( pLevel->iTabCur==pTabList->a[pLevel->iFrom].iCursor );
        FUNC10(v, OP_NullRow, pLevel->iTabCur);
      }
      if( (ws & WHERE_INDEXED) 
       || ((ws & WHERE_MULTI_OR) && pLevel->u.pCovidx) 
      ){
        FUNC10(v, OP_NullRow, pLevel->iIdxCur);
      }
      if( pLevel->op==OP_Return ){
        FUNC11(v, OP_Gosub, pLevel->p1, pLevel->addrFirst);
      }else{
        FUNC17(v, pLevel->addrFirst);
      }
      FUNC18(v, addr);
    }
    FUNC5((v, "End WHERE-loop%d: %s", i,
                     pWInfo->pTabList->a[pLevel->iFrom].pTab->zName));
  }

  /* The "break" point is here, just past the end of the outer loop.
  ** Set it.
  */
  FUNC19(v, pWInfo->iBreak);

  FUNC6( pWInfo->nLevel<=pTabList->nSrc );
  for(i=0, pLevel=pWInfo->a; i<pWInfo->nLevel; i++, pLevel++){
    int k, last;
    VdbeOp *pOp;
    Index *pIdx = 0;
    struct SrcList_item *pTabItem = &pTabList->a[pLevel->iFrom];
    Table *pTab = pTabItem->pTab;
    FUNC6( pTab!=0 );
    pLoop = pLevel->pWLoop;

    /* For a co-routine, change all OP_Column references to the table of
    ** the co-routine into OP_Copy of result contained in a register.
    ** OP_Rowid becomes OP_Null.
    */
    if( pTabItem->fg.viaCoroutine ){
      FUNC20( pParse->db->mallocFailed );
      FUNC21(pParse, pLevel->addrBody, pLevel->iTabCur,
                            pTabItem->regResult, 0);
      continue;
    }

#ifdef SQLITE_ENABLE_EARLY_CURSOR_CLOSE
    /* Close all of the cursors that were opened by sqlite3WhereBegin.
    ** Except, do not close cursors that will be reused by the OR optimization
    ** (WHERE_OR_SUBCLAUSE).  And do not close the OP_OpenWrite cursors
    ** created for the ONEPASS optimization.
    */
    if( (pTab->tabFlags & TF_Ephemeral)==0
     && pTab->pSelect==0
     && (pWInfo->wctrlFlags & WHERE_OR_SUBCLAUSE)==0
    ){
      int ws = pLoop->wsFlags;
      if( pWInfo->eOnePass==ONEPASS_OFF && (ws & WHERE_IDX_ONLY)==0 ){
        sqlite3VdbeAddOp1(v, OP_Close, pTabItem->iCursor);
      }
      if( (ws & WHERE_INDEXED)!=0
       && (ws & (WHERE_IPK|WHERE_AUTO_INDEX))==0 
       && pLevel->iIdxCur!=pWInfo->aiCurOnePass[1]
      ){
        sqlite3VdbeAddOp1(v, OP_Close, pLevel->iIdxCur);
      }
    }
#endif

    /* If this scan uses an index, make VDBE code substitutions to read data
    ** from the index instead of from the table where possible.  In some cases
    ** this optimization prevents the table from ever being read, which can
    ** yield a significant performance boost.
    ** 
    ** Calls to the code generator in between sqlite3WhereBegin and
    ** sqlite3WhereEnd will have created code that references the table
    ** directly.  This loop scans all that code looking for opcodes
    ** that reference the table and converts them into opcodes that
    ** reference the index.
    */
    if( pLoop->wsFlags & (WHERE_INDEXED|WHERE_IDX_ONLY) ){
      pIdx = pLoop->u.btree.pIndex;
    }else if( pLoop->wsFlags & WHERE_MULTI_OR ){
      pIdx = pLevel->u.pCovidx;
    }
    if( pIdx
     && (pWInfo->eOnePass==ONEPASS_OFF || !FUNC0(pIdx->pTable))
     && !db->mallocFailed
    ){
      last = FUNC15(v);
      k = pLevel->addrBody;
#ifdef SQLITE_DEBUG
      if( db->flags & SQLITE_VdbeAddopTrace ){
        printf("TRANSLATE opcodes in range %d..%d\n", k, last-1);
      }
#endif
      pOp = FUNC16(v, k);
      for(; k<last; k++, pOp++){
        if( pOp->p1!=pLevel->iTabCur ) continue;
        if( pOp->opcode==OP_Column
#ifdef SQLITE_ENABLE_OFFSET_SQL_FUNC
         || pOp->opcode==OP_Offset
#endif
        ){
          int x = pOp->p2;
          FUNC6( pIdx->pTable==pTab );
          if( !FUNC0(pTab) ){
            Index *pPk = FUNC9(pTab);
            x = pPk->aiColumn[x];
            FUNC6( x>=0 );
          }
          x = FUNC8(pIdx, x);
          if( x>=0 ){
            pOp->p2 = x;
            pOp->p1 = pLevel->iIdxCur;
            FUNC1(db, k, pOp);
          }
          FUNC6( (pLoop->wsFlags & WHERE_IDX_ONLY)==0 || x>=0 
              || pWInfo->eOnePass );
        }else if( pOp->opcode==OP_Rowid ){
          pOp->p1 = pLevel->iIdxCur;
          pOp->opcode = OP_IdxRowid;
          FUNC1(db, k, pOp);
        }else if( pOp->opcode==OP_IfNullRow ){
          pOp->p1 = pLevel->iIdxCur;
          FUNC1(db, k, pOp);
        }
      }
#ifdef SQLITE_DEBUG
      if( db->flags & SQLITE_VdbeAddopTrace ) printf("TRANSLATE complete\n");
#endif
    }
  }

  /* Final cleanup
  */
  pParse->nQueryLoop = pWInfo->savedNQueryLoop;
  FUNC22(db, pWInfo);
  return;
}