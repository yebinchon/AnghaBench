
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_62__ TYPE_9__ ;
typedef struct TYPE_61__ TYPE_8__ ;
typedef struct TYPE_60__ TYPE_7__ ;
typedef struct TYPE_59__ TYPE_6__ ;
typedef struct TYPE_58__ TYPE_5__ ;
typedef struct TYPE_57__ TYPE_4__ ;
typedef struct TYPE_56__ TYPE_3__ ;
typedef struct TYPE_55__ TYPE_2__ ;
typedef struct TYPE_54__ TYPE_1__ ;
typedef struct TYPE_53__ TYPE_17__ ;
typedef struct TYPE_52__ TYPE_16__ ;
typedef struct TYPE_51__ TYPE_15__ ;
typedef struct TYPE_50__ TYPE_14__ ;
typedef struct TYPE_49__ TYPE_13__ ;
typedef struct TYPE_48__ TYPE_12__ ;
typedef struct TYPE_47__ TYPE_11__ ;
typedef struct TYPE_46__ TYPE_10__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_60__ {scalar_t__ viaCoroutine; } ;
struct SrcList_item {int colUsed; int regReturn; TYPE_7__ fg; int regResult; TYPE_12__* pTab; int addrFillSub; int iCursor; } ;
struct TYPE_55__ {int leftColumn; } ;
struct TYPE_61__ {int wtFlags; TYPE_2__ u; TYPE_15__* pExpr; } ;
typedef TYPE_8__ WhereTerm ;
struct TYPE_56__ {int nEq; TYPE_14__* pIndex; } ;
struct TYPE_57__ {TYPE_3__ btree; } ;
struct TYPE_62__ {scalar_t__ prereq; int nLTerm; int wsFlags; TYPE_4__ u; TYPE_8__** aLTerm; } ;
typedef TYPE_9__ WhereLoop ;
struct TYPE_46__ {scalar_t__ iIdxCur; size_t iFrom; int iTabCur; TYPE_9__* pWLoop; } ;
typedef TYPE_10__ WhereLevel ;
struct TYPE_47__ {size_t nTerm; TYPE_6__* pWInfo; TYPE_8__* a; } ;
typedef TYPE_11__ WhereClause ;
typedef int Vdbe ;
struct TYPE_48__ {int nCol; int zName; TYPE_1__* aCol; } ;
typedef TYPE_12__ Table ;
struct TYPE_59__ {TYPE_5__* pTabList; } ;
struct TYPE_58__ {struct SrcList_item* a; } ;
struct TYPE_54__ {int zName; } ;
struct TYPE_53__ {int mallocFailed; } ;
struct TYPE_52__ {void* zName; } ;
struct TYPE_51__ {int pRight; int pLeft; int iRightJoinTable; } ;
struct TYPE_50__ {char* zName; int* aiColumn; void** azColl; TYPE_12__* pTable; } ;
struct TYPE_49__ {TYPE_17__* db; int nTab; int * pVdbe; } ;
typedef TYPE_13__ Parse ;
typedef TYPE_14__ Index ;
typedef TYPE_15__ Expr ;
typedef TYPE_16__ CollSeq ;
typedef int Bitmask ;


 int BMS ;
 int EP_FromJoin ;
 int ExprHasProperty (TYPE_15__*,int ) ;
 int MASKBIT (int) ;
 int MIN (int,int) ;
 int OPFLAG_USESEEKRESULT ;
 int OP_IdxInsert ;
 int OP_InitCoroutine ;
 int OP_Integer ;
 int OP_Next ;
 int OP_Once ;
 int OP_OpenAutoindex ;
 int OP_Rewind ;
 int OP_Yield ;
 int SQLITE_JUMPIFNULL ;
 int SQLITE_STMTSTATUS_AUTOINDEX ;
 int SQLITE_WARNING_AUTOINDEX ;
 int TERM_VIRTUAL ;
 int VdbeComment (int *) ;
 int VdbeCoverage (int *) ;
 int WHERE_AUTO_INDEX ;
 int WHERE_COLUMN_EQ ;
 int WHERE_IDX_ONLY ;
 int WHERE_INDEXED ;
 int WHERE_PARTIALIDX ;
 int XN_ROWID ;
 int assert (int) ;
 TYPE_14__* sqlite3AllocateIndexObject (TYPE_17__*,int,int ,char**) ;
 TYPE_16__* sqlite3BinaryCompareCollSeq (TYPE_13__*,int ,int ) ;
 TYPE_15__* sqlite3ExprAnd (TYPE_17__*,TYPE_15__*,int ) ;
 int sqlite3ExprDelete (TYPE_17__*,TYPE_15__*) ;
 int sqlite3ExprDup (TYPE_17__*,TYPE_15__*,int ) ;
 int sqlite3ExprIfFalse (TYPE_13__*,TYPE_15__*,int,int ) ;
 scalar_t__ sqlite3ExprIsTableConstant (TYPE_15__*,int ) ;
 int sqlite3GenerateIndexKey (TYPE_13__*,TYPE_14__*,int,int,int ,int ,int ,int ) ;
 int sqlite3GetTempReg (TYPE_13__*) ;
 int sqlite3ReleaseTempReg (TYPE_13__*,int) ;
 void* sqlite3StrBINARY ;
 int sqlite3VdbeAddOp0 (int *,int ) ;
 int sqlite3VdbeAddOp1 (int *,int ,int) ;
 int sqlite3VdbeAddOp2 (int *,int ,scalar_t__,int) ;
 int sqlite3VdbeAddOp3 (int *,int ,int,int ,int ) ;
 int sqlite3VdbeChangeP2 (int *,int,int) ;
 int sqlite3VdbeChangeP5 (int *,int ) ;
 int sqlite3VdbeGoto (int *,int) ;
 int sqlite3VdbeJumpHere (int *,int) ;
 int sqlite3VdbeMakeLabel (TYPE_13__*) ;
 int sqlite3VdbeResolveLabel (int *,int) ;
 int sqlite3VdbeSetP4KeyInfo (TYPE_13__*,TYPE_14__*) ;
 int sqlite3_log (int ,char*,int ,int ) ;
 scalar_t__ termCanDriveIndex (TYPE_8__*,struct SrcList_item*,int) ;
 int testcase (int) ;
 int translateColumnToCopy (TYPE_13__*,int,int,int ,int) ;
 scalar_t__ whereLoopResize (TYPE_17__*,TYPE_9__*,int) ;

