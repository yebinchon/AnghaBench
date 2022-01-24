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
 int /*<<< orphan*/  SEGDIR_SPAN_STMT ; 
 int SQLITE_DONE ; 
 int SQLITE_ERROR ; 
 scalar_t__ SQLITE_NULL ; 
 int SQLITE_OK ; 
 int SQLITE_ROW ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(fulltext_vtab *v, int iLevel,
                       sqlite_int64 *piStartBlockid,
                       sqlite_int64 *piEndBlockid){
  sqlite3_stmt *s;
  int rc = FUNC0(v, SEGDIR_SPAN_STMT, &s);
  if( rc!=SQLITE_OK ) return rc;

  rc = FUNC1(s, 1, iLevel);
  if( rc!=SQLITE_OK ) return rc;

  rc = FUNC4(s);
  if( rc==SQLITE_DONE ) return SQLITE_DONE;  /* Should never happen */
  if( rc!=SQLITE_ROW ) return rc;

  /* This happens if all segments at this level are entirely inline. */
  if( SQLITE_NULL==FUNC3(s, 0) ){
    /* We expect only one row.  We must execute another sqlite3_step()
     * to complete the iteration; otherwise the table will remain locked. */
    int rc2 = FUNC4(s);
    if( rc2==SQLITE_ROW ) return SQLITE_ERROR;
    return rc2;
  }

  *piStartBlockid = FUNC2(s, 0);
  *piEndBlockid = FUNC2(s, 1);

  /* We expect only one row.  We must execute another sqlite3_step()
   * to complete the iteration; otherwise the table will remain locked. */
  rc = FUNC4(s);
  if( rc==SQLITE_ROW ) return SQLITE_ERROR;
  if( rc!=SQLITE_DONE ) return rc;
  return SQLITE_ROW;
}