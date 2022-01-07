
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int sqlite3_stmt ;
typedef int sqlite3 ;


 int SQLITE_OK ;
 scalar_t__ SQLITE_ROW ;
 int SQLITE_STATIC ;
 int checkFreelistError (char**,char*,int,...) ;
 int get4byte (int const*) ;
 int sqlGetInteger (int *,char const*,char*,int*) ;
 int sqlite3_bind_text (int *,int,char const*,int,int ) ;
 scalar_t__ sqlite3_column_blob (int *,int) ;
 int sqlite3_column_bytes (int *,int) ;
 int sqlite3_column_int (int *,int ) ;
 int sqlite3_finalize (int *) ;
 int sqlite3_prepare_v2 (int *,char const*,int,int **,int ) ;
 scalar_t__ sqlite3_step (int *) ;

__attribute__((used)) static int checkFreelist(
  sqlite3 *db,
  const char *zDb,
  char **pzOut
){


  const char *zTrunk =
    "WITH freelist_trunk(i, d, n) AS ("
      "SELECT 1, NULL, sqlite_readint32(data, 32) "
      "FROM sqlite_dbpage(:1) WHERE pgno=1 "
        "UNION ALL "
      "SELECT n, data, sqlite_readint32(data) "
      "FROM freelist_trunk, sqlite_dbpage(:1) WHERE pgno=n "
    ")"
    "SELECT i, d FROM freelist_trunk WHERE i!=1;";

  int rc, rc2;
  sqlite3_stmt *pTrunk = 0;
  u32 nPage = 0;
  u32 nExpected = 0;
  u32 nFree = 0;

  if( zDb==0 ) zDb = "main";

  if( (rc = sqlGetInteger(db, zDb, "PRAGMA %s.page_count", &nPage))
   || (rc = sqlGetInteger(db, zDb, "PRAGMA %s.freelist_count", &nExpected))
  ){
    return rc;
  }

  rc = sqlite3_prepare_v2(db, zTrunk, -1, &pTrunk, 0);
  if( rc!=SQLITE_OK ) return rc;
  sqlite3_bind_text(pTrunk, 1, zDb, -1, SQLITE_STATIC);
  while( rc==SQLITE_OK && sqlite3_step(pTrunk)==SQLITE_ROW ){
    u32 i;
    u32 iTrunk = (u32)sqlite3_column_int(pTrunk, 0);
    const u8 *aData = (const u8*)sqlite3_column_blob(pTrunk, 1);
    u32 nData = (u32)sqlite3_column_bytes(pTrunk, 1);
    u32 iNext = get4byte(&aData[0]);
    u32 nLeaf = get4byte(&aData[4]);

    if( nLeaf>((nData/4)-2-6) ){
      rc = checkFreelistError(pzOut,
          "leaf count out of range (%d) on trunk page %d",
          (int)nLeaf, (int)iTrunk
      );
      nLeaf = (nData/4) - 2 - 6;
    }

    nFree += 1+nLeaf;
    if( iNext>nPage ){
      rc = checkFreelistError(pzOut,
          "trunk page %d is out of range", (int)iNext
      );
    }

    for(i=0; rc==SQLITE_OK && i<nLeaf; i++){
      u32 iLeaf = get4byte(&aData[8 + 4*i]);
      if( iLeaf==0 || iLeaf>nPage ){
        rc = checkFreelistError(pzOut,
            "leaf page %d is out of range (child %d of trunk page %d)",
            (int)iLeaf, (int)i, (int)iTrunk
        );
      }
    }
  }

  if( rc==SQLITE_OK && nFree!=nExpected ){
    rc = checkFreelistError(pzOut,
        "free-list count mismatch: actual=%d header=%d",
        (int)nFree, (int)nExpected
    );
  }

  rc2 = sqlite3_finalize(pTrunk);
  if( rc==SQLITE_OK ) rc = rc2;
  return rc;
}
