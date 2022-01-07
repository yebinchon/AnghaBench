
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int sqlite3_vtab ;
typedef int sqlite3 ;
struct TYPE_9__ {int zName; int zDb; int azContentColumn; int nColumn; } ;
typedef TYPE_1__ TableSpec ;
struct TYPE_10__ {char* s; } ;
typedef TYPE_2__ StringBuffer ;


 int SQLITE_OK ;
 int TRACE (char*) ;
 int append (TYPE_2__*,char*) ;
 int appendList (TYPE_2__*,int ,int ) ;
 int clearTableSpec (TYPE_1__*) ;
 int constructVtab (int *,TYPE_1__*,int **,char**) ;
 int free (char*) ;
 int initStringBuffer (TYPE_2__*) ;
 int parseSpec (TYPE_1__*,int,char const* const*,char**) ;
 int sql_exec (int *,int ,int ,char*) ;

__attribute__((used)) static int fulltextCreate(sqlite3 *db, void *pAux,
                          int argc, const char * const *argv,
                          sqlite3_vtab **ppVTab, char **pzErr){
  int rc;
  TableSpec spec;
  StringBuffer schema;
  TRACE(("FTS1 Create\n"));

  rc = parseSpec(&spec, argc, argv, pzErr);
  if( rc!=SQLITE_OK ) return rc;

  initStringBuffer(&schema);
  append(&schema, "CREATE TABLE %_content(");
  appendList(&schema, spec.nColumn, spec.azContentColumn);
  append(&schema, ")");
  rc = sql_exec(db, spec.zDb, spec.zName, schema.s);
  free(schema.s);
  if( rc!=SQLITE_OK ) goto out;

  rc = sql_exec(db, spec.zDb, spec.zName,
    "create table %_term(term text, segment integer, doclist blob, "
                        "primary key(term, segment));");
  if( rc!=SQLITE_OK ) goto out;

  rc = constructVtab(db, &spec, ppVTab, pzErr);

out:
  clearTableSpec(&spec);
  return rc;
}
