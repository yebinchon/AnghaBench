
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_str ;
typedef int sqlite3_stmt ;
typedef int sqlite3 ;


 int SQLITE_OK ;
 scalar_t__ SQLITE_ROW ;
 int rename_all_columns_of_table (int *,char const*,char*,int *,int *) ;
 scalar_t__ sqlite3_column_text (int *,int ) ;
 int sqlite3_finalize (int *) ;
 int sqlite3_free (char*) ;
 char* sqlite3_mprintf (char*,int) ;
 int sqlite3_prepare_v2 (int *,char*,int,int **,int ) ;
 scalar_t__ sqlite3_step (int *) ;
 int sqlite3_str_appendf (int *,char*,char const*,char const*) ;

int rename_all_tables(
  sqlite3 *db,
  sqlite3_str *pConvert,
  sqlite3_str *pUndo
){
  sqlite3_stmt *pStmt;
  int rc;
  int cnt = 0;

  rc = sqlite3_prepare_v2(db,
         "SELECT name FROM sqlite_master WHERE type='table'"
         " AND name NOT LIKE 'sqlite_%';",
         -1, &pStmt, 0);
  if( rc ) return rc;
  while( sqlite3_step(pStmt)==SQLITE_ROW ){
    const char *zTab = (const char*)sqlite3_column_text(pStmt, 0);
    char *zNewTab;
    char zPrefix[2];

    zPrefix[0] = (cnt%26) + 'a';
    zPrefix[1] = 0;
    zNewTab = sqlite3_mprintf("tx%d", ++cnt);
    if( pUndo ){
      sqlite3_str_appendf(pUndo,
        "ALTER TABLE \"%s\" RENAME TO \"%w\";\n",
        zNewTab, zTab
      );
    }
    rename_all_columns_of_table(db, zTab, zPrefix, pConvert, pUndo);
    sqlite3_str_appendf(pConvert,
      "ALTER TABLE \"%w\" RENAME TO \"%s\";\n",
      zTab, zNewTab
    );
    sqlite3_free(zNewTab);
  }
  sqlite3_finalize(pStmt);
  return SQLITE_OK;
}
