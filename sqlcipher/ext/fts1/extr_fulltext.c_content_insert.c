
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_value ;
typedef int sqlite3_stmt ;
typedef int fulltext_vtab ;


 int CONTENT_INSERT_STMT ;
 int SQLITE_OK ;
 int SQLITE_STATIC ;
 int sql_get_statement (int *,int ,int **) ;
 int sql_single_step_statement (int *,int ,int **) ;
 int sqlite3_bind_text (int *,int,char const*,int,int ) ;
 int sqlite3_bind_value (int *,int,int *) ;

__attribute__((used)) static int content_insert(fulltext_vtab *v, sqlite3_value *rowid,
                          const char *zContent, int nContent){
  sqlite3_stmt *s;
  int rc = sql_get_statement(v, CONTENT_INSERT_STMT, &s);
  if( rc!=SQLITE_OK ) return rc;

  rc = sqlite3_bind_value(s, 1, rowid);
  if( rc!=SQLITE_OK ) return rc;

  rc = sqlite3_bind_text(s, 2, zContent, nContent, SQLITE_STATIC);
  if( rc!=SQLITE_OK ) return rc;

  return sql_single_step_statement(v, CONTENT_INSERT_STMT, &s);
}
