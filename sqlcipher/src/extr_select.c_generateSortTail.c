
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_36__ TYPE_9__ ;
typedef struct TYPE_35__ TYPE_8__ ;
typedef struct TYPE_34__ TYPE_7__ ;
typedef struct TYPE_33__ TYPE_6__ ;
typedef struct TYPE_32__ TYPE_5__ ;
typedef struct TYPE_31__ TYPE_4__ ;
typedef struct TYPE_30__ TYPE_3__ ;
typedef struct TYPE_29__ TYPE_2__ ;
typedef struct TYPE_28__ TYPE_1__ ;
typedef struct TYPE_27__ TYPE_14__ ;
typedef struct TYPE_26__ TYPE_10__ ;


struct TYPE_28__ {scalar_t__ iOrderByCol; } ;
struct TYPE_29__ {TYPE_1__ x; } ;
struct ExprList_item {scalar_t__ zSpan; scalar_t__ zName; TYPE_2__ u; int pExpr; scalar_t__ bSorterRef; } ;
typedef int Vdbe ;
struct TYPE_32__ {int pSchema; } ;
typedef TYPE_5__ Table ;
struct TYPE_36__ {int nMem; int nTab; int db; int * pVdbe; } ;
struct TYPE_35__ {int iOffset; TYPE_3__* pEList; } ;
struct TYPE_34__ {int eDest; int iSDParm; int iSdst; int zAffSdst; } ;
struct TYPE_33__ {int labelDone; int labelBkOut; int regReturn; int nDefer; int iECursor; int nOBSat; int sortFlags; TYPE_4__* aDefer; TYPE_10__* pOrderBy; } ;
struct TYPE_31__ {int iCsr; int nKey; TYPE_5__* pTab; } ;
struct TYPE_30__ {struct ExprList_item* a; } ;
struct TYPE_27__ {int nKeyCol; } ;
struct TYPE_26__ {int nExpr; } ;
typedef TYPE_6__ SortCtx ;
typedef TYPE_7__ SelectDest ;
typedef TYPE_8__ Select ;
typedef TYPE_9__ Parse ;
typedef TYPE_10__ ExprList ;


 scalar_t__ HasRowid (TYPE_5__*) ;
 int MAX (int,int) ;
 int OPFLAG_APPEND ;
 int OP_Column ;
 int OP_Gosub ;
 int OP_IdxInsert ;
 int OP_IdxLE ;
 int OP_Insert ;
 int OP_MakeRecord ;
 int OP_NewRowid ;
 int OP_Next ;
 int OP_NullRow ;
 int OP_Once ;
 int OP_OpenPseudo ;
 int OP_OpenRead ;
 int OP_ResultRow ;
 int OP_Return ;
 int OP_SeekGE ;
 int OP_SeekRowid ;
 int OP_Sort ;
 int OP_SorterData ;
 int OP_SorterNext ;
 int OP_SorterSort ;
 int OP_Yield ;
 int SORTFLAG_UseSorter ;
 int SRT_Coroutine ;


 int SRT_Output ;


 int VdbeComment (int *) ;
 int VdbeCoverage (int *) ;
 int assert (int) ;
 int codeOffset (int *,int ,int) ;
 int sqlite3ExprCode (TYPE_9__*,int ,int) ;
 int sqlite3GetTempRange (TYPE_9__*,int) ;
 int sqlite3GetTempReg (TYPE_9__*) ;
 int sqlite3OpenTable (TYPE_9__*,int,int,TYPE_5__*,int ) ;
 TYPE_14__* sqlite3PrimaryKeyIndex (TYPE_5__*) ;
 int sqlite3ReleaseTempRange (TYPE_9__*,int,int) ;
 int sqlite3ReleaseTempReg (TYPE_9__*,int) ;
 int sqlite3SchemaToIndex (int ,int ) ;
 int sqlite3Strlen30 (int ) ;
 int sqlite3VdbeAddOp0 (int *,int ) ;
 int sqlite3VdbeAddOp1 (int *,int ,int) ;
 int sqlite3VdbeAddOp2 (int *,int ,int,int) ;
 int sqlite3VdbeAddOp3 (int *,int ,int,int,int) ;
 int sqlite3VdbeAddOp4 (int *,int ,int,int,int,int ,int) ;
 int sqlite3VdbeAddOp4Int (int *,int ,int,int,int,int) ;
 int sqlite3VdbeChangeP5 (int *,int ) ;
 int sqlite3VdbeCurrentAddr (int *) ;
 int sqlite3VdbeGoto (int *,int) ;
 int sqlite3VdbeJumpHere (int *,int) ;
 int sqlite3VdbeMakeLabel (TYPE_9__*) ;
 int sqlite3VdbeResolveLabel (int *,int) ;
 int testcase (int) ;

