
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_stmt ;
typedef int fulltext_vtab ;


 int SEGDIR_MAX_INDEX_STMT ;
 int SQLITE_DONE ;
 int SQLITE_ERROR ;
 scalar_t__ SQLITE_NULL ;
 int SQLITE_OK ;
 int SQLITE_ROW ;
 int sql_get_statement (int *,int ,int **) ;
 int sqlite3_bind_int (int *,int,int) ;
 int sqlite3_column_int (int *,int ) ;
 scalar_t__ sqlite3_column_type (int *,int ) ;
 int sqlite3_step (int *) ;

__attribute__((used)) static int segdir_max_index(fulltext_vtab *v, int iLevel, int *pidx){
  sqlite3_stmt *s;
  int rc = sql_get_statement(v, SEGDIR_MAX_INDEX_STMT, &s);
  if( rc!=SQLITE_OK ) return rc;

  rc = sqlite3_bind_int(s, 1, iLevel);
  if( rc!=SQLITE_OK ) return rc;

  rc = sqlite3_step(s);

  if( rc==SQLITE_DONE ) return SQLITE_DONE;
  if( rc!=SQLITE_ROW ) return rc;


  if( SQLITE_NULL==sqlite3_column_type(s, 0) ){
    rc = sqlite3_step(s);
    if( rc==SQLITE_ROW ) return SQLITE_ERROR;
    return rc;
  }

  *pidx = sqlite3_column_int(s, 0);



  rc = sqlite3_step(s);
  if( rc==SQLITE_ROW ) return SQLITE_ERROR;
  if( rc!=SQLITE_DONE ) return rc;
  return SQLITE_ROW;
}
