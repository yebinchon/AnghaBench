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
struct TYPE_5__ {int nAutoincrmerge; scalar_t__ bFts4; int /*<<< orphan*/  bHasStat; } ;
typedef  TYPE_1__ Fts3Table ;

/* Variables and functions */
 int FTS3_MERGE_COUNT ; 
 int FTS_STAT_AUTOINCRMERGE ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  SQL_REPLACE_STAT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char const**) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(
  Fts3Table *p,                   /* FTS3 table handle */
  const char *zParam              /* Nul-terminated string containing boolean */
){
  int rc = SQLITE_OK;
  sqlite3_stmt *pStmt = 0;
  p->nAutoincrmerge = FUNC1(&zParam);
  if( p->nAutoincrmerge==1 || p->nAutoincrmerge>FTS3_MERGE_COUNT ){
    p->nAutoincrmerge = 8;
  }
  if( !p->bHasStat ){
    FUNC0( p->bFts4==0 );
    FUNC3(&rc, p);
    if( rc ) return rc;
  }
  rc = FUNC2(p, SQL_REPLACE_STAT, &pStmt, 0);
  if( rc ) return rc;
  FUNC4(pStmt, 1, FTS_STAT_AUTOINCRMERGE);
  FUNC4(pStmt, 2, p->nAutoincrmerge);
  FUNC6(pStmt);
  rc = FUNC5(pStmt);
  return rc;
}