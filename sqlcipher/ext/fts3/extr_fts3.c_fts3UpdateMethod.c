
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite_int64 ;
typedef int sqlite3_vtab ;
typedef int sqlite3_value ;


 int sqlite3Fts3UpdateMethod (int *,int,int **,int *) ;

__attribute__((used)) static int fts3UpdateMethod(
  sqlite3_vtab *pVtab,
  int nArg,
  sqlite3_value **apVal,
  sqlite_int64 *pRowid
){
  return sqlite3Fts3UpdateMethod(pVtab, nArg, apVal, pRowid);
}
