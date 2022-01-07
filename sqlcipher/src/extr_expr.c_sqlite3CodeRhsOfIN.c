
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_46__ TYPE_9__ ;
typedef struct TYPE_45__ TYPE_8__ ;
typedef struct TYPE_44__ TYPE_7__ ;
typedef struct TYPE_43__ TYPE_6__ ;
typedef struct TYPE_42__ TYPE_5__ ;
typedef struct TYPE_41__ TYPE_4__ ;
typedef struct TYPE_40__ TYPE_3__ ;
typedef struct TYPE_39__ TYPE_2__ ;
typedef struct TYPE_38__ TYPE_1__ ;


struct ExprList_item {TYPE_9__* pExpr; } ;
typedef int Vdbe ;
struct TYPE_38__ {int regReturn; int iAddr; } ;
struct TYPE_39__ {TYPE_1__ sub; } ;
struct TYPE_40__ {TYPE_8__* pList; TYPE_5__* pSelect; } ;
struct TYPE_46__ {int iTable; TYPE_2__ y; struct TYPE_46__* pLeft; TYPE_3__ x; } ;
struct TYPE_45__ {int nExpr; struct ExprList_item* a; } ;
struct TYPE_44__ {int * aColl; } ;
struct TYPE_43__ {scalar_t__ iSelfTab; int nMem; int db; int * pVdbe; } ;
struct TYPE_42__ {int selFlags; scalar_t__ iLimit; int selId; TYPE_8__* pEList; } ;
struct TYPE_41__ {int zAffSdst; } ;
typedef TYPE_4__ SelectDest ;
typedef TYPE_5__ Select ;
typedef TYPE_6__ Parse ;
typedef TYPE_7__ KeyInfo ;
typedef TYPE_8__ ExprList ;
typedef TYPE_9__ Expr ;


 scalar_t__ ALWAYS (int) ;
 int EP_Subrtn ;
 int EP_VarSelect ;
 int EP_xIsSelect ;
 int ExplainQueryPlan (TYPE_6__*) ;
 scalar_t__ ExprHasProperty (TYPE_9__*,int ) ;
 int ExprSetProperty (TYPE_9__*,int ) ;
 int OP_Gosub ;
 int OP_IdxInsert ;
 int OP_Integer ;
 int OP_MakeRecord ;
 int OP_Once ;
 int OP_OpenDup ;
 int OP_OpenEphemeral ;
 int OP_Return ;
 int P4_KEYINFO ;
 int SF_Distinct ;
 char SQLITE_AFF_BLOB ;
 int SRT_Set ;
 int VdbeComment (int *) ;
 int VdbeCoverage (int *) ;
 int assert (int) ;
 int exprINAffinity (TYPE_6__*,TYPE_9__*) ;
 int sqlite3BinaryCompareCollSeq (TYPE_6__*,TYPE_9__*,TYPE_9__*) ;
 int sqlite3DbFree (int ,int ) ;
 char sqlite3ExprAffinity (TYPE_9__*) ;
 int sqlite3ExprCodeTarget (TYPE_6__*,TYPE_9__*,int) ;
 int sqlite3ExprCollSeq (TYPE_6__*,TYPE_9__*) ;
 int sqlite3ExprIsConstant (TYPE_9__*) ;
 int sqlite3ExprVectorSize (TYPE_9__*) ;
 int sqlite3GetTempReg (TYPE_6__*) ;
 TYPE_7__* sqlite3KeyInfoAlloc (int ,int,int) ;
 int sqlite3KeyInfoIsWriteable (TYPE_7__*) ;
 int sqlite3KeyInfoUnref (TYPE_7__*) ;
 int sqlite3ReleaseTempReg (TYPE_6__*,int) ;
 scalar_t__ sqlite3Select (TYPE_6__*,TYPE_5__*,TYPE_4__*) ;
 int sqlite3SelectDestInit (TYPE_4__*,int ,int) ;
 int sqlite3VdbeAddOp0 (int *,int ) ;
 int sqlite3VdbeAddOp1 (int *,int ,int) ;
 int sqlite3VdbeAddOp2 (int *,int ,int,int) ;
 int sqlite3VdbeAddOp4 (int *,int ,int,int,int,char*,int) ;
 int sqlite3VdbeAddOp4Int (int *,int ,int,int,int,int) ;
 int sqlite3VdbeChangeP1 (int *,int,scalar_t__) ;
 int sqlite3VdbeChangeP4 (int *,int,void*,int ) ;
 int sqlite3VdbeChangeToNoop (int *,int) ;
 scalar_t__ sqlite3VdbeCurrentAddr (int *) ;
 int sqlite3VdbeJumpHere (int *,int) ;
 TYPE_9__* sqlite3VectorFieldSubexpr (TYPE_9__*,int) ;
 int testcase (int) ;

