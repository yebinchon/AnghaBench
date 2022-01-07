
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* pPrior; TYPE_2__* pWith; int pLimit; int pOrderBy; int pHaving; int pGroupBy; int pWhere; int pSrc; int pEList; } ;
struct TYPE_6__ {int nCte; TYPE_1__* a; } ;
struct TYPE_5__ {TYPE_3__* pSelect; } ;
typedef TYPE_3__ Select ;
typedef int DbFixer ;


 scalar_t__ sqlite3FixExpr (int *,int ) ;
 scalar_t__ sqlite3FixExprList (int *,int ) ;
 scalar_t__ sqlite3FixSrcList (int *,int ) ;

int sqlite3FixSelect(
  DbFixer *pFix,
  Select *pSelect
){
  while( pSelect ){
    if( sqlite3FixExprList(pFix, pSelect->pEList) ){
      return 1;
    }
    if( sqlite3FixSrcList(pFix, pSelect->pSrc) ){
      return 1;
    }
    if( sqlite3FixExpr(pFix, pSelect->pWhere) ){
      return 1;
    }
    if( sqlite3FixExprList(pFix, pSelect->pGroupBy) ){
      return 1;
    }
    if( sqlite3FixExpr(pFix, pSelect->pHaving) ){
      return 1;
    }
    if( sqlite3FixExprList(pFix, pSelect->pOrderBy) ){
      return 1;
    }
    if( sqlite3FixExpr(pFix, pSelect->pLimit) ){
      return 1;
    }
    if( pSelect->pWith ){
      int i;
      for(i=0; i<pSelect->pWith->nCte; i++){
        if( sqlite3FixSelect(pFix, pSelect->pWith->a[i].pSelect) ){
          return 1;
        }
      }
    }
    pSelect = pSelect->pPrior;
  }
  return 0;
}
