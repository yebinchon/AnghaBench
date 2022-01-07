
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_stmt ;
typedef int sqlite3 ;


 int SQLITE_OK ;
 int assert (char**) ;
 int sqlite3_errmsg (int *) ;
 char* sqlite3_mprintf (char*,int ) ;
 int sqlite3_prepare_v2 (int *,char const*,int,int **,int ) ;

__attribute__((used)) static sqlite3_stmt *unionPrepare(
  int *pRc,
  sqlite3 *db,
  const char *zSql,
  char **pzErr
){
  sqlite3_stmt *pRet = 0;
  assert( pzErr );
  if( *pRc==SQLITE_OK ){
    int rc = sqlite3_prepare_v2(db, zSql, -1, &pRet, 0);
    if( rc!=SQLITE_OK ){
      *pzErr = sqlite3_mprintf("sql error: %s", sqlite3_errmsg(db));
      *pRc = rc;
    }
  }
  return pRet;
}
