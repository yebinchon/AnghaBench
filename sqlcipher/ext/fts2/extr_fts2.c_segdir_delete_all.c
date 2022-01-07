
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_stmt ;
typedef int fulltext_vtab ;


 int BLOCK_DELETE_ALL_STMT ;
 int SEGDIR_DELETE_ALL_STMT ;
 int SQLITE_OK ;
 int sql_get_statement (int *,int ,int **) ;
 int sql_single_step (int *) ;

__attribute__((used)) static int segdir_delete_all(fulltext_vtab *v){
  sqlite3_stmt *s;
  int rc = sql_get_statement(v, SEGDIR_DELETE_ALL_STMT, &s);
  if( rc!=SQLITE_OK ) return rc;

  rc = sql_single_step(s);
  if( rc!=SQLITE_OK ) return rc;

  rc = sql_get_statement(v, BLOCK_DELETE_ALL_STMT, &s);
  if( rc!=SQLITE_OK ) return rc;

  return sql_single_step(s);
}
