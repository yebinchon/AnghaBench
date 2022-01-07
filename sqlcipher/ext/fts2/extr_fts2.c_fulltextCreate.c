
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int sqlite3_vtab ;
typedef int sqlite3 ;
typedef int fts2Hash ;
struct TYPE_5__ {int zName; int zDb; int azContentColumn; int nColumn; } ;
typedef TYPE_1__ TableSpec ;
typedef int StringBuffer ;


 int SQLITE_OK ;
 int TRACE (char*) ;
 int append (int *,char*) ;
 int appendList (int *,int ,int ) ;
 int clearTableSpec (TYPE_1__*) ;
 int constructVtab (int *,int *,TYPE_1__*,int **,char**) ;
 int initStringBuffer (int *) ;
 int parseSpec (TYPE_1__*,int,char const* const*,char**) ;
 int sql_exec (int *,int ,int ,char*) ;
 char* stringBufferData (int *) ;
 int stringBufferDestroy (int *) ;

__attribute__((used)) static int fulltextCreate(sqlite3 *db, void *pAux,
                          int argc, const char * const *argv,
                          sqlite3_vtab **ppVTab, char **pzErr){
  int rc;
  TableSpec spec;
  StringBuffer schema;
  TRACE(("FTS2 Create\n"));

  rc = parseSpec(&spec, argc, argv, pzErr);
  if( rc!=SQLITE_OK ) return rc;

  initStringBuffer(&schema);
  append(&schema, "CREATE TABLE %_content(");
  appendList(&schema, spec.nColumn, spec.azContentColumn);
  append(&schema, ")");
  rc = sql_exec(db, spec.zDb, spec.zName, stringBufferData(&schema));
  stringBufferDestroy(&schema);
  if( rc!=SQLITE_OK ) goto out;

  rc = sql_exec(db, spec.zDb, spec.zName,
                "create table %_segments(block blob);");
  if( rc!=SQLITE_OK ) goto out;

  rc = sql_exec(db, spec.zDb, spec.zName,
                "create table %_segdir("
                "  level integer,"
                "  idx integer,"
                "  start_block integer,"
                "  leaves_end_block integer,"
                "  end_block integer,"
                "  root blob,"
                "  primary key(level, idx)"
                ");");
  if( rc!=SQLITE_OK ) goto out;

  rc = constructVtab(db, (fts2Hash *)pAux, &spec, ppVTab, pzErr);

out:
  clearTableSpec(&spec);
  return rc;
}
