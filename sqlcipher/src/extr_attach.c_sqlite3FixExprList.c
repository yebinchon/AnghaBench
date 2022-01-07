
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ExprList_item {int pExpr; } ;
struct TYPE_3__ {int nExpr; struct ExprList_item* a; } ;
typedef TYPE_1__ ExprList ;
typedef int DbFixer ;


 scalar_t__ sqlite3FixExpr (int *,int ) ;

int sqlite3FixExprList(
  DbFixer *pFix,
  ExprList *pList
){
  int i;
  struct ExprList_item *pItem;
  if( pList==0 ) return 0;
  for(i=0, pItem=pList->a; i<pList->nExpr; i++, pItem++){
    if( sqlite3FixExpr(pFix, pItem->pExpr) ){
      return 1;
    }
  }
  return 0;
}
