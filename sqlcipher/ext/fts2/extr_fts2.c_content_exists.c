
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_stmt ;
typedef int fulltext_vtab ;


 int CONTENT_EXISTS_STMT ;
 int SQLITE_DONE ;
 int SQLITE_ERROR ;
 int SQLITE_OK ;
 int SQLITE_ROW ;
 int sql_get_statement (int *,int ,int **) ;
 int sqlite3_step (int *) ;

__attribute__((used)) static int content_exists(fulltext_vtab *v){
  sqlite3_stmt *s;
  int rc = sql_get_statement(v, CONTENT_EXISTS_STMT, &s);
  if( rc!=SQLITE_OK ) return rc;

  rc = sqlite3_step(s);
  if( rc!=SQLITE_ROW ) return rc;



  rc = sqlite3_step(s);
  if( rc==SQLITE_DONE ) return SQLITE_ROW;
  if( rc==SQLITE_ROW ) return SQLITE_ERROR;
  return rc;
}
