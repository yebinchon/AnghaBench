
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__* zToken; } ;
struct TYPE_5__ {scalar_t__ op; TYPE_1__ u; } ;
typedef TYPE_2__ Expr ;


 scalar_t__ TK_TRUEFALSE ;
 int assert (int) ;
 scalar_t__ sqlite3StrICmp (scalar_t__*,char*) ;

int sqlite3ExprTruthValue(const Expr *pExpr){
  assert( pExpr->op==TK_TRUEFALSE );
  assert( sqlite3StrICmp(pExpr->u.zToken,"true")==0
       || sqlite3StrICmp(pExpr->u.zToken,"false")==0 );
  return pExpr->u.zToken[4]==0;
}