__attribute__((used)) static void generateSortTail(
  Parse *pParse,
  Select *p,
  SortCtx *pSort,
  int nColumn,
  SelectDest *pDest
){
  Vdbe *v = pParse->pVdbe;
  int addrBreak = pSort->labelDone;
  int addrContinue = sqlite3VdbeMakeLabel(pParse);
  int addr;
  int addrOnce = 0;
  int iTab;
  ExprList *pOrderBy = pSort->pOrderBy;
  int eDest = pDest->eDest;
  int iParm = pDest->iSDParm;
  int regRow;
  int regRowid;
  int iCol;
  int nKey;
  int iSortTab;
  int i;
  int bSeq;
  int nRefKey = 0;
  struct ExprList_item *aOutEx = p->pEList->a;

  assert( addrBreak<0 );
  if( pSort->labelBkOut ){
    sqlite3VdbeAddOp2(v, OP_Gosub, pSort->regReturn, pSort->labelBkOut);
    sqlite3VdbeGoto(v, addrBreak);
    sqlite3VdbeResolveLabel(v, pSort->labelBkOut);
  }
  iTab = pSort->iECursor;
  if( eDest==SRT_Output || eDest==SRT_Coroutine || eDest==130 ){
    regRowid = 0;
    regRow = pDest->iSdst;
  }else{
    regRowid = sqlite3GetTempReg(pParse);
    if( eDest==131 || eDest==128 ){
      regRow = sqlite3GetTempReg(pParse);
      nColumn = 0;
    }else{
      regRow = sqlite3GetTempRange(pParse, nColumn);
    }
  }
  nKey = pOrderBy->nExpr - pSort->nOBSat;
  if( pSort->sortFlags & SORTFLAG_UseSorter ){
    int regSortOut = ++pParse->nMem;
    iSortTab = pParse->nTab++;
    if( pSort->labelBkOut ){
      addrOnce = sqlite3VdbeAddOp0(v, OP_Once); VdbeCoverage(v);
    }
    sqlite3VdbeAddOp3(v, OP_OpenPseudo, iSortTab, regSortOut,
        nKey+1+nColumn+nRefKey);
    if( addrOnce ) sqlite3VdbeJumpHere(v, addrOnce);
    addr = 1 + sqlite3VdbeAddOp2(v, OP_SorterSort, iTab, addrBreak);
    VdbeCoverage(v);
    codeOffset(v, p->iOffset, addrContinue);
    sqlite3VdbeAddOp3(v, OP_SorterData, iTab, regSortOut, iSortTab);
    bSeq = 0;
  }else{
    addr = 1 + sqlite3VdbeAddOp2(v, OP_Sort, iTab, addrBreak); VdbeCoverage(v);
    codeOffset(v, p->iOffset, addrContinue);
    iSortTab = iTab;
    bSeq = 1;
  }
  for(i=0, iCol=nKey+bSeq-1; i<nColumn; i++){



    if( aOutEx[i].u.x.iOrderByCol==0 ) iCol++;
  }
  for(i=nColumn-1; i>=0; i--){





    {
      int iRead;
      if( aOutEx[i].u.x.iOrderByCol ){
        iRead = aOutEx[i].u.x.iOrderByCol-1;
      }else{
        iRead = iCol--;
      }
      sqlite3VdbeAddOp3(v, OP_Column, iSortTab, iRead, regRow+i);
      VdbeComment((v, "%s", aOutEx[i].zName?aOutEx[i].zName : aOutEx[i].zSpan));
    }
  }
  switch( eDest ){
    case 128:
    case 131: {
      sqlite3VdbeAddOp3(v, OP_Column, iSortTab, nKey+bSeq, regRow);
      sqlite3VdbeAddOp2(v, OP_NewRowid, iParm, regRowid);
      sqlite3VdbeAddOp3(v, OP_Insert, iParm, regRow, regRowid);
      sqlite3VdbeChangeP5(v, OPFLAG_APPEND);
      break;
    }

    case 129: {
      assert( nColumn==sqlite3Strlen30(pDest->zAffSdst) );
      sqlite3VdbeAddOp4(v, OP_MakeRecord, regRow, nColumn, regRowid,
                        pDest->zAffSdst, nColumn);
      sqlite3VdbeAddOp4Int(v, OP_IdxInsert, iParm, regRowid, regRow, nColumn);
      break;
    }
    case 130: {

      break;
    }

    default: {
      assert( eDest==SRT_Output || eDest==SRT_Coroutine );
      testcase( eDest==SRT_Output );
      testcase( eDest==SRT_Coroutine );
      if( eDest==SRT_Output ){
        sqlite3VdbeAddOp2(v, OP_ResultRow, pDest->iSdst, nColumn);
      }else{
        sqlite3VdbeAddOp1(v, OP_Yield, pDest->iSDParm);
      }
      break;
    }
  }
  if( regRowid ){
    if( eDest==129 ){
      sqlite3ReleaseTempRange(pParse, regRow, nColumn);
    }else{
      sqlite3ReleaseTempReg(pParse, regRow);
    }
    sqlite3ReleaseTempReg(pParse, regRowid);
  }


  sqlite3VdbeResolveLabel(v, addrContinue);
  if( pSort->sortFlags & SORTFLAG_UseSorter ){
    sqlite3VdbeAddOp2(v, OP_SorterNext, iTab, addr); VdbeCoverage(v);
  }else{
    sqlite3VdbeAddOp2(v, OP_Next, iTab, addr); VdbeCoverage(v);
  }
  if( pSort->regReturn ) sqlite3VdbeAddOp1(v, OP_Return, pSort->regReturn);
  sqlite3VdbeResolveLabel(v, addrBreak);
}
