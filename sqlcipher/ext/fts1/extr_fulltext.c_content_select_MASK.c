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

/* Variables and functions */
 int /*<<< orphan*/  CONTENT_SELECT_STMT ; 
 int SQLITE_DONE ; 
 int SQLITE_OK ; 
 int SQLITE_ROW ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 char* FUNC6 (char const*) ; 

__attribute__((used)) static int FUNC7(fulltext_vtab *v, sqlite_int64 iRow,
                          char **pzContent){
  sqlite3_stmt *s;
  int rc = FUNC1(v, CONTENT_SELECT_STMT, &s);
  if( rc!=SQLITE_OK ) return rc;

  rc = FUNC3(s, 1, iRow);
  if( rc!=SQLITE_OK ) return rc;

  rc = FUNC2(v, CONTENT_SELECT_STMT, &s);
  if( rc!=SQLITE_ROW ) return rc;

  *pzContent = FUNC6((const char *)FUNC4(s, 0));

  /* We expect only one row.  We must execute another sqlite3_step()
   * to complete the iteration; otherwise the table will remain locked. */
  rc = FUNC5(s);
  if( rc==SQLITE_DONE ) return SQLITE_OK;

  FUNC0(*pzContent);
  return rc;
}