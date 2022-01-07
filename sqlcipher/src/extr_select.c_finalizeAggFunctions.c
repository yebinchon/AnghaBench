
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct AggInfo_func {int pFunc; int iMem; TYPE_7__* pExpr; } ;
typedef int Vdbe ;
struct TYPE_8__ {TYPE_3__* pList; } ;
struct TYPE_12__ {TYPE_1__ x; } ;
struct TYPE_11__ {int nFunc; struct AggInfo_func* aFunc; } ;
struct TYPE_10__ {int nExpr; } ;
struct TYPE_9__ {int * pVdbe; } ;
typedef TYPE_2__ Parse ;
typedef TYPE_3__ ExprList ;
typedef TYPE_4__ AggInfo ;


 int EP_xIsSelect ;
 int ExprHasProperty (TYPE_7__*,int ) ;
 int OP_AggFinal ;
 int P4_FUNCDEF ;
 int assert (int) ;
 int sqlite3VdbeAddOp2 (int *,int ,int ,int ) ;
 int sqlite3VdbeAppendP4 (int *,int ,int ) ;

__attribute__((used)) static void finalizeAggFunctions(Parse *pParse, AggInfo *pAggInfo){
  Vdbe *v = pParse->pVdbe;
  int i;
  struct AggInfo_func *pF;
  for(i=0, pF=pAggInfo->aFunc; i<pAggInfo->nFunc; i++, pF++){
    ExprList *pList = pF->pExpr->x.pList;
    assert( !ExprHasProperty(pF->pExpr, EP_xIsSelect) );
    sqlite3VdbeAddOp2(v, OP_AggFinal, pF->iMem, pList ? pList->nExpr : 0);
    sqlite3VdbeAppendP4(v, pF->pFunc, P4_FUNCDEF);
  }
}
