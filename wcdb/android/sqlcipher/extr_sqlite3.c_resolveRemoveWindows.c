
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * pSelect; } ;
struct TYPE_6__ {TYPE_1__ u; int xExprCallback; } ;
typedef TYPE_2__ Walker ;
typedef int Select ;
typedef int Expr ;


 int memset (TYPE_2__*,int ,int) ;
 int resolveRemoveWindowsCb ;
 int sqlite3WalkExpr (TYPE_2__*,int *) ;

__attribute__((used)) static void resolveRemoveWindows(Select *pSelect, Expr *pExpr){
  Walker sWalker;
  memset(&sWalker, 0, sizeof(Walker));
  sWalker.xExprCallback = resolveRemoveWindowsCb;
  sWalker.u.pSelect = pSelect;
  sqlite3WalkExpr(&sWalker, pExpr);
}
