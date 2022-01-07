
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_vtab_cursor ;
typedef int sqlite3_vtab ;
typedef int Fts3Cursor ;


 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int UNUSED_PARAMETER (int *) ;
 int memset (int *,int ,int) ;
 scalar_t__ sqlite3_malloc (int) ;

__attribute__((used)) static int fts3OpenMethod(sqlite3_vtab *pVTab, sqlite3_vtab_cursor **ppCsr){
  sqlite3_vtab_cursor *pCsr;

  UNUSED_PARAMETER(pVTab);





  *ppCsr = pCsr = (sqlite3_vtab_cursor *)sqlite3_malloc(sizeof(Fts3Cursor));
  if( !pCsr ){
    return SQLITE_NOMEM;
  }
  memset(pCsr, 0, sizeof(Fts3Cursor));
  return SQLITE_OK;
}
