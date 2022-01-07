
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int xExprCallback; int * pParse; } ;
typedef TYPE_2__ Walker ;
struct TYPE_10__ {int nExpr; TYPE_1__* a; } ;
struct TYPE_8__ {scalar_t__ zName; } ;
typedef int Parse ;
typedef TYPE_3__ ExprList ;


 int memset (TYPE_2__*,int ,int) ;
 int renameUnmapExprCb ;
 int sqlite3RenameTokenRemap (int *,int ,void*) ;
 int sqlite3WalkExprList (TYPE_2__*,TYPE_3__*) ;

void sqlite3RenameExprlistUnmap(Parse *pParse, ExprList *pEList){
  if( pEList ){
    int i;
    Walker sWalker;
    memset(&sWalker, 0, sizeof(Walker));
    sWalker.pParse = pParse;
    sWalker.xExprCallback = renameUnmapExprCb;
    sqlite3WalkExprList(&sWalker, pEList);
    for(i=0; i<pEList->nExpr; i++){
      sqlite3RenameTokenRemap(pParse, 0, (void*)pEList->a[i].zName);
    }
  }
}
