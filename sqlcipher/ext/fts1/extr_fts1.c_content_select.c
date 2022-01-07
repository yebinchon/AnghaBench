
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int sqlite_int64 ;
typedef int sqlite3_stmt ;
struct TYPE_5__ {int nColumn; } ;
typedef TYPE_1__ fulltext_vtab ;


 int CONTENT_SELECT_STMT ;
 int SQLITE_DONE ;
 scalar_t__ SQLITE_NULL ;
 int SQLITE_OK ;
 int SQLITE_ROW ;
 int freeStringArray (int,char const**) ;
 scalar_t__ malloc (int) ;
 int sql_get_statement (TYPE_1__*,int ,int **) ;
 int sql_step_statement (TYPE_1__*,int ,int **) ;
 int sqlite3_bind_int64 (int *,int,int ) ;
 scalar_t__ sqlite3_column_text (int *,int) ;
 scalar_t__ sqlite3_column_type (int *,int) ;
 int sqlite3_step (int *) ;
 char* string_dup (char*) ;

__attribute__((used)) static int content_select(fulltext_vtab *v, sqlite_int64 iRow,
                          const char ***pValues){
  sqlite3_stmt *s;
  const char **values;
  int i;
  int rc;

  *pValues = ((void*)0);

  rc = sql_get_statement(v, CONTENT_SELECT_STMT, &s);
  if( rc!=SQLITE_OK ) return rc;

  rc = sqlite3_bind_int64(s, 1, iRow);
  if( rc!=SQLITE_OK ) return rc;

  rc = sql_step_statement(v, CONTENT_SELECT_STMT, &s);
  if( rc!=SQLITE_ROW ) return rc;

  values = (const char **) malloc(v->nColumn * sizeof(const char *));
  for(i=0; i<v->nColumn; ++i){
    if( sqlite3_column_type(s, i)==SQLITE_NULL ){
      values[i] = ((void*)0);
    }else{
      values[i] = string_dup((char*)sqlite3_column_text(s, i));
    }
  }



  rc = sqlite3_step(s);
  if( rc==SQLITE_DONE ){
    *pValues = values;
    return SQLITE_OK;
  }

  freeStringArray(v->nColumn, values);
  return rc;
}