void sqlite3CodeRhsOfIN(
  Parse *pParse,
  Expr *pExpr,
  int iTab
){
  int addrOnce = 0;
  int addr;
  Expr *pLeft;
  KeyInfo *pKeyInfo = 0;
  int nVal;
  Vdbe *v;

  v = pParse->pVdbe;
  assert( v!=0 );
  if( !ExprHasProperty(pExpr, EP_VarSelect) && pParse->iSelfTab==0 ){




    if( ExprHasProperty(pExpr, EP_Subrtn) ){
      addrOnce = sqlite3VdbeAddOp0(v, OP_Once); VdbeCoverage(v);
      if( ExprHasProperty(pExpr, EP_xIsSelect) ){
        ExplainQueryPlan((pParse, 0, "REUSE LIST SUBQUERY %d",
              pExpr->x.pSelect->selId));
      }
      sqlite3VdbeAddOp2(v, OP_Gosub, pExpr->y.sub.regReturn,
                        pExpr->y.sub.iAddr);
      sqlite3VdbeAddOp2(v, OP_OpenDup, iTab, pExpr->iTable);
      sqlite3VdbeJumpHere(v, addrOnce);
      return;
    }


    ExprSetProperty(pExpr, EP_Subrtn);
    pExpr->y.sub.regReturn = ++pParse->nMem;
    pExpr->y.sub.iAddr =
      sqlite3VdbeAddOp2(v, OP_Integer, 0, pExpr->y.sub.regReturn) + 1;
    VdbeComment((v, "return address"));

    addrOnce = sqlite3VdbeAddOp0(v, OP_Once); VdbeCoverage(v);
  }


  pLeft = pExpr->pLeft;
  nVal = sqlite3ExprVectorSize(pLeft);




  pExpr->iTable = iTab;
  addr = sqlite3VdbeAddOp2(v, OP_OpenEphemeral, pExpr->iTable, nVal);







  pKeyInfo = sqlite3KeyInfoAlloc(pParse->db, nVal, 1);

  if( ExprHasProperty(pExpr, EP_xIsSelect) ){





    Select *pSelect = pExpr->x.pSelect;
    ExprList *pEList = pSelect->pEList;

    ExplainQueryPlan((pParse, 1, "%sLIST SUBQUERY %d",
        addrOnce?"":"CORRELATED ", pSelect->selId
    ));


    if( ALWAYS(pEList->nExpr==nVal) ){
      SelectDest dest;
      int i;
      sqlite3SelectDestInit(&dest, SRT_Set, iTab);
      dest.zAffSdst = exprINAffinity(pParse, pExpr);
      pSelect->iLimit = 0;
      testcase( pSelect->selFlags & SF_Distinct );
      testcase( pKeyInfo==0 );
      if( sqlite3Select(pParse, pSelect, &dest) ){
        sqlite3DbFree(pParse->db, dest.zAffSdst);
        sqlite3KeyInfoUnref(pKeyInfo);
        return;
      }
      sqlite3DbFree(pParse->db, dest.zAffSdst);
      assert( pKeyInfo!=0 );
      assert( pEList!=0 );
      assert( pEList->nExpr>0 );
      assert( sqlite3KeyInfoIsWriteable(pKeyInfo) );
      for(i=0; i<nVal; i++){
        Expr *p = sqlite3VectorFieldSubexpr(pLeft, i);
        pKeyInfo->aColl[i] = sqlite3BinaryCompareCollSeq(
            pParse, p, pEList->a[i].pExpr
        );
      }
    }
  }else if( ALWAYS(pExpr->x.pList!=0) ){







    char affinity;
    int i;
    ExprList *pList = pExpr->x.pList;
    struct ExprList_item *pItem;
    int r1, r2, r3;
    affinity = sqlite3ExprAffinity(pLeft);
    if( !affinity ){
      affinity = SQLITE_AFF_BLOB;
    }
    if( pKeyInfo ){
      assert( sqlite3KeyInfoIsWriteable(pKeyInfo) );
      pKeyInfo->aColl[0] = sqlite3ExprCollSeq(pParse, pExpr->pLeft);
    }


    r1 = sqlite3GetTempReg(pParse);
    r2 = sqlite3GetTempReg(pParse);
    for(i=pList->nExpr, pItem=pList->a; i>0; i--, pItem++){
      Expr *pE2 = pItem->pExpr;






      if( addrOnce && !sqlite3ExprIsConstant(pE2) ){
        sqlite3VdbeChangeToNoop(v, addrOnce);
        addrOnce = 0;
      }


      r3 = sqlite3ExprCodeTarget(pParse, pE2, r1);
      sqlite3VdbeAddOp4(v, OP_MakeRecord, r3, 1, r2, &affinity, 1);
      sqlite3VdbeAddOp4Int(v, OP_IdxInsert, iTab, r2, r3, 1);
    }
    sqlite3ReleaseTempReg(pParse, r1);
    sqlite3ReleaseTempReg(pParse, r2);
  }
  if( pKeyInfo ){
    sqlite3VdbeChangeP4(v, addr, (void *)pKeyInfo, P4_KEYINFO);
  }
  if( addrOnce ){
    sqlite3VdbeJumpHere(v, addrOnce);

    sqlite3VdbeAddOp1(v, OP_Return, pExpr->y.sub.regReturn);
    sqlite3VdbeChangeP1(v, pExpr->y.sub.iAddr-1, sqlite3VdbeCurrentAddr(v)-1);
  }
}
