
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_32__ TYPE_8__ ;
typedef struct TYPE_31__ TYPE_7__ ;
typedef struct TYPE_30__ TYPE_6__ ;
typedef struct TYPE_29__ TYPE_5__ ;
typedef struct TYPE_28__ TYPE_4__ ;
typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;
typedef struct TYPE_24__ TYPE_13__ ;


typedef int Vdbe ;
struct TYPE_27__ {int regReturn; int iAddr; } ;
struct TYPE_28__ {TYPE_3__ sub; } ;
struct TYPE_25__ {TYPE_6__* pSelect; } ;
struct TYPE_32__ {scalar_t__ op; int iTable; TYPE_4__ y; TYPE_1__ x; } ;
struct TYPE_31__ {int nMem; int db; int * pVdbe; } ;
struct TYPE_30__ {scalar_t__ iLimit; TYPE_13__* pLimit; TYPE_2__* pEList; int selId; } ;
struct TYPE_29__ {int iSdst; int iSDParm; int nSdst; int eDest; } ;
struct TYPE_26__ {int nExpr; } ;
struct TYPE_24__ {TYPE_8__* pLeft; } ;
typedef TYPE_5__ SelectDest ;
typedef TYPE_6__ Select ;
typedef TYPE_7__ Parse ;
typedef TYPE_8__ Expr ;


 int EP_NoReduce ;
 int EP_Subrtn ;
 int EP_VarSelect ;
 int EP_xIsSelect ;
 int ExplainQueryPlan (TYPE_7__*) ;
 int ExprHasProperty (TYPE_8__*,int ) ;
 int ExprSetProperty (TYPE_8__*,int ) ;
 int ExprSetVVAProperty (TYPE_8__*,int ) ;
 int OP_Gosub ;
 int OP_Integer ;
 int OP_Null ;
 int OP_Once ;
 int OP_Return ;
 int SRT_Exists ;
 int SRT_Mem ;
 scalar_t__ TK_EXISTS ;
 int TK_INTEGER ;
 int TK_LIMIT ;
 scalar_t__ TK_SELECT ;
 int VdbeComment (int *) ;
 int VdbeCoverage (int *) ;
 int assert (int) ;
 TYPE_8__* sqlite3ExprAlloc (int ,int ,int *,int ) ;
 int sqlite3ExprDelete (int ,TYPE_8__*) ;
 int * sqlite3IntTokens ;
 TYPE_13__* sqlite3PExpr (TYPE_7__*,int ,TYPE_8__*,int ) ;
 scalar_t__ sqlite3Select (TYPE_7__*,TYPE_6__*,TYPE_5__*) ;
 int sqlite3SelectDestInit (TYPE_5__*,int ,int) ;
 int sqlite3VdbeAddOp0 (int *,int ) ;
 int sqlite3VdbeAddOp1 (int *,int ,int) ;
 int sqlite3VdbeAddOp2 (int *,int ,int,int) ;
 int sqlite3VdbeAddOp3 (int *,int ,int ,int,int) ;
 int sqlite3VdbeChangeP1 (int *,int,scalar_t__) ;
 scalar_t__ sqlite3VdbeCurrentAddr (int *) ;
 int sqlite3VdbeJumpHere (int *,int) ;
 int testcase (int) ;

int sqlite3CodeSubselect(Parse *pParse, Expr *pExpr){
  int addrOnce = 0;
  int rReg = 0;
  Select *pSel;
  SelectDest dest;
  int nReg;
  Expr *pLimit;

  Vdbe *v = pParse->pVdbe;
  assert( v!=0 );
  testcase( pExpr->op==TK_EXISTS );
  testcase( pExpr->op==TK_SELECT );
  assert( pExpr->op==TK_EXISTS || pExpr->op==TK_SELECT );
  assert( ExprHasProperty(pExpr, EP_xIsSelect) );
  pSel = pExpr->x.pSelect;
  if( !ExprHasProperty(pExpr, EP_VarSelect) ){


    if( ExprHasProperty(pExpr, EP_Subrtn) ){
      ExplainQueryPlan((pParse, 0, "REUSE SUBQUERY %d", pSel->selId));
      sqlite3VdbeAddOp2(v, OP_Gosub, pExpr->y.sub.regReturn,
                        pExpr->y.sub.iAddr);
      return pExpr->iTable;
    }


    ExprSetProperty(pExpr, EP_Subrtn);
    pExpr->y.sub.regReturn = ++pParse->nMem;
    pExpr->y.sub.iAddr =
      sqlite3VdbeAddOp2(v, OP_Integer, 0, pExpr->y.sub.regReturn) + 1;
    VdbeComment((v, "return address"));

    addrOnce = sqlite3VdbeAddOp0(v, OP_Once); VdbeCoverage(v);
  }
  ExplainQueryPlan((pParse, 1, "%sSCALAR SUBQUERY %d",
        addrOnce?"":"CORRELATED ", pSel->selId));
  nReg = pExpr->op==TK_SELECT ? pSel->pEList->nExpr : 1;
  sqlite3SelectDestInit(&dest, 0, pParse->nMem+1);
  pParse->nMem += nReg;
  if( pExpr->op==TK_SELECT ){
    dest.eDest = SRT_Mem;
    dest.iSdst = dest.iSDParm;
    dest.nSdst = nReg;
    sqlite3VdbeAddOp3(v, OP_Null, 0, dest.iSDParm, dest.iSDParm+nReg-1);
    VdbeComment((v, "Init subquery result"));
  }else{
    dest.eDest = SRT_Exists;
    sqlite3VdbeAddOp2(v, OP_Integer, 0, dest.iSDParm);
    VdbeComment((v, "Init EXISTS result"));
  }
  pLimit = sqlite3ExprAlloc(pParse->db, TK_INTEGER,&sqlite3IntTokens[1], 0);
  if( pSel->pLimit ){
    sqlite3ExprDelete(pParse->db, pSel->pLimit->pLeft);
    pSel->pLimit->pLeft = pLimit;
  }else{
    pSel->pLimit = sqlite3PExpr(pParse, TK_LIMIT, pLimit, 0);
  }
  pSel->iLimit = 0;
  if( sqlite3Select(pParse, pSel, &dest) ){
    return 0;
  }
  pExpr->iTable = rReg = dest.iSDParm;
  ExprSetVVAProperty(pExpr, EP_NoReduce);
  if( addrOnce ){
    sqlite3VdbeJumpHere(v, addrOnce);


    sqlite3VdbeAddOp1(v, OP_Return, pExpr->y.sub.regReturn);
    sqlite3VdbeChangeP1(v, pExpr->y.sub.iAddr-1, sqlite3VdbeCurrentAddr(v)-1);
  }

  return rReg;
}
