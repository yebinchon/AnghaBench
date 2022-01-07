
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {TYPE_4__* pSelect; } ;
struct TYPE_14__ {TYPE_3__ u; } ;
typedef TYPE_5__ Walker ;
struct TYPE_10__ {TYPE_2__* pWin; } ;
struct TYPE_15__ {scalar_t__ op; TYPE_1__ y; } ;
struct TYPE_13__ {TYPE_2__* pWin; } ;
struct TYPE_11__ {struct TYPE_11__* pNextWin; } ;
typedef TYPE_6__ Expr ;


 int EP_WinFunc ;
 int ExprHasProperty (TYPE_6__*,int ) ;
 scalar_t__ TK_FUNCTION ;
 int WRC_Continue ;
 int assert (int ) ;

__attribute__((used)) static int gatherSelectWindowsCallback(Walker *pWalker, Expr *pExpr){
  if( pExpr->op==TK_FUNCTION && pExpr->y.pWin!=0 ){
    assert( ExprHasProperty(pExpr, EP_WinFunc) );
    pExpr->y.pWin->pNextWin = pWalker->u.pSelect->pWin;
    pWalker->u.pSelect->pWin = pExpr->y.pWin;
  }
  return WRC_Continue;
}
