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
typedef  int /*<<< orphan*/  sqlite_int64 ;
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  int /*<<< orphan*/  fulltext_vtab ;
typedef  int /*<<< orphan*/  LeavesReader ;

/* Variables and functions */
 int MERGE_COUNT ; 
 int /*<<< orphan*/  SEGDIR_SELECT_LEVEL_STMT ; 
 int SQLITE_DONE ; 
 int SQLITE_OK ; 
 int SQLITE_ROW ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,int) ; 
 char* FUNC6 (int /*<<< orphan*/ *,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(fulltext_vtab *v, int iLevel,
                             LeavesReader *pReaders, int *piReaders){
  sqlite3_stmt *s;
  int i, rc = FUNC4(v, SEGDIR_SELECT_LEVEL_STMT, &s);
  if( rc!=SQLITE_OK ) return rc;

  rc = FUNC5(s, 1, iLevel);
  if( rc!=SQLITE_OK ) return rc;

  i = 0;
  while( (rc = FUNC9(s))==SQLITE_ROW ){
    sqlite_int64 iStart = FUNC8(s, 0);
    sqlite_int64 iEnd = FUNC8(s, 1);
    const char *pRootData = FUNC6(s, 2);
    int nRootData = FUNC7(s, 2);

    FUNC0( i<MERGE_COUNT );
    rc = FUNC2(v, i, iStart, iEnd, pRootData, nRootData,
                          &pReaders[i]);
    if( rc!=SQLITE_OK ) break;

    i++;
  }
  if( rc!=SQLITE_DONE ){
    while( i-->0 ){
      FUNC1(&pReaders[i]);
    }
    return rc;
  }

  *piReaders = i;

  /* Leave our results sorted by term, then age. */
  while( i-- ){
    FUNC3(pReaders+i, *piReaders-i);
  }
  return SQLITE_OK;
}