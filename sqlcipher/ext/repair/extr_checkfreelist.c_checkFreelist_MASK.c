#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  int /*<<< orphan*/  sqlite3 ;

/* Variables and functions */
 int SQLITE_OK ; 
 scalar_t__ SQLITE_ROW ; 
 int /*<<< orphan*/  SQLITE_STATIC ; 
 int FUNC0 (char**,char*,int,...) ; 
 int FUNC1 (int /*<<< orphan*/  const*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*,char*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,char const*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(
  sqlite3 *db, 
  const char *zDb,
  char **pzOut
){
  /* This query returns one row for each page on the free list. Each row has
  ** two columns - the page number and page content.  */
  const char *zTrunk = 
    "WITH freelist_trunk(i, d, n) AS ("
      "SELECT 1, NULL, sqlite_readint32(data, 32) "
      "FROM sqlite_dbpage(:1) WHERE pgno=1 "
        "UNION ALL "
      "SELECT n, data, sqlite_readint32(data) "
      "FROM freelist_trunk, sqlite_dbpage(:1) WHERE pgno=n "
    ")"
    "SELECT i, d FROM freelist_trunk WHERE i!=1;";

  int rc, rc2;                    /* Return code */
  sqlite3_stmt *pTrunk = 0;       /* Compilation of zTrunk */
  u32 nPage = 0;                  /* Number of pages in db */
  u32 nExpected = 0;              /* Expected number of free pages */
  u32 nFree = 0;                  /* Number of pages on free list */

  if( zDb==0 ) zDb = "main";

  if( (rc = FUNC2(db, zDb, "PRAGMA %s.page_count", &nPage))
   || (rc = FUNC2(db, zDb, "PRAGMA %s.freelist_count", &nExpected))
  ){
    return rc;
  }

  rc = FUNC8(db, zTrunk, -1, &pTrunk, 0);
  if( rc!=SQLITE_OK ) return rc;
  FUNC3(pTrunk, 1, zDb, -1, SQLITE_STATIC);
  while( rc==SQLITE_OK && FUNC9(pTrunk)==SQLITE_ROW ){
    u32 i;
    u32 iTrunk = (u32)FUNC6(pTrunk, 0);
    const u8 *aData = (const u8*)FUNC4(pTrunk, 1);
    u32 nData = (u32)FUNC5(pTrunk, 1);
    u32 iNext = FUNC1(&aData[0]);
    u32 nLeaf = FUNC1(&aData[4]);

    if( nLeaf>((nData/4)-2-6) ){
      rc = FUNC0(pzOut, 
          "leaf count out of range (%d) on trunk page %d", 
          (int)nLeaf, (int)iTrunk
      );
      nLeaf = (nData/4) - 2 - 6;
    }

    nFree += 1+nLeaf;
    if( iNext>nPage ){
      rc = FUNC0(pzOut, 
          "trunk page %d is out of range", (int)iNext
      );
    }

    for(i=0; rc==SQLITE_OK && i<nLeaf; i++){
      u32 iLeaf = FUNC1(&aData[8 + 4*i]);
      if( iLeaf==0 || iLeaf>nPage ){
        rc = FUNC0(pzOut,
            "leaf page %d is out of range (child %d of trunk page %d)", 
            (int)iLeaf, (int)i, (int)iTrunk
        );
      }
    }
  }

  if( rc==SQLITE_OK && nFree!=nExpected ){
    rc = FUNC0(pzOut,
        "free-list count mismatch: actual=%d header=%d", 
        (int)nFree, (int)nExpected
    );
  }

  rc2 = FUNC7(pTrunk);
  if( rc==SQLITE_OK ) rc = rc2;
  return rc;
}