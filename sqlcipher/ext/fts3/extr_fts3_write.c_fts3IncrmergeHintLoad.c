
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite3_stmt ;
struct TYPE_4__ {int n; int a; } ;
typedef int Fts3Table ;
typedef TYPE_1__ Blob ;


 int FTS_STAT_INCRMERGEHINT ;
 int SQLITE_OK ;
 scalar_t__ SQLITE_ROW ;
 int SQL_SELECT_STAT ;
 int blobGrowBuffer (TYPE_1__*,int,int*) ;
 int fts3SqlStmt (int *,int ,int **,int ) ;
 int memcpy (int ,char const*,int) ;
 int sqlite3_bind_int (int *,int,int ) ;
 char* sqlite3_column_blob (int *,int ) ;
 int sqlite3_column_bytes (int *,int ) ;
 int sqlite3_reset (int *) ;
 scalar_t__ sqlite3_step (int *) ;

__attribute__((used)) static int fts3IncrmergeHintLoad(Fts3Table *p, Blob *pHint){
  sqlite3_stmt *pSelect = 0;
  int rc;

  pHint->n = 0;
  rc = fts3SqlStmt(p, SQL_SELECT_STAT, &pSelect, 0);
  if( rc==SQLITE_OK ){
    int rc2;
    sqlite3_bind_int(pSelect, 1, FTS_STAT_INCRMERGEHINT);
    if( SQLITE_ROW==sqlite3_step(pSelect) ){
      const char *aHint = sqlite3_column_blob(pSelect, 0);
      int nHint = sqlite3_column_bytes(pSelect, 0);
      if( aHint ){
        blobGrowBuffer(pHint, nHint, &rc);
        if( rc==SQLITE_OK ){
          memcpy(pHint->a, aHint, nHint);
          pHint->n = nHint;
        }
      }
    }
    rc2 = sqlite3_reset(pSelect);
    if( rc==SQLITE_OK ) rc = rc2;
  }

  return rc;
}
