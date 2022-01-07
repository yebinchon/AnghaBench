
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ op; } ;
typedef int Parse ;
typedef TYPE_1__ Expr ;


 scalar_t__ ConstFactorOk (int *) ;
 scalar_t__ TK_REGISTER ;
 int sqlite3ExprCodeAtInit (int *,TYPE_1__*,int) ;
 int sqlite3ExprCodeTarget (int *,TYPE_1__*,int) ;
 scalar_t__ sqlite3ExprIsConstantNotJoin (TYPE_1__*) ;
 TYPE_1__* sqlite3ExprSkipCollate (TYPE_1__*) ;
 int sqlite3GetTempReg (int *) ;
 int sqlite3ReleaseTempReg (int *,int) ;

int sqlite3ExprCodeTemp(Parse *pParse, Expr *pExpr, int *pReg){
  int r2;
  pExpr = sqlite3ExprSkipCollate(pExpr);
  if( ConstFactorOk(pParse)
   && pExpr->op!=TK_REGISTER
   && sqlite3ExprIsConstantNotJoin(pExpr)
  ){
    *pReg = 0;
    r2 = sqlite3ExprCodeAtInit(pParse, pExpr, -1);
  }else{
    int r1 = sqlite3GetTempReg(pParse);
    r2 = sqlite3ExprCodeTarget(pParse, pExpr, r1);
    if( r2==r1 ){
      *pReg = r1;
    }else{
      sqlite3ReleaseTempReg(pParse, r1);
      *pReg = 0;
    }
  }
  return r2;
}
