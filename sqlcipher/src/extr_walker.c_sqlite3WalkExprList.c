
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ExprList_item {int pExpr; } ;
typedef int Walker ;
struct TYPE_3__ {int nExpr; struct ExprList_item* a; } ;
typedef TYPE_1__ ExprList ;


 int WRC_Abort ;
 int WRC_Continue ;
 scalar_t__ sqlite3WalkExpr (int *,int ) ;

int sqlite3WalkExprList(Walker *pWalker, ExprList *p){
  int i;
  struct ExprList_item *pItem;
  if( p ){
    for(i=p->nExpr, pItem=p->a; i>0; i--, pItem++){
      if( sqlite3WalkExpr(pWalker, pItem->pExpr) ) return WRC_Abort;
    }
  }
  return WRC_Continue;
}
