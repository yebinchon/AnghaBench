
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sqlite3_stmt ;
typedef int sqlite3 ;
struct TYPE_2__ {int bRec; } ;


 int SQLITE_OK ;
 scalar_t__ SQLITE_ROW ;
 int assert (int) ;
 int memcpy (char*,char const*,int) ;
 int sqlite3_column_bytes (int *,int) ;
 scalar_t__ sqlite3_column_text (int *,int) ;
 int sqlite3_finalize (int *) ;
 int sqlite3_log (int,char*) ;
 int sqlite3_prepare_v2 (int *,char*,int,int **,int ) ;
 scalar_t__ sqlite3_step (int *) ;
 scalar_t__ sqlite3_strnicmp (char const*,char const*,int) ;
 TYPE_1__ sqllogglobal ;
 int strlen (char const*) ;

__attribute__((used)) static int sqllogFindAttached(
  sqlite3 *db,
  const char *zSearch,
  char *zName,
  char *zFile
){
  sqlite3_stmt *pStmt;
  int rc;




  assert( sqllogglobal.bRec==0 );
  sqllogglobal.bRec = 1;
  rc = sqlite3_prepare_v2(db, "PRAGMA database_list", -1, &pStmt, 0);
  if( rc==SQLITE_OK ){
    while( SQLITE_ROW==sqlite3_step(pStmt) ){
      const char *zVal1; int nVal1;
      const char *zVal2; int nVal2;

      zVal1 = (const char*)sqlite3_column_text(pStmt, 1);
      nVal1 = sqlite3_column_bytes(pStmt, 1);
      if( zName ){
        memcpy(zName, zVal1, nVal1+1);
      }

      zVal2 = (const char*)sqlite3_column_text(pStmt, 2);
      nVal2 = sqlite3_column_bytes(pStmt, 2);
      memcpy(zFile, zVal2, nVal2+1);

      if( zSearch && strlen(zSearch)==nVal1
       && 0==sqlite3_strnicmp(zSearch, zVal1, nVal1)
      ){
        break;
      }
    }
    rc = sqlite3_finalize(pStmt);
  }
  sqllogglobal.bRec = 0;

  if( rc!=SQLITE_OK ){
    sqlite3_log(rc, "sqllogFindAttached(): error in \"PRAGMA database_list\"");
  }
  return rc;
}
