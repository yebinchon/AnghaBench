
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct AggInfo_func {scalar_t__ iMem; int iDistinct; TYPE_4__* pExpr; } ;
typedef int Vdbe ;
struct TYPE_17__ {int nExpr; } ;
struct TYPE_16__ {int nFunc; int nColumn; int mxReg; int mnReg; struct AggInfo_func* aFunc; TYPE_1__* aCol; } ;
struct TYPE_13__ {TYPE_7__* pList; } ;
struct TYPE_15__ {TYPE_2__ x; } ;
struct TYPE_14__ {int * pVdbe; } ;
struct TYPE_12__ {scalar_t__ iMem; } ;
typedef TYPE_3__ Parse ;
typedef int KeyInfo ;
typedef TYPE_4__ Expr ;
typedef TYPE_5__ AggInfo ;


 int EP_xIsSelect ;
 int ExprHasProperty (TYPE_4__*,int ) ;
 int OP_Null ;
 int OP_OpenEphemeral ;
 int P4_KEYINFO ;
 int assert (int) ;
 int sqlite3ErrorMsg (TYPE_3__*,char*) ;
 int * sqlite3KeyInfoFromExprList (TYPE_3__*,TYPE_7__*,int ,int ) ;
 int sqlite3VdbeAddOp3 (int *,int ,int ,scalar_t__,scalar_t__) ;
 int sqlite3VdbeAddOp4 (int *,int ,int,int ,int ,char*,int ) ;

__attribute__((used)) static void resetAccumulator(Parse *pParse, AggInfo *pAggInfo){
  Vdbe *v = pParse->pVdbe;
  int i;
  struct AggInfo_func *pFunc;
  int nReg = pAggInfo->nFunc + pAggInfo->nColumn;
  if( nReg==0 ) return;
  sqlite3VdbeAddOp3(v, OP_Null, 0, pAggInfo->mnReg, pAggInfo->mxReg);
  for(pFunc=pAggInfo->aFunc, i=0; i<pAggInfo->nFunc; i++, pFunc++){
    if( pFunc->iDistinct>=0 ){
      Expr *pE = pFunc->pExpr;
      assert( !ExprHasProperty(pE, EP_xIsSelect) );
      if( pE->x.pList==0 || pE->x.pList->nExpr!=1 ){
        sqlite3ErrorMsg(pParse, "DISTINCT aggregates must have exactly one "
           "argument");
        pFunc->iDistinct = -1;
      }else{
        KeyInfo *pKeyInfo = sqlite3KeyInfoFromExprList(pParse, pE->x.pList,0,0);
        sqlite3VdbeAddOp4(v, OP_OpenEphemeral, pFunc->iDistinct, 0, 0,
                          (char*)pKeyInfo, P4_KEYINFO);
      }
    }
  }
}
