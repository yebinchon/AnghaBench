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
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  scalar_t__ sqlite3_int64 ;
typedef  int /*<<< orphan*/  Fts3Table ;

/* Variables and functions */
 int SQLITE_OK ; 
 int /*<<< orphan*/  SQL_NEXT_SEGMENT_INDEX ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5( 
  Fts3Table *p,                   /* FTS Table handle */
  sqlite3_int64 iAbsLevel,        /* Absolute index of input segments */
  int *piIdx                      /* OUT: Next free index at iAbsLevel+1 */
){
  int rc;
  sqlite3_stmt *pOutputIdx = 0;   /* SQL used to find output index */

  rc = FUNC0(p, SQL_NEXT_SEGMENT_INDEX, &pOutputIdx, 0);
  if( rc==SQLITE_OK ){
    FUNC1(pOutputIdx, 1, iAbsLevel+1);
    FUNC4(pOutputIdx);
    *piIdx = FUNC2(pOutputIdx, 0);
    rc = FUNC3(pOutputIdx);
  }

  return rc;
}