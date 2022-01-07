
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite3_stmt ;
typedef int sqlite3 ;
struct TYPE_4__ {int iCol; void* szPg; scalar_t__ zErr; void* iRoot; } ;
typedef TYPE_1__ GState ;


 scalar_t__ SQLITE_ROW ;
 int ofstError (TYPE_1__*,char*,...) ;
 int sqlite3_close (int *) ;
 void* sqlite3_column_int (int *,int ) ;
 char* sqlite3_column_text (int *,int) ;
 int sqlite3_errmsg (int *) ;
 int sqlite3_finalize (int *) ;
 int sqlite3_free (char*) ;
 char* sqlite3_mprintf (char*,...) ;
 int sqlite3_open (char const*,int **) ;
 int sqlite3_prepare_v2 (int *,char*,int,int **,int ) ;
 scalar_t__ sqlite3_step (int *) ;
 scalar_t__ sqlite3_strnicmp (char const*,char const*,scalar_t__) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static void ofstRootAndColumn(
  GState *p,
  const char *zFile,
  const char *zTable,
  const char *zColumn
){
  sqlite3 *db = 0;
  sqlite3_stmt *pStmt = 0;
  char *zSql = 0;
  int rc;
  if( p->zErr ) return;
  rc = sqlite3_open(zFile, &db);
  if( rc ){
    ofstError(p, "cannot open database file \"%s\"", zFile);
    goto rootAndColumn_exit;
  }
  zSql = sqlite3_mprintf("SELECT rootpage FROM sqlite_master WHERE name=%Q",
                         zTable);
  rc = sqlite3_prepare_v2(db, zSql, -1, &pStmt, 0);
  if( rc ) ofstError(p, "%s: [%s]", sqlite3_errmsg(db), zSql);
  sqlite3_free(zSql);
  if( p->zErr ) goto rootAndColumn_exit;
  if( sqlite3_step(pStmt)!=SQLITE_ROW ){
    ofstError(p, "cannot find table [%s]\n", zTable);
    sqlite3_finalize(pStmt);
    goto rootAndColumn_exit;
  }
  p->iRoot = sqlite3_column_int(pStmt , 0);
  sqlite3_finalize(pStmt);

  p->iCol = -1;
  zSql = sqlite3_mprintf("PRAGMA table_info(%Q)", zTable);
  rc = sqlite3_prepare_v2(db, zSql, -1, &pStmt, 0);
  if( rc ) ofstError(p, "%s: [%s}", sqlite3_errmsg(db), zSql);
  sqlite3_free(zSql);
  if( p->zErr ) goto rootAndColumn_exit;
  while( sqlite3_step(pStmt)==SQLITE_ROW ){
    const char *zCol = sqlite3_column_text(pStmt, 1);
    if( strlen(zCol)==strlen(zColumn)
     && sqlite3_strnicmp(zCol, zColumn, strlen(zCol))==0
    ){
      p->iCol = sqlite3_column_int(pStmt, 0);
      break;
    }
  }
  sqlite3_finalize(pStmt);
  if( p->iCol<0 ){
    ofstError(p, "no such column: %s.%s", zTable, zColumn);
    goto rootAndColumn_exit;
  }

  zSql = sqlite3_mprintf("PRAGMA page_size");
  rc = sqlite3_prepare_v2(db, zSql, -1, &pStmt, 0);
  if( rc ) ofstError(p, "%s: [%s]", sqlite3_errmsg(db), zSql);
  sqlite3_free(zSql);
  if( p->zErr ) goto rootAndColumn_exit;
  if( sqlite3_step(pStmt)!=SQLITE_ROW ){
    ofstError(p, "cannot find page size");
  }else{
    p->szPg = sqlite3_column_int(pStmt, 0);
  }
  sqlite3_finalize(pStmt);

rootAndColumn_exit:
  sqlite3_close(db);
  return;
}
