
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_stmt ;
typedef int sqlite3_session ;
typedef int sqlite3 ;


 int SQLITE_OK ;
 int abort_due_to_error (int) ;
 int execsql (int *,char*) ;
 int sqlite3_bind_int (int *,int,int) ;
 int sqlite3_finalize (int *) ;
 int sqlite3_free (void*) ;
 int sqlite3_prepare (int *,char const*,int,int **,int ) ;
 int sqlite3_reset (int *) ;
 int sqlite3_step (int *) ;
 int sqlite3changeset_apply (int *,int,void*,int ,int ,int ) ;
 int sqlite3session_attach (int *,int ) ;
 int sqlite3session_changeset (int *,int*,void**) ;
 int sqlite3session_create (int *,char*,int **) ;
 int sqlite3session_delete (int *) ;
 int xConflict ;

__attribute__((used)) static void run_test(
  sqlite3 *db,
  sqlite3 *db2,
  int nRow,
  const char *zSql
){
  sqlite3_session *pSession = 0;
  sqlite3_stmt *pStmt = 0;
  int rc;
  int i;
  int nChangeset;
  void *pChangeset;


  rc = sqlite3session_create(db, "main", &pSession);
  if( rc!=SQLITE_OK ) abort_due_to_error(rc);


  rc = sqlite3session_attach(pSession, 0);
  if( rc!=SQLITE_OK ) abort_due_to_error(rc);


  rc = sqlite3_prepare(db, zSql, -1, &pStmt, 0);
  if( rc!=SQLITE_OK ) abort_due_to_error(rc);


  execsql(db, "BEGIN");


  for(i=0; i<nRow; i++){
    sqlite3_bind_int(pStmt, 1, i);
    sqlite3_step(pStmt);
    rc = sqlite3_reset(pStmt);
    if( rc!=SQLITE_OK ) abort_due_to_error(rc);
  }
  sqlite3_finalize(pStmt);


  rc = sqlite3session_changeset(pSession, &nChangeset, &pChangeset);
  if( rc!=SQLITE_OK ) abort_due_to_error(rc);
  execsql(db, "COMMIT");


  rc = sqlite3changeset_apply(db2, nChangeset, pChangeset, 0, xConflict, 0);
  if( rc!=SQLITE_OK ) abort_due_to_error(rc);


  sqlite3_free(pChangeset);
  sqlite3session_delete(pSession);
}
