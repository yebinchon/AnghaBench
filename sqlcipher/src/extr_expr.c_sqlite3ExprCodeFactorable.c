
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ okConstFactor; } ;
typedef TYPE_1__ Parse ;
typedef int Expr ;


 int sqlite3ExprCode (TYPE_1__*,int *,int) ;
 int sqlite3ExprCodeAtInit (TYPE_1__*,int *,int) ;
 scalar_t__ sqlite3ExprIsConstantNotJoin (int *) ;

void sqlite3ExprCodeFactorable(Parse *pParse, Expr *pExpr, int target){
  if( pParse->okConstFactor && sqlite3ExprIsConstantNotJoin(pExpr) ){
    sqlite3ExprCodeAtInit(pParse, pExpr, target);
  }else{
    sqlite3ExprCode(pParse, pExpr, target);
  }
}
