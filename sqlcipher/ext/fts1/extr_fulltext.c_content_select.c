
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite_int64 ;
typedef int sqlite3_stmt ;
typedef int fulltext_vtab ;


 int CONTENT_SELECT_STMT ;
 int SQLITE_DONE ;
 int SQLITE_OK ;
 int SQLITE_ROW ;
 int free (char*) ;
 int sql_get_statement (int *,int ,int **) ;
 int sql_step_statement (int *,int ,int **) ;
 int sqlite3_bind_int64 (int *,int,int ) ;
 scalar_t__ sqlite3_column_text (int *,int ) ;
 int sqlite3_step (int *) ;
 char* string_dup (char const*) ;

__attribute__((used)) static int content_select(fulltext_vtab *v, sqlite_int64 iRow,
                          char **pzContent){
  sqlite3_stmt *s;
  int rc = sql_get_statement(v, CONTENT_SELECT_STMT, &s);
  if( rc!=SQLITE_OK ) return rc;

  rc = sqlite3_bind_int64(s, 1, iRow);
  if( rc!=SQLITE_OK ) return rc;

  rc = sql_step_statement(v, CONTENT_SELECT_STMT, &s);
  if( rc!=SQLITE_ROW ) return rc;

  *pzContent = string_dup((const char *)sqlite3_column_text(s, 0));



  rc = sqlite3_step(s);
  if( rc==SQLITE_DONE ) return SQLITE_OK;

  free(*pzContent);
  return rc;
}
