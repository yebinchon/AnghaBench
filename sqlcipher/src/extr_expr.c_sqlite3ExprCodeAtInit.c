
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int iConstExprReg; } ;
struct ExprList_item {int reusable; TYPE_1__ u; int pExpr; } ;
struct TYPE_11__ {int nExpr; struct ExprList_item* a; } ;
struct TYPE_10__ {int nMem; TYPE_3__* pConstExpr; int db; } ;
typedef TYPE_2__ Parse ;
typedef TYPE_3__ ExprList ;
typedef int Expr ;


 int ConstFactorOk (TYPE_2__*) ;
 int assert (int ) ;
 scalar_t__ sqlite3ExprCompare (int ,int ,int *,int) ;
 int * sqlite3ExprDup (int ,int *,int ) ;
 TYPE_3__* sqlite3ExprListAppend (TYPE_2__*,TYPE_3__*,int *) ;

int sqlite3ExprCodeAtInit(
  Parse *pParse,
  Expr *pExpr,
  int regDest
){
  ExprList *p;
  assert( ConstFactorOk(pParse) );
  p = pParse->pConstExpr;
  if( regDest<0 && p ){
    struct ExprList_item *pItem;
    int i;
    for(pItem=p->a, i=p->nExpr; i>0; pItem++, i--){
      if( pItem->reusable && sqlite3ExprCompare(0,pItem->pExpr,pExpr,-1)==0 ){
        return pItem->u.iConstExprReg;
      }
    }
  }
  pExpr = sqlite3ExprDup(pParse->db, pExpr, 0);
  p = sqlite3ExprListAppend(pParse, p, pExpr);
  if( p ){
     struct ExprList_item *pItem = &p->a[p->nExpr-1];
     pItem->reusable = regDest<0;
     if( regDest<0 ) regDest = ++pParse->nMem;
     pItem->u.iConstExprReg = regDest;
  }
  pParse->pConstExpr = p;
  return regDest;
}
