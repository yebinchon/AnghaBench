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
struct TYPE_3__ {int /*<<< orphan*/  n; int /*<<< orphan*/  a; } ;
typedef  int /*<<< orphan*/  Fts3Table ;
typedef  TYPE_1__ Blob ;

/* Variables and functions */
 int /*<<< orphan*/  FTS_STAT_INCRMERGEHINT ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  SQLITE_STATIC ; 
 int /*<<< orphan*/  SQL_REPLACE_STAT ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(Fts3Table *p, Blob *pHint){
  sqlite3_stmt *pReplace = 0;
  int rc;                         /* Return code */

  rc = FUNC0(p, SQL_REPLACE_STAT, &pReplace, 0);
  if( rc==SQLITE_OK ){
    FUNC2(pReplace, 1, FTS_STAT_INCRMERGEHINT);
    FUNC1(pReplace, 2, pHint->a, pHint->n, SQLITE_STATIC);
    FUNC5(pReplace);
    rc = FUNC4(pReplace);
    FUNC3(pReplace, 2);
  }

  return rc;
}