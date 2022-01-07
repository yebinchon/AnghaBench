
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_vtab ;
typedef int sqlite3 ;
typedef int deltaparsevtab_vtab ;


 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int memset (int *,int ,int) ;
 int sqlite3_declare_vtab (int *,char*) ;
 int * sqlite3_malloc64 (int) ;

__attribute__((used)) static int deltaparsevtabConnect(
  sqlite3 *db,
  void *pAux,
  int argc, const char *const*argv,
  sqlite3_vtab **ppVtab,
  char **pzErr
){
  deltaparsevtab_vtab *pNew;
  int rc;

  rc = sqlite3_declare_vtab(db,
           "CREATE TABLE x(op,a1,a2,delta HIDDEN)"
       );





  if( rc==SQLITE_OK ){
    pNew = sqlite3_malloc64( sizeof(*pNew) );
    *ppVtab = (sqlite3_vtab*)pNew;
    if( pNew==0 ) return SQLITE_NOMEM;
    memset(pNew, 0, sizeof(*pNew));
  }
  return rc;
}
