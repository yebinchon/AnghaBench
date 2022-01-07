
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite_int64 ;
typedef int sqlite3_value ;
typedef int sqlite3_stmt ;
struct TYPE_4__ {int nColumn; } ;
typedef TYPE_1__ fulltext_vtab ;


 int CONTENT_UPDATE_STMT ;
 int SQLITE_OK ;
 int sql_get_statement (TYPE_1__*,int ,int **) ;
 int sql_single_step (int *) ;
 int sqlite3_bind_int64 (int *,int,int ) ;
 int sqlite3_bind_value (int *,int,int *) ;

__attribute__((used)) static int content_update(fulltext_vtab *v, sqlite3_value **pValues,
                          sqlite_int64 iRowid){
  sqlite3_stmt *s;
  int i;
  int rc = sql_get_statement(v, CONTENT_UPDATE_STMT, &s);
  if( rc!=SQLITE_OK ) return rc;

  for(i=0; i<v->nColumn; ++i){
    rc = sqlite3_bind_value(s, 1+i, pValues[i]);
    if( rc!=SQLITE_OK ) return rc;
  }

  rc = sqlite3_bind_int64(s, 1+v->nColumn, iRowid);
  if( rc!=SQLITE_OK ) return rc;

  return sql_single_step(s);
}
