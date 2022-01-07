
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int * pParse; } ;
typedef TYPE_1__ Walker ;
struct TYPE_9__ {int pWinDefn; int pLimit; int pOrderBy; int pHaving; int pGroupBy; int pWhere; int pEList; } ;
typedef TYPE_2__ Select ;
typedef int Parse ;


 scalar_t__ IN_RENAME_OBJECT ;
 int WRC_Abort ;
 int WRC_Continue ;
 int assert (int) ;
 scalar_t__ sqlite3WalkExpr (TYPE_1__*,int ) ;
 scalar_t__ sqlite3WalkExprList (TYPE_1__*,int ) ;
 int walkWindowList (TYPE_1__*,int ) ;

int sqlite3WalkSelectExpr(Walker *pWalker, Select *p){
  if( sqlite3WalkExprList(pWalker, p->pEList) ) return WRC_Abort;
  if( sqlite3WalkExpr(pWalker, p->pWhere) ) return WRC_Abort;
  if( sqlite3WalkExprList(pWalker, p->pGroupBy) ) return WRC_Abort;
  if( sqlite3WalkExpr(pWalker, p->pHaving) ) return WRC_Abort;
  if( sqlite3WalkExprList(pWalker, p->pOrderBy) ) return WRC_Abort;
  if( sqlite3WalkExpr(pWalker, p->pLimit) ) return WRC_Abort;

  {
    Parse *pParse = pWalker->pParse;
    if( pParse && IN_RENAME_OBJECT ){
      int rc = walkWindowList(pWalker, p->pWinDefn);
      assert( rc==WRC_Continue );
      return rc;
    }
  }

  return WRC_Continue;
}
