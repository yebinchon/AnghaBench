
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int WhereMaskSet ;
struct TYPE_5__ {int nExpr; TYPE_1__* a; } ;
struct TYPE_4__ {int pExpr; } ;
typedef TYPE_2__ ExprList ;
typedef int Bitmask ;


 int sqlite3WhereExprUsage (int *,int ) ;

Bitmask sqlite3WhereExprListUsage(WhereMaskSet *pMaskSet, ExprList *pList){
  int i;
  Bitmask mask = 0;
  if( pList ){
    for(i=0; i<pList->nExpr; i++){
      mask |= sqlite3WhereExprUsage(pMaskSet, pList->a[i].pExpr);
    }
  }
  return mask;
}
