
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_stmt ;
typedef int sqlite3_int64 ;
typedef int sqlite3 ;


 scalar_t__ SQLITE_ROW ;
 int * prepare (int *,char*,char const*,int ) ;
 int sqlite3_column_int (int *,int ) ;
 int sqlite3_finalize (int *) ;
 scalar_t__ sqlite3_step (int *) ;

__attribute__((used)) static int isNullSegment(sqlite3 *db, const char *zTab, sqlite3_int64 iBlockId){
  sqlite3_stmt *pStmt;
  int rc = 1;

  pStmt = prepare(db, "SELECT block IS NULL FROM '%q_segments'"
                      " WHERE blockid=%lld", zTab, iBlockId);
  if( sqlite3_step(pStmt)==SQLITE_ROW ){
    rc = sqlite3_column_int(pStmt, 0);
  }
  sqlite3_finalize(pStmt);
  return rc;
}
