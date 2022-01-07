
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_stmt ;
struct TYPE_3__ {int ** pFulltextStatements; } ;
typedef TYPE_1__ fulltext_vtab ;
typedef size_t fulltext_statement ;


 size_t MAX_STMT ;
 int SQLITE_BUSY ;
 int SQLITE_DONE ;
 int SQLITE_ERROR ;
 int SQLITE_ROW ;
 int assert (int) ;
 int sqlite3_finalize (int *) ;
 int sqlite3_step (int *) ;

__attribute__((used)) static int sql_step_statement(fulltext_vtab *v, fulltext_statement iStmt,
                              sqlite3_stmt **ppStmt){
  int rc;
  sqlite3_stmt *s = *ppStmt;
  assert( iStmt<MAX_STMT );
  assert( s==v->pFulltextStatements[iStmt] );

  while( (rc=sqlite3_step(s))!=SQLITE_DONE && rc!=SQLITE_ROW ){
    if( rc==SQLITE_BUSY ) continue;
    if( rc!=SQLITE_ERROR ) return rc;







    v->pFulltextStatements[iStmt] = ((void*)0);
    rc = sqlite3_finalize(s);
    break;
  }
  return rc;

 err:
  sqlite3_finalize(s);
  return rc;
}
