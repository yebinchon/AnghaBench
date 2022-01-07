
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_stmt ;
typedef int sqlite3 ;


 int SQLITE_OK ;
 int * sqlite3_db_handle (int *) ;
 int sqlite3_errmsg (int *) ;
 int sqlite3_finalize (int *) ;
 char* sqlite3_mprintf (char*,int ) ;

__attribute__((used)) static void unionFinalize(int *pRc, sqlite3_stmt *pStmt, char **pzErr){
  sqlite3 *db = sqlite3_db_handle(pStmt);
  int rc = sqlite3_finalize(pStmt);
  if( *pRc==SQLITE_OK ){
    *pRc = rc;
    if( rc ){
      *pzErr = sqlite3_mprintf("%s", sqlite3_errmsg(db));
    }
  }
}
