
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int sqlite3_value ;
typedef int sqlite3 ;
typedef int Expr ;


 int valueFromExpr (int *,int *,int ,int ,int **,int ) ;

int sqlite3ValueFromExpr(
  sqlite3 *db,
  Expr *pExpr,
  u8 enc,
  u8 affinity,
  sqlite3_value **ppVal
){
  return pExpr ? valueFromExpr(db, pExpr, enc, affinity, ppVal, 0) : 0;
}
