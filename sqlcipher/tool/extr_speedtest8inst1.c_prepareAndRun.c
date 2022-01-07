
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_vfs ;
typedef scalar_t__ sqlite3_uint64 ;
typedef int sqlite3_stmt ;
typedef int sqlite3 ;


 int BINARYLOG_FINALIZE ;
 int BINARYLOG_PREPARE_V2 ;
 int BINARYLOG_STEP ;
 int SQLITE_OK ;
 int SQLITE_ROW ;
 scalar_t__ sqlite3Hwtime () ;
 int sqlite3_finalize (int *) ;
 int sqlite3_instvfs_binarylog_call (int *,int ,scalar_t__,int,char const*) ;
 int sqlite3_instvfs_binarylog_marker (int *,char*) ;
 int sqlite3_prepare_v2 (int *,char const*,int,int **,char const**) ;
 int sqlite3_snprintf (int,char*,char*,char const*) ;
 int sqlite3_step (int *) ;

__attribute__((used)) static void prepareAndRun(sqlite3_vfs *pInstVfs, sqlite3 *db, const char *zSql){
  sqlite3_stmt *pStmt;
  const char *stmtTail;
  int rc;
  char zMessage[1024];
  zMessage[1023] = '\0';

  sqlite3_uint64 iTime;

  sqlite3_snprintf(1023, zMessage, "sqlite3_prepare_v2: %s", zSql);
  sqlite3_instvfs_binarylog_marker(pInstVfs, zMessage);

  iTime = sqlite3Hwtime();
  rc = sqlite3_prepare_v2(db, zSql, -1, &pStmt, &stmtTail);
  iTime = sqlite3Hwtime() - iTime;
  sqlite3_instvfs_binarylog_call(pInstVfs,BINARYLOG_PREPARE_V2,iTime,rc,zSql);

  if( rc==SQLITE_OK ){
    int nRow = 0;

    sqlite3_snprintf(1023, zMessage, "sqlite3_step loop: %s", zSql);
    sqlite3_instvfs_binarylog_marker(pInstVfs, zMessage);
    iTime = sqlite3Hwtime();
    while( (rc=sqlite3_step(pStmt))==SQLITE_ROW ){ nRow++; }
    iTime = sqlite3Hwtime() - iTime;
    sqlite3_instvfs_binarylog_call(pInstVfs, BINARYLOG_STEP, iTime, rc, zSql);

    sqlite3_snprintf(1023, zMessage, "sqlite3_finalize: %s", zSql);
    sqlite3_instvfs_binarylog_marker(pInstVfs, zMessage);
    iTime = sqlite3Hwtime();
    rc = sqlite3_finalize(pStmt);
    iTime = sqlite3Hwtime() - iTime;
    sqlite3_instvfs_binarylog_call(pInstVfs, BINARYLOG_FINALIZE, iTime, rc, zSql);
  }
}
