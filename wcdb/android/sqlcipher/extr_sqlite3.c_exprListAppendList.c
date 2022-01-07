
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int nExpr; TYPE_1__* a; } ;
struct TYPE_12__ {int db; } ;
struct TYPE_11__ {int sortOrder; int pExpr; } ;
typedef TYPE_2__ Parse ;
typedef TYPE_3__ ExprList ;
typedef int Expr ;


 int * sqlite3ExprDup (int ,int ,int ) ;
 TYPE_3__* sqlite3ExprListAppend (TYPE_2__*,TYPE_3__*,int *) ;

__attribute__((used)) static ExprList *exprListAppendList(
  Parse *pParse,
  ExprList *pList,
  ExprList *pAppend
){
  if( pAppend ){
    int i;
    int nInit = pList ? pList->nExpr : 0;
    for(i=0; i<pAppend->nExpr; i++){
      Expr *pDup = sqlite3ExprDup(pParse->db, pAppend->a[i].pExpr, 0);
      pList = sqlite3ExprListAppend(pParse, pList, pDup);
      if( pList ) pList->a[nInit+i].sortOrder = pAppend->a[i].sortOrder;
    }
  }
  return pList;
}
