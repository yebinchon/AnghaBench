
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


struct TYPE_13__ {struct TYPE_13__* pNextWin; } ;
typedef TYPE_4__ Window ;
struct TYPE_11__ {TYPE_1__* pSelect; } ;
struct TYPE_14__ {TYPE_2__ u; } ;
typedef TYPE_5__ Walker ;
struct TYPE_12__ {TYPE_4__* pWin; } ;
struct TYPE_15__ {TYPE_3__ y; } ;
struct TYPE_10__ {TYPE_4__* pWin; } ;
typedef TYPE_6__ Expr ;


 int EP_WinFunc ;
 scalar_t__ ExprHasProperty (TYPE_6__*,int ) ;
 int WRC_Continue ;

__attribute__((used)) static int resolveRemoveWindowsCb(Walker *pWalker, Expr *pExpr){
  if( ExprHasProperty(pExpr, EP_WinFunc) ){
    Window **pp;
    for(pp=&pWalker->u.pSelect->pWin; *pp; pp=&(*pp)->pNextWin){
      if( *pp==pExpr->y.pWin ){
        *pp = (*pp)->pNextWin;
        break;
      }
    }
  }
  return WRC_Continue;
}
