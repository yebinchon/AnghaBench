
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_stmt ;
typedef int sqlite3_int64 ;
typedef int Fts3Table ;


 int fts3SelectDocsize (int *,int ,int **) ;

int sqlite3Fts3SelectDocsize(
  Fts3Table *pTab,
  sqlite3_int64 iDocid,
  sqlite3_stmt **ppStmt
){
  return fts3SelectDocsize(pTab, iDocid, ppStmt);
}
