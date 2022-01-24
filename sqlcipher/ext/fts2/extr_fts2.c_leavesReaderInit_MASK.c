#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ sqlite_int64 ;
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  int /*<<< orphan*/  fulltext_vtab ;
struct TYPE_7__ {int /*<<< orphan*/  nData; int /*<<< orphan*/  pData; } ;
struct TYPE_6__ {int idx; int eof; int /*<<< orphan*/  leafReader; int /*<<< orphan*/ * pStmt; TYPE_3__ rootData; } ;
typedef  TYPE_1__ LeavesReader ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int SQLITE_DONE ; 
 int SQLITE_OK ; 
 int SQLITE_ROW ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ **) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(fulltext_vtab *v,
                            int idx,
                            sqlite_int64 iStartBlockid,
                            sqlite_int64 iEndBlockid,
                            const char *pRootData, int nRootData,
                            LeavesReader *pReader){
  FUNC0(pReader);
  pReader->idx = idx;

  FUNC1(&pReader->rootData, 0);
  if( iStartBlockid==0 ){
    /* Entire leaf level fit in root data. */
    FUNC2(&pReader->rootData, pRootData, nRootData);
    FUNC3(pReader->rootData.pData, pReader->rootData.nData,
                   &pReader->leafReader);
  }else{
    sqlite3_stmt *s;
    int rc = FUNC4(v, idx, &s);
    if( rc!=SQLITE_OK ) return rc;

    rc = FUNC5(s, 1, iStartBlockid);
    if( rc!=SQLITE_OK ) return rc;

    rc = FUNC5(s, 2, iEndBlockid);
    if( rc!=SQLITE_OK ) return rc;

    rc = FUNC8(s);
    if( rc==SQLITE_DONE ){
      pReader->eof = 1;
      return SQLITE_OK;
    }
    if( rc!=SQLITE_ROW ) return rc;

    pReader->pStmt = s;
    FUNC3(FUNC6(pReader->pStmt, 0),
                   FUNC7(pReader->pStmt, 0),
                   &pReader->leafReader);
  }
  return SQLITE_OK;
}