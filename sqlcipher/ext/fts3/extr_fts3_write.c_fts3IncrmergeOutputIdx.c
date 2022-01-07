
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_stmt ;
typedef scalar_t__ sqlite3_int64 ;
typedef int Fts3Table ;


 int SQLITE_OK ;
 int SQL_NEXT_SEGMENT_INDEX ;
 int fts3SqlStmt (int *,int ,int **,int ) ;
 int sqlite3_bind_int64 (int *,int,scalar_t__) ;
 int sqlite3_column_int (int *,int ) ;
 int sqlite3_reset (int *) ;
 int sqlite3_step (int *) ;

__attribute__((used)) static int fts3IncrmergeOutputIdx(
  Fts3Table *p,
  sqlite3_int64 iAbsLevel,
  int *piIdx
){
  int rc;
  sqlite3_stmt *pOutputIdx = 0;

  rc = fts3SqlStmt(p, SQL_NEXT_SEGMENT_INDEX, &pOutputIdx, 0);
  if( rc==SQLITE_OK ){
    sqlite3_bind_int64(pOutputIdx, 1, iAbsLevel+1);
    sqlite3_step(pOutputIdx);
    *piIdx = sqlite3_column_int(pOutputIdx, 0);
    rc = sqlite3_reset(pOutputIdx);
  }

  return rc;
}
