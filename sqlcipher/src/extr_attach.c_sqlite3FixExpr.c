
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


struct TYPE_17__ {int zType; TYPE_10__* pParse; } ;
struct TYPE_13__ {int pList; int pSelect; } ;
struct TYPE_16__ {scalar_t__ op; struct TYPE_16__* pLeft; struct TYPE_16__* pRight; TYPE_1__ x; } ;
struct TYPE_14__ {scalar_t__ busy; } ;
struct TYPE_15__ {TYPE_2__ init; } ;
struct TYPE_12__ {TYPE_3__* db; } ;
typedef TYPE_4__ Expr ;
typedef TYPE_5__ DbFixer ;


 int EP_Leaf ;
 int EP_TokenOnly ;
 int EP_xIsSelect ;
 scalar_t__ ExprHasProperty (TYPE_4__*,int) ;
 scalar_t__ TK_NULL ;
 scalar_t__ TK_VARIABLE ;
 int sqlite3ErrorMsg (TYPE_10__*,char*,int ) ;
 scalar_t__ sqlite3FixExprList (TYPE_5__*,int ) ;
 scalar_t__ sqlite3FixSelect (TYPE_5__*,int ) ;

int sqlite3FixExpr(
  DbFixer *pFix,
  Expr *pExpr
){
  while( pExpr ){
    if( pExpr->op==TK_VARIABLE ){
      if( pFix->pParse->db->init.busy ){
        pExpr->op = TK_NULL;
      }else{
        sqlite3ErrorMsg(pFix->pParse, "%s cannot use variables", pFix->zType);
        return 1;
      }
    }
    if( ExprHasProperty(pExpr, EP_TokenOnly|EP_Leaf) ) break;
    if( ExprHasProperty(pExpr, EP_xIsSelect) ){
      if( sqlite3FixSelect(pFix, pExpr->x.pSelect) ) return 1;
    }else{
      if( sqlite3FixExprList(pFix, pExpr->x.pList) ) return 1;
    }
    if( sqlite3FixExpr(pFix, pExpr->pRight) ){
      return 1;
    }
    pExpr = pExpr->pLeft;
  }
  return 0;
}
