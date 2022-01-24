#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_stmt ;
struct TYPE_4__ {int n; int /*<<< orphan*/  a; } ;
typedef  int /*<<< orphan*/  Fts3Table ;
typedef  TYPE_1__ Blob ;

/* Variables and functions */
 int /*<<< orphan*/  FTS_STAT_INCRMERGEHINT ; 
 int SQLITE_OK ; 
 scalar_t__ SQLITE_ROW ; 
 int /*<<< orphan*/  SQL_SELECT_STAT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int,int*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(Fts3Table *p, Blob *pHint){
  sqlite3_stmt *pSelect = 0;
  int rc;

  pHint->n = 0;
  rc = FUNC1(p, SQL_SELECT_STAT, &pSelect, 0);
  if( rc==SQLITE_OK ){
    int rc2;
    FUNC3(pSelect, 1, FTS_STAT_INCRMERGEHINT);
    if( SQLITE_ROW==FUNC7(pSelect) ){
      const char *aHint = FUNC4(pSelect, 0);
      int nHint = FUNC5(pSelect, 0);
      if( aHint ){
        FUNC0(pHint, nHint, &rc);
        if( rc==SQLITE_OK ){
          FUNC2(pHint->a, aHint, nHint);
          pHint->n = nHint;
        }
      }
    }
    rc2 = FUNC6(pSelect);
    if( rc==SQLITE_OK ) rc = rc2;
  }

  return rc;
}