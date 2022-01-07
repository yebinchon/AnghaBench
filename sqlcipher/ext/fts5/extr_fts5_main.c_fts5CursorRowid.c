
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int i64 ;
struct TYPE_5__ {scalar_t__ ePlan; int pExpr; TYPE_1__* pSorter; } ;
struct TYPE_4__ {int iRowid; } ;
typedef TYPE_2__ Fts5Cursor ;


 scalar_t__ FTS5_PLAN_MATCH ;
 scalar_t__ FTS5_PLAN_SORTED_MATCH ;
 scalar_t__ FTS5_PLAN_SOURCE ;
 int assert (int) ;
 int sqlite3Fts5ExprRowid (int ) ;

__attribute__((used)) static i64 fts5CursorRowid(Fts5Cursor *pCsr){
  assert( pCsr->ePlan==FTS5_PLAN_MATCH
       || pCsr->ePlan==FTS5_PLAN_SORTED_MATCH
       || pCsr->ePlan==FTS5_PLAN_SOURCE
  );
  if( pCsr->pSorter ){
    return pCsr->pSorter->iRowid;
  }else{
    return sqlite3Fts5ExprRowid(pCsr->pExpr);
  }
}
