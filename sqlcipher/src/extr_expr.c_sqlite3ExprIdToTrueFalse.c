
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int zToken; } ;
struct TYPE_6__ {scalar_t__ op; TYPE_1__ u; } ;
typedef TYPE_2__ Expr ;


 int EP_Quoted ;
 int ExprHasProperty (TYPE_2__*,int ) ;
 scalar_t__ TK_ID ;
 scalar_t__ TK_STRING ;
 scalar_t__ TK_TRUEFALSE ;
 int assert (int) ;
 scalar_t__ sqlite3StrICmp (int ,char*) ;

int sqlite3ExprIdToTrueFalse(Expr *pExpr){
  assert( pExpr->op==TK_ID || pExpr->op==TK_STRING );
  if( !ExprHasProperty(pExpr, EP_Quoted)
   && (sqlite3StrICmp(pExpr->u.zToken, "true")==0
       || sqlite3StrICmp(pExpr->u.zToken, "false")==0)
  ){
    pExpr->op = TK_TRUEFALSE;
    return 1;
  }
  return 0;
}
