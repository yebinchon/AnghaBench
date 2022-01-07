
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_stmt ;
struct TYPE_3__ {int ** pFulltextStatements; int zName; int db; } ;
typedef TYPE_1__ fulltext_vtab ;
typedef size_t fulltext_statement ;


 size_t MAX_STMT ;
 int SQLITE_OK ;
 int assert (int) ;
 int * fulltext_zStatement ;
 int sql_prepare (int ,int ,int **,int ) ;
 int sqlite3_reset (int *) ;

__attribute__((used)) static int sql_get_statement(fulltext_vtab *v, fulltext_statement iStmt,
                             sqlite3_stmt **ppStmt){
  assert( iStmt<MAX_STMT );
  if( v->pFulltextStatements[iStmt]==((void*)0) ){
    int rc = sql_prepare(v->db, v->zName, &v->pFulltextStatements[iStmt],
                         fulltext_zStatement[iStmt]);
    if( rc!=SQLITE_OK ) return rc;
  } else {
    int rc = sqlite3_reset(v->pFulltextStatements[iStmt]);
    if( rc!=SQLITE_OK ) return rc;
  }

  *ppStmt = v->pFulltextStatements[iStmt];
  return SQLITE_OK;
}
