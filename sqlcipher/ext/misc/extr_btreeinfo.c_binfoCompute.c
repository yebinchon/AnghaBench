
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_stmt ;
typedef int sqlite3_int64 ;
typedef int sqlite3 ;
struct TYPE_3__ {int depth; int szPage; int hasRowid; int nPage; int nEntry; } ;
typedef TYPE_1__ BinfoCursor ;


 int SQLITE_CORRUPT ;
 int SQLITE_ERROR ;
 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int SQLITE_ROW ;
 int get_uint16 (unsigned char*) ;
 int get_uint32 (unsigned char*) ;
 int sqlite3_bind_int (int *,int,int) ;
 scalar_t__ sqlite3_column_blob (int *,int ) ;
 int sqlite3_column_bytes (int *,int ) ;
 int sqlite3_finalize (int *) ;
 int sqlite3_prepare_v2 (int *,char*,int,int **,int ) ;
 int sqlite3_reset (int *) ;
 int sqlite3_step (int *) ;

__attribute__((used)) static int binfoCompute(sqlite3 *db, int pgno, BinfoCursor *pCsr){
  sqlite3_int64 nEntry = 1;
  int nPage = 1;
  unsigned char *aData;
  sqlite3_stmt *pStmt = 0;
  int rc = SQLITE_OK;
  int pgsz = 0;
  int nCell;
  int iCell;

  rc = sqlite3_prepare_v2(db,
           "SELECT data FROM sqlite_dbpage('main') WHERE pgno=?1", -1,
           &pStmt, 0);
  if( rc ) return rc;
  pCsr->depth = 1;
  while(1){
    sqlite3_bind_int(pStmt, 1, pgno);
    rc = sqlite3_step(pStmt);
    if( rc!=SQLITE_ROW ){
      rc = SQLITE_ERROR;
      break;
    }
    pCsr->szPage = pgsz = sqlite3_column_bytes(pStmt, 0);
    aData = (unsigned char*)sqlite3_column_blob(pStmt, 0);
    if( aData==0 ){
      rc = SQLITE_NOMEM;
      break;
    }
    if( pgno==1 ){
      aData += 100;
      pgsz -= 100;
    }
    pCsr->hasRowid = aData[0]!=2 && aData[0]!=10;
    nCell = get_uint16(aData+3);
    nEntry *= (nCell+1);
    if( aData[0]==10 || aData[0]==13 ) break;
    nPage *= (nCell+1);
    if( nCell<=1 ){
      pgno = get_uint32(aData+8);
    }else{
      iCell = get_uint16(aData+12+2*(nCell/2));
      if( pgno==1 ) iCell -= 100;
      if( iCell<=12 || iCell>=pgsz-4 ){
        rc = SQLITE_CORRUPT;
        break;
      }
      pgno = get_uint32(aData+iCell);
    }
    pCsr->depth++;
    sqlite3_reset(pStmt);
  }
  sqlite3_finalize(pStmt);
  pCsr->nPage = nPage;
  pCsr->nEntry = nEntry;
  if( rc==SQLITE_ROW ) rc = SQLITE_OK;
  return rc;
}
