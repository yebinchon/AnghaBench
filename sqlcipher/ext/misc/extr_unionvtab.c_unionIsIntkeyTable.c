
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3 ;
struct TYPE_3__ {char* zDb; int zTab; } ;
typedef TYPE_1__ UnionSrc ;


 int SQLITE_ERROR ;
 int SQLITE_OK ;
 int sqlite3_errcode (int *) ;
 char* sqlite3_mprintf (char*,char*,char*,int ) ;
 scalar_t__ sqlite3_stricmp (char*,char const*) ;
 int sqlite3_table_column_metadata (int *,char*,int ,char*,char const**,int ,int ,int*,int ) ;

__attribute__((used)) static int unionIsIntkeyTable(
  sqlite3 *db,
  UnionSrc *pSrc,
  char **pzErr
){
  int bPk = 0;
  const char *zType = 0;
  int rc;

  sqlite3_table_column_metadata(
      db, pSrc->zDb, pSrc->zTab, "_rowid_", &zType, 0, 0, &bPk, 0
  );
  rc = sqlite3_errcode(db);
  if( rc==SQLITE_ERROR
   || (rc==SQLITE_OK && (!bPk || sqlite3_stricmp("integer", zType)))
  ){
    rc = SQLITE_ERROR;
    *pzErr = sqlite3_mprintf("no such rowid table: %s%s%s",
        (pSrc->zDb ? pSrc->zDb : ""),
        (pSrc->zDb ? "." : ""),
        pSrc->zTab
    );
  }
  return rc;
}
