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
 int /*<<< orphan*/  SQL_DELETE_SEGDIR_ENTRY ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(
  Fts3Table *p,                   /* FTS3 table handle */
  sqlite3_int64 iAbsLevel,        /* Absolute level to delete from */
  int iIdx                        /* Index of %_segdir entry to delete */
){
  int rc;                         /* Return code */
  sqlite3_stmt *pDelete = 0;      /* DELETE statement */

  rc = FUNC0(p, SQL_DELETE_SEGDIR_ENTRY, &pDelete, 0);
  if( rc==SQLITE_OK ){
    FUNC2(pDelete, 1, iAbsLevel);
    FUNC1(pDelete, 2, iIdx);
    FUNC4(pDelete);
    rc = FUNC3(pDelete);
  }

  return rc;
}