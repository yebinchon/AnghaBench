
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
typedef int sqlite3_value ;
typedef int sqlite3_stmt ;
typedef int i64 ;
struct TYPE_7__ {int nColumn; scalar_t__* abNotindexed; } ;
typedef TYPE_1__ Fts3Table ;


 int SQLITE_OK ;
 scalar_t__ SQLITE_ROW ;
 int SQL_SELECT_CONTENT_BY_ROWID ;
 int assert (int) ;
 int fts3PendingTermsAdd (TYPE_1__*,int,char const*,int,int *) ;
 int fts3PendingTermsDocid (TYPE_1__*,int,int,int ) ;
 int fts3SqlStmt (TYPE_1__*,int ,int **,int **) ;
 int langidFromSelect (TYPE_1__*,int *) ;
 scalar_t__ sqlite3_column_bytes (int *,int) ;
 int sqlite3_column_int64 (int *,int ) ;
 scalar_t__ sqlite3_column_text (int *,int) ;
 int sqlite3_reset (int *) ;
 scalar_t__ sqlite3_step (int *) ;

__attribute__((used)) static void fts3DeleteTerms(
  int *pRC,
  Fts3Table *p,
  sqlite3_value *pRowid,
  u32 *aSz,
  int *pbFound
){
  int rc;
  sqlite3_stmt *pSelect;

  assert( *pbFound==0 );
  if( *pRC ) return;
  rc = fts3SqlStmt(p, SQL_SELECT_CONTENT_BY_ROWID, &pSelect, &pRowid);
  if( rc==SQLITE_OK ){
    if( SQLITE_ROW==sqlite3_step(pSelect) ){
      int i;
      int iLangid = langidFromSelect(p, pSelect);
      i64 iDocid = sqlite3_column_int64(pSelect, 0);
      rc = fts3PendingTermsDocid(p, 1, iLangid, iDocid);
      for(i=1; rc==SQLITE_OK && i<=p->nColumn; i++){
        int iCol = i-1;
        if( p->abNotindexed[iCol]==0 ){
          const char *zText = (const char *)sqlite3_column_text(pSelect, i);
          rc = fts3PendingTermsAdd(p, iLangid, zText, -1, &aSz[iCol]);
          aSz[p->nColumn] += sqlite3_column_bytes(pSelect, i);
        }
      }
      if( rc!=SQLITE_OK ){
        sqlite3_reset(pSelect);
        *pRC = rc;
        return;
      }
      *pbFound = 1;
    }
    rc = sqlite3_reset(pSelect);
  }else{
    sqlite3_reset(pSelect);
  }
  *pRC = rc;
}
