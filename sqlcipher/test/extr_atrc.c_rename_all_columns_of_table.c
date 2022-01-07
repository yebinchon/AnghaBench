
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_str ;
typedef int sqlite3_stmt ;
typedef int sqlite3 ;


 int SQLITE_OK ;
 scalar_t__ SQLITE_ROW ;
 int SQLITE_STATIC ;
 int sqlite3_bind_text (int *,int,char const*,int,int ) ;
 scalar_t__ sqlite3_column_text (int *,int ) ;
 int sqlite3_finalize (int *) ;
 int sqlite3_prepare_v2 (int *,char*,int,int **,int ) ;
 scalar_t__ sqlite3_step (int *) ;
 int sqlite3_str_appendf (int *,char*,char const*,char const*,...) ;

int rename_all_columns_of_table(
  sqlite3 *db,
  const char *zTab,
  const char *zColPrefix,
  sqlite3_str *pConvert,
  sqlite3_str *pUndo
){
  sqlite3_stmt *pStmt;
  int rc;
  int cnt = 0;

  rc = sqlite3_prepare_v2(db,
         "SELECT name FROM pragma_table_info(?1);",
         -1, &pStmt, 0);
  if( rc ) return rc;
  sqlite3_bind_text(pStmt, 1, zTab, -1, SQLITE_STATIC);
  while( sqlite3_step(pStmt)==SQLITE_ROW ){
    const char *zCol = (const char*)sqlite3_column_text(pStmt, 0);
    cnt++;
    sqlite3_str_appendf(pConvert,
      "ALTER TABLE \"%w\" RENAME COLUMN \"%w\" TO \"%w%d\";\n",
      zTab, zCol, zColPrefix, cnt
    );
    if( pUndo ){
      sqlite3_str_appendf(pUndo,
        "ALTER TABLE \"%w\" RENAME COLUMN \"%w%d\" TO \"%w\";\n",
        zTab, zColPrefix, cnt, zCol
      );
    }
  }
  sqlite3_finalize(pStmt);
  return SQLITE_OK;
}
