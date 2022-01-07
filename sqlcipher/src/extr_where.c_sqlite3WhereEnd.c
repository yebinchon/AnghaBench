
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_39__ TYPE_9__ ;
typedef struct TYPE_38__ TYPE_8__ ;
typedef struct TYPE_37__ TYPE_7__ ;
typedef struct TYPE_36__ TYPE_6__ ;
typedef struct TYPE_35__ TYPE_5__ ;
typedef struct TYPE_34__ TYPE_4__ ;
typedef struct TYPE_33__ TYPE_3__ ;
typedef struct TYPE_32__ TYPE_2__ ;
typedef struct TYPE_31__ TYPE_1__ ;
typedef struct TYPE_30__ TYPE_14__ ;
typedef struct TYPE_29__ TYPE_13__ ;
typedef struct TYPE_28__ TYPE_12__ ;
typedef struct TYPE_27__ TYPE_11__ ;
typedef struct TYPE_26__ TYPE_10__ ;


struct TYPE_32__ {scalar_t__ viaCoroutine; } ;
struct SrcList_item {scalar_t__ iCursor; int regResult; TYPE_2__ fg; TYPE_11__* pTab; } ;
struct InLoop {int addrInTop; scalar_t__ eEndLoopOp; int nPrefix; int iBase; int iCur; } ;
struct TYPE_36__ {int flags; int mallocFailed; } ;
typedef TYPE_6__ sqlite3 ;
struct TYPE_33__ {int nIdxCol; TYPE_14__* pIndex; } ;
struct TYPE_34__ {TYPE_3__ btree; } ;
struct TYPE_37__ {int wsFlags; TYPE_4__ u; } ;
typedef TYPE_7__ WhereLoop ;
struct TYPE_31__ {scalar_t__ nIn; struct InLoop* aInLoop; } ;
struct TYPE_35__ {TYPE_14__* pCovidx; TYPE_1__ in; } ;
struct TYPE_38__ {scalar_t__ op; scalar_t__ iIdxCur; int p2; scalar_t__ p1; int p3; int addrSkip; int addrLikeRep; int iLikeRepCntr; scalar_t__ iLeftJoin; scalar_t__ iTabCur; size_t iFrom; int addrFirst; int addrBody; TYPE_5__ u; TYPE_7__* pWLoop; int addrBrk; int addrNxt; int addrCont; int p5; } ;
typedef TYPE_8__ WhereLevel ;
struct TYPE_39__ {int nLevel; scalar_t__ eDistinct; int wctrlFlags; scalar_t__ eOnePass; scalar_t__* aiCurOnePass; int savedNQueryLoop; TYPE_8__* a; int iBreak; TYPE_12__* pTabList; TYPE_13__* pParse; } ;
typedef TYPE_9__ WhereInfo ;
struct TYPE_26__ {scalar_t__ p1; scalar_t__ opcode; int p2; } ;
typedef TYPE_10__ VdbeOp ;
typedef int Vdbe ;
struct TYPE_27__ {int tabFlags; scalar_t__ pSelect; int zName; } ;
typedef TYPE_11__ Table ;
struct TYPE_30__ {int* aiRowLogEst; int* aiColumn; TYPE_11__* pTable; int zName; scalar_t__ hasStat1; } ;
struct TYPE_29__ {int nMem; int nQueryLoop; TYPE_6__* db; int * pVdbe; } ;
struct TYPE_28__ {int nSrc; struct SrcList_item* a; } ;
typedef TYPE_12__ SrcList ;
typedef TYPE_13__ Parse ;
typedef TYPE_14__ Index ;


 int HasRowid (TYPE_11__*) ;
 scalar_t__ ONEPASS_OFF ;
 int OP_Close ;
 scalar_t__ OP_Column ;
 scalar_t__ OP_DecrJumpZero ;
 scalar_t__ OP_Gosub ;
 scalar_t__ OP_Goto ;
 scalar_t__ OP_IdxRowid ;
 int OP_IfNoHope ;
 scalar_t__ OP_IfNullRow ;
 int OP_IfPos ;
 scalar_t__ OP_Next ;
 scalar_t__ OP_Noop ;
 int OP_NullRow ;
 scalar_t__ OP_Offset ;
 scalar_t__ OP_Prev ;
 scalar_t__ OP_Return ;
 scalar_t__ OP_Rowid ;
 int OP_SeekGT ;
 int OP_SeekLT ;
 scalar_t__ OP_VNext ;
 int OpcodeRewriteTrace (TYPE_6__*,int,TYPE_10__*) ;
 int SQLITE_VdbeAddopTrace ;
 int TF_Ephemeral ;
 int VdbeComment (int *) ;
 int VdbeCoverage (int *) ;
 int VdbeCoverageIf (int *,int) ;
 int VdbeModuleComment (int *) ;
 int WHERE_AUTO_INDEX ;
 scalar_t__ WHERE_DISTINCT_ORDERED ;
 int WHERE_IDX_ONLY ;
 int WHERE_INDEXED ;
 int WHERE_IN_ABLE ;
 int WHERE_IN_EARLYOUT ;
 int WHERE_IPK ;
 int WHERE_MULTI_OR ;
 int WHERE_OR_SUBCLAUSE ;
 int assert (int) ;
 int printf (char*,...) ;
 int sqlite3ColumnOfIndex (TYPE_14__*,int) ;
 TYPE_14__* sqlite3PrimaryKeyIndex (TYPE_11__*) ;
 int sqlite3VdbeAddOp1 (int *,int ,scalar_t__) ;
 int sqlite3VdbeAddOp2 (int *,scalar_t__,int,int) ;
 int sqlite3VdbeAddOp3 (int *,scalar_t__,scalar_t__,int,int) ;
 int sqlite3VdbeAddOp4Int (int *,int,scalar_t__,int,int,int) ;
 int sqlite3VdbeChangeP5 (int *,int ) ;
 int sqlite3VdbeCurrentAddr (int *) ;
 TYPE_10__* sqlite3VdbeGetOp (int *,int) ;
 int sqlite3VdbeGoto (int *,int) ;
 int sqlite3VdbeJumpHere (int *,int) ;
 int sqlite3VdbeResolveLabel (int *,int ) ;
 int testcase (int ) ;
 int translateColumnToCopy (TYPE_13__*,int,scalar_t__,int ,int ) ;
 int whereInfoFree (TYPE_6__*,TYPE_9__*) ;

