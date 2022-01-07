
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int nExpr; TYPE_1__* a; } ;
struct TYPE_4__ {int pExpr; } ;
typedef int NameContext ;
typedef TYPE_2__ ExprList ;


 int WRC_Abort ;
 int WRC_Continue ;
 scalar_t__ sqlite3ResolveExprNames (int *,int ) ;

int sqlite3ResolveExprListNames(
  NameContext *pNC,
  ExprList *pList
){
  int i;
  if( pList ){
    for(i=0; i<pList->nExpr; i++){
      if( sqlite3ResolveExprNames(pNC, pList->a[i].pExpr) ) return WRC_Abort;
    }
  }
  return WRC_Continue;
}
