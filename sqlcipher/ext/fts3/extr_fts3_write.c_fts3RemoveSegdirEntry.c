
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_stmt ;
typedef int sqlite3_int64 ;
typedef int Fts3Table ;


 int SQLITE_OK ;
 int SQL_DELETE_SEGDIR_ENTRY ;
 int fts3SqlStmt (int *,int ,int **,int ) ;
 int sqlite3_bind_int (int *,int,int) ;
 int sqlite3_bind_int64 (int *,int,int ) ;
 int sqlite3_reset (int *) ;
 int sqlite3_step (int *) ;

__attribute__((used)) static int fts3RemoveSegdirEntry(
  Fts3Table *p,
  sqlite3_int64 iAbsLevel,
  int iIdx
){
  int rc;
  sqlite3_stmt *pDelete = 0;

  rc = fts3SqlStmt(p, SQL_DELETE_SEGDIR_ENTRY, &pDelete, 0);
  if( rc==SQLITE_OK ){
    sqlite3_bind_int64(pDelete, 1, iAbsLevel);
    sqlite3_bind_int(pDelete, 2, iIdx);
    sqlite3_step(pDelete);
    rc = sqlite3_reset(pDelete);
  }

  return rc;
}
