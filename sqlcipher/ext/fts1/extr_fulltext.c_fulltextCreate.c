
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_vtab ;
typedef int sqlite3 ;


 int SQLITE_OK ;
 int assert (int) ;
 int fulltextConnect (int *,void*,int,char const* const*,int **,char**) ;
 int sql_exec (int *,char const* const,char*) ;

__attribute__((used)) static int fulltextCreate(
  sqlite3 *db,
  void *pAux,
  int argc,
  const char * const *argv,
  sqlite3_vtab **ppVTab,
  char **pzErr
){
  int rc;
  assert( argc>=3 );
  rc = sql_exec(db, argv[2],
    "create table %_content(content text);"
    "create table %_term(term text, first integer, doclist blob);"
    "create index %_index on %_term(term, first)");
  if( rc!=SQLITE_OK ) return rc;

  return fulltextConnect(db, pAux, argc, argv, ppVTab, pzErr);
}
