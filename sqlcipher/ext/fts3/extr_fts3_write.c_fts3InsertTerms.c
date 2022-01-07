
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef int sqlite3_value ;
struct TYPE_4__ {int nColumn; scalar_t__* abNotindexed; } ;
typedef TYPE_1__ Fts3Table ;


 int SQLITE_OK ;
 int fts3PendingTermsAdd (TYPE_1__*,int,char const*,int,int *) ;
 scalar_t__ sqlite3_value_bytes (int *) ;
 scalar_t__ sqlite3_value_text (int *) ;

__attribute__((used)) static int fts3InsertTerms(
  Fts3Table *p,
  int iLangid,
  sqlite3_value **apVal,
  u32 *aSz
){
  int i;
  for(i=2; i<p->nColumn+2; i++){
    int iCol = i-2;
    if( p->abNotindexed[iCol]==0 ){
      const char *zText = (const char *)sqlite3_value_text(apVal[i]);
      int rc = fts3PendingTermsAdd(p, iLangid, zText, iCol, &aSz[iCol]);
      if( rc!=SQLITE_OK ){
        return rc;
      }
      aSz[p->nColumn] += sqlite3_value_bytes(apVal[i]);
    }
  }
  return SQLITE_OK;
}
