
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_stmt ;
typedef int sqlite3 ;


 scalar_t__ SQLITE_ROW ;
 int * prepare (int *,char*,...) ;
 int printf (char*,char const*) ;
 int sqlite3_column_int (int *,int ) ;
 char* sqlite3_column_text (int *,int ) ;
 int sqlite3_finalize (int *) ;
 scalar_t__ sqlite3_step (int *) ;

__attribute__((used)) static void showSchema(sqlite3 *db, const char *zTab){
  sqlite3_stmt *pStmt;
  pStmt = prepare(db,
            "SELECT sql FROM sqlite_master"
            " WHERE name LIKE '%q%%'"
            " ORDER BY 1",
            zTab);
  while( sqlite3_step(pStmt)==SQLITE_ROW ){
    printf("%s;\n", sqlite3_column_text(pStmt, 0));
  }
  sqlite3_finalize(pStmt);
  pStmt = prepare(db, "PRAGMA page_size");
  while( sqlite3_step(pStmt)==SQLITE_ROW ){
    printf("PRAGMA page_size=%s;\n", sqlite3_column_text(pStmt, 0));
  }
  sqlite3_finalize(pStmt);
  pStmt = prepare(db, "PRAGMA journal_mode");
  while( sqlite3_step(pStmt)==SQLITE_ROW ){
    printf("PRAGMA journal_mode=%s;\n", sqlite3_column_text(pStmt, 0));
  }
  sqlite3_finalize(pStmt);
  pStmt = prepare(db, "PRAGMA auto_vacuum");
  while( sqlite3_step(pStmt)==SQLITE_ROW ){
    const char *zType = "???";
    switch( sqlite3_column_int(pStmt, 0) ){
      case 0: zType = "OFF"; break;
      case 1: zType = "FULL"; break;
      case 2: zType = "INCREMENTAL"; break;
    }
    printf("PRAGMA auto_vacuum=%s;\n", zType);
  }
  sqlite3_finalize(pStmt);
  pStmt = prepare(db, "PRAGMA encoding");
  while( sqlite3_step(pStmt)==SQLITE_ROW ){
    printf("PRAGMA encoding=%s;\n", sqlite3_column_text(pStmt, 0));
  }
  sqlite3_finalize(pStmt);
}
