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
typedef  int /*<<< orphan*/  sqlite3_int64 ;
typedef  int /*<<< orphan*/  Fts3Table ;

/* Variables and functions */
 int SQLITE_OK ; 
 scalar_t__ SQLITE_ROW ; 
 int /*<<< orphan*/  SQL_SEGMENT_IS_APPENDABLE ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(Fts3Table *p, sqlite3_int64 iEnd, int *pbRes){
  int bRes = 0;                   /* Result to set *pbRes to */
  sqlite3_stmt *pCheck = 0;       /* Statement to query database with */
  int rc;                         /* Return code */

  rc = FUNC0(p, SQL_SEGMENT_IS_APPENDABLE, &pCheck, 0);
  if( rc==SQLITE_OK ){
    FUNC1(pCheck, 1, iEnd);
    if( SQLITE_ROW==FUNC3(pCheck) ) bRes = 1;
    rc = FUNC2(pCheck);
  }
  
  *pbRes = bRes;
  return rc;
}