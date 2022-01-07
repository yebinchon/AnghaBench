
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int sqlite3_stmt ;
struct TYPE_5__ {int ** pFulltextStatements; int zName; int zDb; int db; } ;
typedef TYPE_1__ fulltext_vtab ;
typedef size_t fulltext_statement ;




 size_t MAX_STMT ;
 int SQLITE_OK ;
 int assert (int) ;
 char* contentInsertStatement (TYPE_1__*) ;
 char* contentUpdateStatement (TYPE_1__*) ;
 char const** fulltext_zStatement ;
 int sql_prepare (int ,int ,int ,int **,char const*) ;
 int sqlite3_free (void*) ;
 int sqlite3_reset (int *) ;

__attribute__((used)) static int sql_get_statement(fulltext_vtab *v, fulltext_statement iStmt,
                             sqlite3_stmt **ppStmt){
  assert( iStmt<MAX_STMT );
  if( v->pFulltextStatements[iStmt]==((void*)0) ){
    const char *zStmt;
    int rc;
    switch( iStmt ){
      case 129:
        zStmt = contentInsertStatement(v); break;
      case 128:
        zStmt = contentUpdateStatement(v); break;
      default:
        zStmt = fulltext_zStatement[iStmt];
    }
    rc = sql_prepare(v->db, v->zDb, v->zName, &v->pFulltextStatements[iStmt],
                         zStmt);
    if( zStmt != fulltext_zStatement[iStmt]) sqlite3_free((void *) zStmt);
    if( rc!=SQLITE_OK ) return rc;
  } else {
    int rc = sqlite3_reset(v->pFulltextStatements[iStmt]);
    if( rc!=SQLITE_OK ) return rc;
  }

  *ppStmt = v->pFulltextStatements[iStmt];
  return SQLITE_OK;
}