__attribute__((used)) static void constructAutomaticIndex(
  Parse *pParse,
  WhereClause *pWC,
  struct SrcList_item *pSrc,
  Bitmask notReady,
  WhereLevel *pLevel
){
  int nKeyCol;
  WhereTerm *pTerm;
  WhereTerm *pWCEnd;
  Index *pIdx;
  Vdbe *v;
  int addrInit;
  Table *pTable;
  int addrTop;
  int regRecord;
  int n;
  int i;
  int mxBitCol;
  CollSeq *pColl;
  WhereLoop *pLoop;
  char *zNotUsed;
  Bitmask idxCols;
  Bitmask extraCols;
  u8 sentWarning = 0;
  Expr *pPartial = 0;
  int iContinue = 0;
  struct SrcList_item *pTabItem;
  int addrCounter = 0;
  int regBase;



  v = pParse->pVdbe;
  assert( v!=0 );
  addrInit = sqlite3VdbeAddOp0(v, OP_Once); VdbeCoverage(v);



  nKeyCol = 0;
  pTable = pSrc->pTab;
  pWCEnd = &pWC->a[pWC->nTerm];
  pLoop = pLevel->pWLoop;
  idxCols = 0;
  for(pTerm=pWC->a; pTerm<pWCEnd; pTerm++){
    Expr *pExpr = pTerm->pExpr;
    assert( !ExprHasProperty(pExpr, EP_FromJoin)
         || pExpr->iRightJoinTable!=pSrc->iCursor
         || pLoop->prereq!=0 );
    if( pLoop->prereq==0
     && (pTerm->wtFlags & TERM_VIRTUAL)==0
     && !ExprHasProperty(pExpr, EP_FromJoin)
     && sqlite3ExprIsTableConstant(pExpr, pSrc->iCursor) ){
      pPartial = sqlite3ExprAnd(pParse->db, pPartial,
                                sqlite3ExprDup(pParse->db, pExpr, 0));
    }
    if( termCanDriveIndex(pTerm, pSrc, notReady) ){
      int iCol = pTerm->u.leftColumn;
      Bitmask cMask = iCol>=BMS ? MASKBIT(BMS-1) : MASKBIT(iCol);
      testcase( iCol==BMS );
      testcase( iCol==BMS-1 );
      if( !sentWarning ){
        sqlite3_log(SQLITE_WARNING_AUTOINDEX,
            "automatic index on %s(%s)", pTable->zName,
            pTable->aCol[iCol].zName);
        sentWarning = 1;
      }
      if( (idxCols & cMask)==0 ){
        if( whereLoopResize(pParse->db, pLoop, nKeyCol+1) ){
          goto end_auto_index_create;
        }
        pLoop->aLTerm[nKeyCol++] = pTerm;
        idxCols |= cMask;
      }
    }
  }
  assert( nKeyCol>0 );
  pLoop->u.btree.nEq = pLoop->nLTerm = nKeyCol;
  pLoop->wsFlags = WHERE_COLUMN_EQ | WHERE_IDX_ONLY | WHERE_INDEXED
                     | WHERE_AUTO_INDEX;
  extraCols = pSrc->colUsed & (~idxCols | MASKBIT(BMS-1));
  mxBitCol = MIN(BMS-1,pTable->nCol);
  testcase( pTable->nCol==BMS-1 );
  testcase( pTable->nCol==BMS-2 );
  for(i=0; i<mxBitCol; i++){
    if( extraCols & MASKBIT(i) ) nKeyCol++;
  }
  if( pSrc->colUsed & MASKBIT(BMS-1) ){
    nKeyCol += pTable->nCol - BMS + 1;
  }


  pIdx = sqlite3AllocateIndexObject(pParse->db, nKeyCol+1, 0, &zNotUsed);
  if( pIdx==0 ) goto end_auto_index_create;
  pLoop->u.btree.pIndex = pIdx;
  pIdx->zName = "auto-index";
  pIdx->pTable = pTable;
  n = 0;
  idxCols = 0;
  for(pTerm=pWC->a; pTerm<pWCEnd; pTerm++){
    if( termCanDriveIndex(pTerm, pSrc, notReady) ){
      int iCol = pTerm->u.leftColumn;
      Bitmask cMask = iCol>=BMS ? MASKBIT(BMS-1) : MASKBIT(iCol);
      testcase( iCol==BMS-1 );
      testcase( iCol==BMS );
      if( (idxCols & cMask)==0 ){
        Expr *pX = pTerm->pExpr;
        idxCols |= cMask;
        pIdx->aiColumn[n] = pTerm->u.leftColumn;
        pColl = sqlite3BinaryCompareCollSeq(pParse, pX->pLeft, pX->pRight);
        pIdx->azColl[n] = pColl ? pColl->zName : sqlite3StrBINARY;
        n++;
      }
    }
  }
  assert( (u32)n==pLoop->u.btree.nEq );



  for(i=0; i<mxBitCol; i++){
    if( extraCols & MASKBIT(i) ){
      pIdx->aiColumn[n] = i;
      pIdx->azColl[n] = sqlite3StrBINARY;
      n++;
    }
  }
  if( pSrc->colUsed & MASKBIT(BMS-1) ){
    for(i=BMS-1; i<pTable->nCol; i++){
      pIdx->aiColumn[n] = i;
      pIdx->azColl[n] = sqlite3StrBINARY;
      n++;
    }
  }
  assert( n==nKeyCol );
  pIdx->aiColumn[n] = XN_ROWID;
  pIdx->azColl[n] = sqlite3StrBINARY;


  assert( pLevel->iIdxCur>=0 );
  pLevel->iIdxCur = pParse->nTab++;
  sqlite3VdbeAddOp2(v, OP_OpenAutoindex, pLevel->iIdxCur, nKeyCol+1);
  sqlite3VdbeSetP4KeyInfo(pParse, pIdx);
  VdbeComment((v, "for %s", pTable->zName));


  pTabItem = &pWC->pWInfo->pTabList->a[pLevel->iFrom];
  if( pTabItem->fg.viaCoroutine ){
    int regYield = pTabItem->regReturn;
    addrCounter = sqlite3VdbeAddOp2(v, OP_Integer, 0, 0);
    sqlite3VdbeAddOp3(v, OP_InitCoroutine, regYield, 0, pTabItem->addrFillSub);
    addrTop = sqlite3VdbeAddOp1(v, OP_Yield, regYield);
    VdbeCoverage(v);
    VdbeComment((v, "next row of %s", pTabItem->pTab->zName));
  }else{
    addrTop = sqlite3VdbeAddOp1(v, OP_Rewind, pLevel->iTabCur); VdbeCoverage(v);
  }
  if( pPartial ){
    iContinue = sqlite3VdbeMakeLabel(pParse);
    sqlite3ExprIfFalse(pParse, pPartial, iContinue, SQLITE_JUMPIFNULL);
    pLoop->wsFlags |= WHERE_PARTIALIDX;
  }
  regRecord = sqlite3GetTempReg(pParse);
  regBase = sqlite3GenerateIndexKey(
      pParse, pIdx, pLevel->iTabCur, regRecord, 0, 0, 0, 0
  );
  sqlite3VdbeAddOp2(v, OP_IdxInsert, pLevel->iIdxCur, regRecord);
  sqlite3VdbeChangeP5(v, OPFLAG_USESEEKRESULT);
  if( pPartial ) sqlite3VdbeResolveLabel(v, iContinue);
  if( pTabItem->fg.viaCoroutine ){
    sqlite3VdbeChangeP2(v, addrCounter, regBase+n);
    testcase( pParse->db->mallocFailed );
    translateColumnToCopy(pParse, addrTop, pLevel->iTabCur,
                          pTabItem->regResult, 1);
    sqlite3VdbeGoto(v, addrTop);
    pTabItem->fg.viaCoroutine = 0;
  }else{
    sqlite3VdbeAddOp2(v, OP_Next, pLevel->iTabCur, addrTop+1); VdbeCoverage(v);
  }
  sqlite3VdbeChangeP5(v, SQLITE_STMTSTATUS_AUTOINDEX);
  sqlite3VdbeJumpHere(v, addrTop);
  sqlite3ReleaseTempReg(pParse, regRecord);


  sqlite3VdbeJumpHere(v, addrInit);

end_auto_index_create:
  sqlite3ExprDelete(pParse->db, pPartial);
}
