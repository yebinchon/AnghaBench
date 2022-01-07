
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite3_stmt ;
struct TYPE_4__ {int nDb; char** azDb; int db; } ;
typedef TYPE_1__ memstat_cursor ;


 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 scalar_t__ SQLITE_ROW ;
 int memstatClearSchema (TYPE_1__*) ;
 int sqlite3_column_text (int *,int) ;
 int sqlite3_finalize (int *) ;
 char* sqlite3_mprintf (char*,int ) ;
 int sqlite3_prepare_v2 (int ,char*,int,int **,int ) ;
 char** sqlite3_realloc64 (char**,int) ;
 scalar_t__ sqlite3_step (int *) ;

__attribute__((used)) static int memstatFindSchemas(memstat_cursor *pCur){
  sqlite3_stmt *pStmt = 0;
  int rc;
  if( pCur->nDb ) return SQLITE_OK;
  rc = sqlite3_prepare_v2(pCur->db, "PRAGMA database_list", -1, &pStmt, 0);
  if( rc ){
    sqlite3_finalize(pStmt);
    return rc;
  }
  while( sqlite3_step(pStmt)==SQLITE_ROW ){
    char **az, *z;
    az = sqlite3_realloc64(pCur->azDb, sizeof(char*)*(pCur->nDb+1));
    if( az==0 ){
      memstatClearSchema(pCur);
      return SQLITE_NOMEM;
    }
    pCur->azDb = az;
    z = sqlite3_mprintf("%s", sqlite3_column_text(pStmt, 1));
    if( z==0 ){
      memstatClearSchema(pCur);
      return SQLITE_NOMEM;
    }
    pCur->azDb[pCur->nDb] = z;
    pCur->nDb++;
  }
  sqlite3_finalize(pStmt);
  return SQLITE_OK;
}
