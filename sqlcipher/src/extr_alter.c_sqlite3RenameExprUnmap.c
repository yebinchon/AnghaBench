
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int xExprCallback; int * pParse; } ;
typedef TYPE_1__ Walker ;
typedef int Parse ;
typedef int Expr ;


 int memset (TYPE_1__*,int ,int) ;
 int renameUnmapExprCb ;
 int sqlite3WalkExpr (TYPE_1__*,int *) ;

void sqlite3RenameExprUnmap(Parse *pParse, Expr *pExpr){
  Walker sWalker;
  memset(&sWalker, 0, sizeof(Walker));
  sWalker.pParse = pParse;
  sWalker.xExprCallback = renameUnmapExprCb;
  sqlite3WalkExpr(&sWalker, pExpr);
}
