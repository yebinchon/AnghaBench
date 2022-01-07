
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sqlite3_vtab ;
typedef int sqlite3 ;
struct TYPE_2__ {int * db; } ;
typedef TYPE_1__ BinfoTable ;


 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int assert (int) ;
 int sqlite3_declare_vtab (int *,char*) ;
 scalar_t__ sqlite3_malloc64 (int) ;

__attribute__((used)) static int binfoConnect(
  sqlite3 *db,
  void *pAux,
  int argc, const char *const*argv,
  sqlite3_vtab **ppVtab,
  char **pzErr
){
  BinfoTable *pTab = 0;
  int rc = SQLITE_OK;
  rc = sqlite3_declare_vtab(db,
      "CREATE TABLE x(\n"
      " type TEXT,\n"
      " name TEXT,\n"
      " tbl_name TEXT,\n"
      " rootpage INT,\n"
      " sql TEXT,\n"
      " hasRowid BOOLEAN,\n"
      " nEntry INT,\n"
      " nPage INT,\n"
      " depth INT,\n"
      " szPage INT,\n"
      " zSchema TEXT HIDDEN\n"
      ")");
  if( rc==SQLITE_OK ){
    pTab = (BinfoTable *)sqlite3_malloc64(sizeof(BinfoTable));
    if( pTab==0 ) rc = SQLITE_NOMEM;
  }
  assert( rc==SQLITE_OK || pTab==0 );
  if( pTab ){
    pTab->db = db;
  }
  *ppVtab = (sqlite3_vtab*)pTab;
  return rc;
}
