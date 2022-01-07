
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int (* xSelectCallback ) (TYPE_1__*,TYPE_2__*) ;int (* xSelectCallback2 ) (TYPE_1__*,TYPE_2__*) ;} ;
typedef TYPE_1__ Walker ;
struct TYPE_14__ {struct TYPE_14__* pPrior; } ;
typedef TYPE_2__ Select ;


 int WRC_Abort ;
 int WRC_Continue ;
 scalar_t__ sqlite3WalkSelectExpr (TYPE_1__*,TYPE_2__*) ;
 scalar_t__ sqlite3WalkSelectFrom (TYPE_1__*,TYPE_2__*) ;
 int stub1 (TYPE_1__*,TYPE_2__*) ;
 int stub2 (TYPE_1__*,TYPE_2__*) ;

int sqlite3WalkSelect(Walker *pWalker, Select *p){
  int rc;
  if( p==0 ) return WRC_Continue;
  if( pWalker->xSelectCallback==0 ) return WRC_Continue;
  do{
    rc = pWalker->xSelectCallback(pWalker, p);
    if( rc ) return rc & WRC_Abort;
    if( sqlite3WalkSelectExpr(pWalker, p)
     || sqlite3WalkSelectFrom(pWalker, p)
    ){
      return WRC_Abort;
    }
    if( pWalker->xSelectCallback2 ){
      pWalker->xSelectCallback2(pWalker, p);
    }
    p = p->pPrior;
  }while( p!=0 );
  return WRC_Continue;
}
