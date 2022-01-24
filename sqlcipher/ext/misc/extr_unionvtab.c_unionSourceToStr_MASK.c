#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  int /*<<< orphan*/  sqlite3 ;
typedef  int /*<<< orphan*/  UnionTab ;
struct TYPE_5__ {int /*<<< orphan*/  zDb; int /*<<< orphan*/  zTab; } ;
typedef  TYPE_1__ UnionSrc ;

/* Variables and functions */
 int SQLITE_OK ; 
 scalar_t__ SQLITE_ROW ; 
 int /*<<< orphan*/  SQLITE_STATIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC5 (int /*<<< orphan*/ *,TYPE_1__*,char**) ; 
 int /*<<< orphan*/ * FUNC6 (int*,int /*<<< orphan*/ *,char*,char**) ; 
 char* FUNC7 (int*,char const*) ; 

__attribute__((used)) static char *FUNC8(
  int *pRc,                       /* IN/OUT: Error code */
  UnionTab *pTab,                 /* Virtual table object */
  UnionSrc *pSrc,                 /* Source table to test */
  char **pzErr                    /* OUT: Error message */
){
  char *zRet = 0;
  if( *pRc==SQLITE_OK ){
    sqlite3 *db = FUNC4(pTab, pSrc);
    int rc = FUNC5(db, pSrc, pzErr);
    sqlite3_stmt *pStmt = FUNC6(&rc, db, 
        "SELECT group_concat(quote(name) || '.' || quote(type)) "
        "FROM pragma_table_info(?, ?)", pzErr
    );
    if( rc==SQLITE_OK ){
      FUNC0(pStmt, 1, pSrc->zTab, -1, SQLITE_STATIC);
      FUNC0(pStmt, 2, pSrc->zDb, -1, SQLITE_STATIC);
      if( SQLITE_ROW==FUNC2(pStmt) ){
        const char *z = (const char*)FUNC1(pStmt, 0);
        zRet = FUNC7(&rc, z);
      }
      FUNC3(&rc, pStmt, pzErr);
    }
    *pRc = rc;
  }

  return zRet;
}