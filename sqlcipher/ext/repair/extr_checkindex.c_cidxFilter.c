
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite3_vtab_cursor ;
typedef int sqlite3_value ;
struct TYPE_4__ {int iRowid; scalar_t__ pStmt; int zAfterKey; int zIdxName; } ;
typedef TYPE_1__ CidxCursor ;


 int SQLITE_OK ;
 int assert (int) ;
 int cidxGenerateScanSql (TYPE_1__*,char const*,char const*,char**) ;
 int cidxNext (int *) ;
 scalar_t__ cidxPrepare (int*,TYPE_1__*,char*,char*) ;
 int sqlite3_finalize (scalar_t__) ;
 int sqlite3_free (int ) ;
 int sqlite3_mprintf (char*,char const*) ;
 scalar_t__ sqlite3_value_text (int *) ;

__attribute__((used)) static int cidxFilter(
  sqlite3_vtab_cursor *pCursor,
  int idxNum, const char *idxStr,
  int argc, sqlite3_value **argv
){
  int rc = SQLITE_OK;
  CidxCursor *pCsr = (CidxCursor*)pCursor;
  const char *zIdxName = 0;
  const char *zAfterKey = 0;

  sqlite3_free(pCsr->zIdxName);
  pCsr->zIdxName = 0;
  sqlite3_free(pCsr->zAfterKey);
  pCsr->zAfterKey = 0;
  sqlite3_finalize(pCsr->pStmt);
  pCsr->pStmt = 0;

  if( argc>0 ){
    zIdxName = (const char*)sqlite3_value_text(argv[0]);
    if( argc>1 ){
      zAfterKey = (const char*)sqlite3_value_text(argv[1]);
    }
  }

  if( zIdxName ){
    char *zSql = 0;
    pCsr->zIdxName = sqlite3_mprintf("%s", zIdxName);
    pCsr->zAfterKey = zAfterKey ? sqlite3_mprintf("%s", zAfterKey) : 0;
    rc = cidxGenerateScanSql(pCsr, zIdxName, zAfterKey, &zSql);
    if( zSql ){
      pCsr->pStmt = cidxPrepare(&rc, pCsr, "%z", zSql);
    }
  }

  if( pCsr->pStmt ){
    assert( rc==SQLITE_OK );
    rc = cidxNext(pCursor);
  }
  pCsr->iRowid = 1;
  return rc;
}
