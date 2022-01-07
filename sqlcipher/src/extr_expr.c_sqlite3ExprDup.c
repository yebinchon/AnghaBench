
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3 ;
typedef int Expr ;


 int EXPRDUP_REDUCE ;
 int assert (int) ;
 int * exprDup (int *,int *,int,int ) ;

Expr *sqlite3ExprDup(sqlite3 *db, Expr *p, int flags){
  assert( flags==0 || flags==EXPRDUP_REDUCE );
  return p ? exprDup(db, p, flags, 0) : 0;
}
