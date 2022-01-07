
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_stmt ;
typedef int sqlite3 ;


 int atoi64 (char const*) ;
 int * prepare (int *,char*,char const*,int ) ;

__attribute__((used)) static sqlite3_stmt *prepareToGetSegment(
  sqlite3 *db,
  const char *zTab,
  const char *zId
){
  sqlite3_stmt *pStmt;
  if( zId[0]=='r' ){
    pStmt = prepare(db, "SELECT root FROM '%q_segdir' WHERE rowid=%lld",
                    zTab, atoi64(zId+1));
  }else{
    pStmt = prepare(db, "SELECT block FROM '%q_segments' WHERE blockid=%lld",
                    zTab, atoi64(zId));
  }
  return pStmt;
}
