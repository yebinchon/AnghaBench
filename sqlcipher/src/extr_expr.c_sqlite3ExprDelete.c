
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3 ;
typedef int Expr ;


 int sqlite3ExprDeleteNN (int *,int *) ;

void sqlite3ExprDelete(sqlite3 *db, Expr *p){
  if( p ) sqlite3ExprDeleteNN(db, p);
}
