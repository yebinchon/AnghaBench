#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  scalar_t__ sqlite3_int64 ;
struct TYPE_3__ {char* a; int /*<<< orphan*/  n; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  Fts3Table ;
typedef  TYPE_1__ Blob ;

/* Variables and functions */
 int SQLITE_OK ; 
 scalar_t__ SQLITE_ROW ; 
 int /*<<< orphan*/  SQLITE_STATIC ; 
 int /*<<< orphan*/  SQL_CHOMP_SEGDIR ; 
 int /*<<< orphan*/  SQL_DELETE_SEGMENTS_RANGE ; 
 int /*<<< orphan*/  SQL_SELECT_SEGDIR ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int FUNC1 (char const*,int,TYPE_1__*,char const*,int,scalar_t__*) ; 
 int FUNC2 (int /*<<< orphan*/ *,scalar_t__,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,scalar_t__,char**,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 char* FUNC8 (int /*<<< orphan*/ *,int) ; 
 int FUNC9 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(
  Fts3Table *p,                   /* FTS3 table handle */
  sqlite3_int64 iAbsLevel,        /* Absolute level of segment to modify */
  int iIdx,                       /* Index within level of segment to modify */
  const char *zTerm,              /* Remove terms smaller than this */
  int nTerm                      /* Number of bytes in buffer zTerm */
){
  int rc = SQLITE_OK;             /* Return code */
  Blob root = {0,0,0};            /* New root page image */
  Blob block = {0,0,0};           /* Buffer used for any other block */
  sqlite3_int64 iBlock = 0;       /* Block id */
  sqlite3_int64 iNewStart = 0;    /* New value for iStartBlock */
  sqlite3_int64 iOldStart = 0;    /* Old value for iStartBlock */
  sqlite3_stmt *pFetch = 0;       /* Statement used to fetch segdir */

  rc = FUNC0(p, SQL_SELECT_SEGDIR, &pFetch, 0);
  if( rc==SQLITE_OK ){
    int rc2;                      /* sqlite3_reset() return code */
    FUNC6(pFetch, 1, iAbsLevel);
    FUNC5(pFetch, 2, iIdx);
    if( SQLITE_ROW==FUNC13(pFetch) ){
      const char *aRoot = FUNC8(pFetch, 4);
      int nRoot = FUNC9(pFetch, 4);
      iOldStart = FUNC10(pFetch, 1);
      rc = FUNC1(aRoot, nRoot, &root, zTerm, nTerm, &iBlock);
    }
    rc2 = FUNC12(pFetch);
    if( rc==SQLITE_OK ) rc = rc2;
  }

  while( rc==SQLITE_OK && iBlock ){
    char *aBlock = 0;
    int nBlock = 0;
    iNewStart = iBlock;

    rc = FUNC3(p, iBlock, &aBlock, &nBlock, 0);
    if( rc==SQLITE_OK ){
      rc = FUNC1(aBlock, nBlock, &block, zTerm, nTerm, &iBlock);
    }
    if( rc==SQLITE_OK ){
      rc = FUNC2(p, iNewStart, block.a, block.n);
    }
    FUNC11(aBlock);
  }

  /* Variable iNewStart now contains the first valid leaf node. */
  if( rc==SQLITE_OK && iNewStart ){
    sqlite3_stmt *pDel = 0;
    rc = FUNC0(p, SQL_DELETE_SEGMENTS_RANGE, &pDel, 0);
    if( rc==SQLITE_OK ){
      FUNC6(pDel, 1, iOldStart);
      FUNC6(pDel, 2, iNewStart-1);
      FUNC13(pDel);
      rc = FUNC12(pDel);
    }
  }

  if( rc==SQLITE_OK ){
    sqlite3_stmt *pChomp = 0;
    rc = FUNC0(p, SQL_CHOMP_SEGDIR, &pChomp, 0);
    if( rc==SQLITE_OK ){
      FUNC6(pChomp, 1, iNewStart);
      FUNC4(pChomp, 2, root.a, root.n, SQLITE_STATIC);
      FUNC6(pChomp, 3, iAbsLevel);
      FUNC5(pChomp, 4, iIdx);
      FUNC13(pChomp);
      rc = FUNC12(pChomp);
      FUNC7(pChomp, 2);
    }
  }

  FUNC11(root.a);
  FUNC11(block.a);
  return rc;
}