void sqlite3WhereEnd(WhereInfo *pWInfo){
  Parse *pParse = pWInfo->pParse;
  Vdbe *v = pParse->pVdbe;
  int i;
  WhereLevel *pLevel;
  WhereLoop *pLoop;
  SrcList *pTabList = pWInfo->pTabList;
  sqlite3 *db = pParse->db;



  VdbeModuleComment((v, "End WHERE-core"));
  for(i=pWInfo->nLevel-1; i>=0; i--){
    int addr;
    pLevel = &pWInfo->a[i];
    pLoop = pLevel->pWLoop;
    if( pLevel->op!=OP_Noop ){

      int addrSeek = 0;
      Index *pIdx;
      int n;
      if( pWInfo->eDistinct==WHERE_DISTINCT_ORDERED
       && i==pWInfo->nLevel-1
       && (pLoop->wsFlags & WHERE_INDEXED)!=0
       && (pIdx = pLoop->u.btree.pIndex)->hasStat1
       && (n = pLoop->u.btree.nIdxCol)>0
       && pIdx->aiRowLogEst[n]>=36
      ){
        int r1 = pParse->nMem+1;
        int j, op;
        for(j=0; j<n; j++){
          sqlite3VdbeAddOp3(v, OP_Column, pLevel->iIdxCur, j, r1+j);
        }
        pParse->nMem += n+1;
        op = pLevel->op==OP_Prev ? OP_SeekLT : OP_SeekGT;
        addrSeek = sqlite3VdbeAddOp4Int(v, op, pLevel->iIdxCur, 0, r1, n);
        VdbeCoverageIf(v, op==OP_SeekLT);
        VdbeCoverageIf(v, op==OP_SeekGT);
        sqlite3VdbeAddOp2(v, OP_Goto, 1, pLevel->p2);
      }


      sqlite3VdbeResolveLabel(v, pLevel->addrCont);
      sqlite3VdbeAddOp3(v, pLevel->op, pLevel->p1, pLevel->p2, pLevel->p3);
      sqlite3VdbeChangeP5(v, pLevel->p5);
      VdbeCoverage(v);
      VdbeCoverageIf(v, pLevel->op==OP_Next);
      VdbeCoverageIf(v, pLevel->op==OP_Prev);
      VdbeCoverageIf(v, pLevel->op==OP_VNext);

      if( addrSeek ) sqlite3VdbeJumpHere(v, addrSeek);

    }else{
      sqlite3VdbeResolveLabel(v, pLevel->addrCont);
    }
    if( pLoop->wsFlags & WHERE_IN_ABLE && pLevel->u.in.nIn>0 ){
      struct InLoop *pIn;
      int j;
      sqlite3VdbeResolveLabel(v, pLevel->addrNxt);
      for(j=pLevel->u.in.nIn, pIn=&pLevel->u.in.aInLoop[j-1]; j>0; j--, pIn--){
        sqlite3VdbeJumpHere(v, pIn->addrInTop+1);
        if( pIn->eEndLoopOp!=OP_Noop ){
          if( pIn->nPrefix ){
            assert( pLoop->wsFlags & WHERE_IN_EARLYOUT );
            sqlite3VdbeAddOp4Int(v, OP_IfNoHope, pLevel->iIdxCur,
                              sqlite3VdbeCurrentAddr(v)+2,
                              pIn->iBase, pIn->nPrefix);
            VdbeCoverage(v);
          }
          sqlite3VdbeAddOp2(v, pIn->eEndLoopOp, pIn->iCur, pIn->addrInTop);
          VdbeCoverage(v);
          VdbeCoverageIf(v, pIn->eEndLoopOp==OP_Prev);
          VdbeCoverageIf(v, pIn->eEndLoopOp==OP_Next);
        }
        sqlite3VdbeJumpHere(v, pIn->addrInTop-1);
      }
    }
    sqlite3VdbeResolveLabel(v, pLevel->addrBrk);
    if( pLevel->addrSkip ){
      sqlite3VdbeGoto(v, pLevel->addrSkip);
      VdbeComment((v, "next skip-scan on %s", pLoop->u.btree.pIndex->zName));
      sqlite3VdbeJumpHere(v, pLevel->addrSkip);
      sqlite3VdbeJumpHere(v, pLevel->addrSkip-2);
    }

    if( pLevel->addrLikeRep ){
      sqlite3VdbeAddOp2(v, OP_DecrJumpZero, (int)(pLevel->iLikeRepCntr>>1),
                        pLevel->addrLikeRep);
      VdbeCoverage(v);
    }

    if( pLevel->iLeftJoin ){
      int ws = pLoop->wsFlags;
      addr = sqlite3VdbeAddOp1(v, OP_IfPos, pLevel->iLeftJoin); VdbeCoverage(v);
      assert( (ws & WHERE_IDX_ONLY)==0 || (ws & WHERE_INDEXED)!=0 );
      if( (ws & WHERE_IDX_ONLY)==0 ){
        assert( pLevel->iTabCur==pTabList->a[pLevel->iFrom].iCursor );
        sqlite3VdbeAddOp1(v, OP_NullRow, pLevel->iTabCur);
      }
      if( (ws & WHERE_INDEXED)
       || ((ws & WHERE_MULTI_OR) && pLevel->u.pCovidx)
      ){
        sqlite3VdbeAddOp1(v, OP_NullRow, pLevel->iIdxCur);
      }
      if( pLevel->op==OP_Return ){
        sqlite3VdbeAddOp2(v, OP_Gosub, pLevel->p1, pLevel->addrFirst);
      }else{
        sqlite3VdbeGoto(v, pLevel->addrFirst);
      }
      sqlite3VdbeJumpHere(v, addr);
    }
    VdbeModuleComment((v, "End WHERE-loop%d: %s", i,
                     pWInfo->pTabList->a[pLevel->iFrom].pTab->zName));
  }




  sqlite3VdbeResolveLabel(v, pWInfo->iBreak);

  assert( pWInfo->nLevel<=pTabList->nSrc );
  for(i=0, pLevel=pWInfo->a; i<pWInfo->nLevel; i++, pLevel++){
    int k, last;
    VdbeOp *pOp;
    Index *pIdx = 0;
    struct SrcList_item *pTabItem = &pTabList->a[pLevel->iFrom];
    Table *pTab = pTabItem->pTab;
    assert( pTab!=0 );
    pLoop = pLevel->pWLoop;





    if( pTabItem->fg.viaCoroutine ){
      testcase( pParse->db->mallocFailed );
      translateColumnToCopy(pParse, pLevel->addrBody, pLevel->iTabCur,
                            pTabItem->regResult, 0);
      continue;
    }
    if( pLoop->wsFlags & (WHERE_INDEXED|WHERE_IDX_ONLY) ){
      pIdx = pLoop->u.btree.pIndex;
    }else if( pLoop->wsFlags & WHERE_MULTI_OR ){
      pIdx = pLevel->u.pCovidx;
    }
    if( pIdx
     && (pWInfo->eOnePass==ONEPASS_OFF || !HasRowid(pIdx->pTable))
     && !db->mallocFailed
    ){
      last = sqlite3VdbeCurrentAddr(v);
      k = pLevel->addrBody;





      pOp = sqlite3VdbeGetOp(v, k);
      for(; k<last; k++, pOp++){
        if( pOp->p1!=pLevel->iTabCur ) continue;
        if( pOp->opcode==OP_Column



        ){
          int x = pOp->p2;
          assert( pIdx->pTable==pTab );
          if( !HasRowid(pTab) ){
            Index *pPk = sqlite3PrimaryKeyIndex(pTab);
            x = pPk->aiColumn[x];
            assert( x>=0 );
          }
          x = sqlite3ColumnOfIndex(pIdx, x);
          if( x>=0 ){
            pOp->p2 = x;
            pOp->p1 = pLevel->iIdxCur;
            OpcodeRewriteTrace(db, k, pOp);
          }
          assert( (pLoop->wsFlags & WHERE_IDX_ONLY)==0 || x>=0
              || pWInfo->eOnePass );
        }else if( pOp->opcode==OP_Rowid ){
          pOp->p1 = pLevel->iIdxCur;
          pOp->opcode = OP_IdxRowid;
          OpcodeRewriteTrace(db, k, pOp);
        }else if( pOp->opcode==OP_IfNullRow ){
          pOp->p1 = pLevel->iIdxCur;
          OpcodeRewriteTrace(db, k, pOp);
        }
      }



    }
  }



  pParse->nQueryLoop = pWInfo->savedNQueryLoop;
  whereInfoFree(db, pWInfo);
  return;
}
