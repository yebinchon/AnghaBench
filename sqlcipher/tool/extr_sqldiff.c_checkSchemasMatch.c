
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_stmt ;


 scalar_t__ SQLITE_ROW ;
 int * db_prepare (char*,char const*,char const*) ;
 int runtimeError (char*,int ) ;
 int safeId (char const*) ;
 scalar_t__ sqlite3_column_int (int *,int ) ;
 int sqlite3_finalize (int *) ;
 scalar_t__ sqlite3_step (int *) ;

__attribute__((used)) static void checkSchemasMatch(const char *zTab){
  sqlite3_stmt *pStmt = db_prepare(
      "SELECT A.sql=B.sql FROM main.sqlite_master A, aux.sqlite_master B"
      " WHERE A.name=%Q AND B.name=%Q", zTab, zTab
  );
  if( SQLITE_ROW==sqlite3_step(pStmt) ){
    if( sqlite3_column_int(pStmt,0)==0 ){
      runtimeError("schema changes for table %s", safeId(zTab));
    }
  }else{
    runtimeError("table %s missing from one or both databases", safeId(zTab));
  }
  sqlite3_finalize(pStmt);
}
