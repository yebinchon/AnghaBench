
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_vtab ;
typedef int sqlite3 ;


 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int memset (int *,int ,int) ;
 int sqlite3_declare_vtab (int *,char*) ;
 int * sqlite3_malloc (int) ;

__attribute__((used)) static int vstattabConnect(
  sqlite3 *db,
  void *pAux,
  int argc, const char *const*argv,
  sqlite3_vtab **ppVtab,
  char **pzErr
){
  sqlite3_vtab *pNew;
  int rc;






  rc = sqlite3_declare_vtab(db,"CREATE TABLE x(file,stat,count)");
  if( rc==SQLITE_OK ){
    pNew = *ppVtab = sqlite3_malloc( sizeof(*pNew) );
    if( pNew==0 ) return SQLITE_NOMEM;
    memset(pNew, 0, sizeof(*pNew));
  }
  return rc;
}
