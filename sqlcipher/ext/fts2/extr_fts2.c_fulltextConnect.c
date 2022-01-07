
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_vtab ;
typedef int sqlite3 ;
typedef int fts2Hash ;
typedef int TableSpec ;


 int SQLITE_OK ;
 int clearTableSpec (int *) ;
 int constructVtab (int *,int *,int *,int **,char**) ;
 int parseSpec (int *,int,char const* const*,char**) ;

__attribute__((used)) static int fulltextConnect(
  sqlite3 *db,
  void *pAux,
  int argc, const char *const*argv,
  sqlite3_vtab **ppVTab,
  char **pzErr
){
  TableSpec spec;
  int rc = parseSpec(&spec, argc, argv, pzErr);
  if( rc!=SQLITE_OK ) return rc;

  rc = constructVtab(db, (fts2Hash *)pAux, &spec, ppVTab, pzErr);
  clearTableSpec(&spec);
  return rc;
}
