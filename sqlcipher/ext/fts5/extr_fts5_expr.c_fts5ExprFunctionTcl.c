
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_value ;
typedef int sqlite3_context ;


 int fts5ExprFunction (int *,int,int **,int) ;

__attribute__((used)) static void fts5ExprFunctionTcl(
  sqlite3_context *pCtx,
  int nArg,
  sqlite3_value **apVal
){
  fts5ExprFunction(pCtx, nArg, apVal, 1);
}
