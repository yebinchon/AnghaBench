
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite_int64 ;
typedef int sqlite3_stmt ;
typedef int fulltext_vtab ;


 int SEGDIR_DELETE_STMT ;
 int SQLITE_DONE ;
 int SQLITE_OK ;
 int SQLITE_ROW ;
 int block_delete (int *,int ,int ) ;
 int segdir_span (int *,int,int *,int *) ;
 int sql_get_statement (int *,int ,int **) ;
 int sql_single_step (int *) ;
 int sqlite3_bind_int64 (int *,int,int) ;

__attribute__((used)) static int segdir_delete(fulltext_vtab *v, int iLevel){
  sqlite3_stmt *s;
  sqlite_int64 iStartBlockid, iEndBlockid;
  int rc = segdir_span(v, iLevel, &iStartBlockid, &iEndBlockid);
  if( rc!=SQLITE_ROW && rc!=SQLITE_DONE ) return rc;

  if( rc==SQLITE_ROW ){
    rc = block_delete(v, iStartBlockid, iEndBlockid);
    if( rc!=SQLITE_OK ) return rc;
  }


  rc = sql_get_statement(v, SEGDIR_DELETE_STMT, &s);
  if( rc!=SQLITE_OK ) return rc;

  rc = sqlite3_bind_int64(s, 1, iLevel);
  if( rc!=SQLITE_OK ) return rc;

  return sql_single_step(s);
}
