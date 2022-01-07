
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_stmt ;


 int COLNAME_DECLTYPE ;
 void const* columnName (int *,int,int,int ) ;

const void *sqlite3_column_decltype16(sqlite3_stmt *pStmt, int N){
  return columnName(pStmt, N, 1, COLNAME_DECLTYPE);
}
