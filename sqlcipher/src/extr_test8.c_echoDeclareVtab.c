
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_stmt ;
typedef int sqlite3 ;
struct TYPE_3__ {int aIndex; int nCol; scalar_t__ zTableName; int aCol; } ;
typedef TYPE_1__ echo_vtab ;


 int SQLITE_ERROR ;
 int SQLITE_OK ;
 scalar_t__ SQLITE_ROW ;
 int getColumnNames (int *,scalar_t__,int *,int *) ;
 int getIndexArray (int *,scalar_t__,int ,int *) ;
 int sqlite3_bind_text (int *,int,scalar_t__,int,int ) ;
 scalar_t__ sqlite3_column_text (int *,int ) ;
 int sqlite3_declare_vtab (int *,char const*) ;
 int sqlite3_finalize (int *) ;
 int sqlite3_prepare (int *,char*,int,int **,int ) ;
 scalar_t__ sqlite3_step (int *) ;

__attribute__((used)) static int echoDeclareVtab(
  echo_vtab *pVtab,
  sqlite3 *db
){
  int rc = SQLITE_OK;

  if( pVtab->zTableName ){
    sqlite3_stmt *pStmt = 0;
    rc = sqlite3_prepare(db,
        "SELECT sql FROM sqlite_master WHERE type = 'table' AND name = ?",
        -1, &pStmt, 0);
    if( rc==SQLITE_OK ){
      sqlite3_bind_text(pStmt, 1, pVtab->zTableName, -1, 0);
      if( sqlite3_step(pStmt)==SQLITE_ROW ){
        int rc2;
        const char *zCreateTable = (const char *)sqlite3_column_text(pStmt, 0);
        rc = sqlite3_declare_vtab(db, zCreateTable);
        rc2 = sqlite3_finalize(pStmt);
        if( rc==SQLITE_OK ){
          rc = rc2;
        }
      } else {
        rc = sqlite3_finalize(pStmt);
        if( rc==SQLITE_OK ){
          rc = SQLITE_ERROR;
        }
      }
      if( rc==SQLITE_OK ){
        rc = getColumnNames(db, pVtab->zTableName, &pVtab->aCol, &pVtab->nCol);
      }
      if( rc==SQLITE_OK ){
        rc = getIndexArray(db, pVtab->zTableName, pVtab->nCol, &pVtab->aIndex);
      }
    }
  }

  return rc;
}
