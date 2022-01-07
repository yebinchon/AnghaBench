
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_stmt ;
typedef int fulltext_vtab ;


 int SEGDIR_COUNT_STMT ;
 int SQLITE_DONE ;
 int SQLITE_ERROR ;
 int SQLITE_OK ;
 int SQLITE_ROW ;
 int sql_get_statement (int *,int ,int **) ;
 int sqlite3_column_int (int *,int) ;
 int sqlite3_step (int *) ;

__attribute__((used)) static int segdir_count(fulltext_vtab *v, int *pnSegments, int *piMaxLevel){
  sqlite3_stmt *s;
  int rc = sql_get_statement(v, SEGDIR_COUNT_STMT, &s);
  if( rc!=SQLITE_OK ) return rc;

  rc = sqlite3_step(s);



  if( rc==SQLITE_DONE ){
    *pnSegments = 0;
    *piMaxLevel = 0;
    return SQLITE_OK;
  }
  if( rc!=SQLITE_ROW ) return rc;

  *pnSegments = sqlite3_column_int(s, 0);
  *piMaxLevel = sqlite3_column_int(s, 1);



  rc = sqlite3_step(s);
  if( rc==SQLITE_DONE ) return SQLITE_OK;
  if( rc==SQLITE_ROW ) return SQLITE_ERROR;
  return rc;
}
