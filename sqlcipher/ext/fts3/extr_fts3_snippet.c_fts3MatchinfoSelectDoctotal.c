
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int sqlite3_stmt ;
typedef scalar_t__ sqlite3_int64 ;
typedef int Fts3Table ;


 int FTS_CORRUPT_VTAB ;
 int SQLITE_OK ;
 int assert (int) ;
 int sqlite3Fts3GetVarint (char const*,scalar_t__*) ;
 int sqlite3Fts3SelectDoctotal (int *,int **) ;
 char* sqlite3_column_blob (int *,int ) ;
 int sqlite3_data_count (int *) ;

__attribute__((used)) static int fts3MatchinfoSelectDoctotal(
  Fts3Table *pTab,
  sqlite3_stmt **ppStmt,
  sqlite3_int64 *pnDoc,
  const char **paLen
){
  sqlite3_stmt *pStmt;
  const char *a;
  sqlite3_int64 nDoc;

  if( !*ppStmt ){
    int rc = sqlite3Fts3SelectDoctotal(pTab, ppStmt);
    if( rc!=SQLITE_OK ) return rc;
  }
  pStmt = *ppStmt;
  assert( sqlite3_data_count(pStmt)==1 );

  a = sqlite3_column_blob(pStmt, 0);
  a += sqlite3Fts3GetVarint(a, &nDoc);
  if( nDoc==0 ) return FTS_CORRUPT_VTAB;
  *pnDoc = (u32)nDoc;

  if( paLen ) *paLen = a;
  return SQLITE_OK;
}
