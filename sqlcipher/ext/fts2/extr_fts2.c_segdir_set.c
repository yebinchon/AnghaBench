
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite_int64 ;
typedef int sqlite3_stmt ;
typedef int fulltext_vtab ;


 int SEGDIR_SET_STMT ;
 int SQLITE_OK ;
 int SQLITE_STATIC ;
 int sql_get_statement (int *,int ,int **) ;
 int sql_single_step (int *) ;
 int sqlite3_bind_blob (int *,int,char const*,int,int ) ;
 int sqlite3_bind_int (int *,int,int) ;
 int sqlite3_bind_int64 (int *,int,int ) ;

__attribute__((used)) static int segdir_set(fulltext_vtab *v, int iLevel, int idx,
                      sqlite_int64 iStartBlockid,
                      sqlite_int64 iLeavesEndBlockid,
                      sqlite_int64 iEndBlockid,
                      const char *pRootData, int nRootData){
  sqlite3_stmt *s;
  int rc = sql_get_statement(v, SEGDIR_SET_STMT, &s);
  if( rc!=SQLITE_OK ) return rc;

  rc = sqlite3_bind_int(s, 1, iLevel);
  if( rc!=SQLITE_OK ) return rc;

  rc = sqlite3_bind_int(s, 2, idx);
  if( rc!=SQLITE_OK ) return rc;

  rc = sqlite3_bind_int64(s, 3, iStartBlockid);
  if( rc!=SQLITE_OK ) return rc;

  rc = sqlite3_bind_int64(s, 4, iLeavesEndBlockid);
  if( rc!=SQLITE_OK ) return rc;

  rc = sqlite3_bind_int64(s, 5, iEndBlockid);
  if( rc!=SQLITE_OK ) return rc;

  rc = sqlite3_bind_blob(s, 6, pRootData, nRootData, SQLITE_STATIC);
  if( rc!=SQLITE_OK ) return rc;

  return sql_single_step(s);
}
