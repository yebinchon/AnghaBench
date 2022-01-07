
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3 ;
typedef int ExprList ;


 int exprListDeleteNN (int *,int *) ;

void sqlite3ExprListDelete(sqlite3 *db, ExprList *pList){
  if( pList ) exprListDeleteNN(db, pList);
}
