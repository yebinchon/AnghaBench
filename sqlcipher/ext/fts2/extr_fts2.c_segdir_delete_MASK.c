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
 int /*<<< orphan*/  SEGDIR_DELETE_STMT ; 
 int SQLITE_DONE ; 
 int SQLITE_OK ; 
 int SQLITE_ROW ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static int FUNC5(fulltext_vtab *v, int iLevel){
  sqlite3_stmt *s;
  sqlite_int64 iStartBlockid, iEndBlockid;
  int rc = FUNC1(v, iLevel, &iStartBlockid, &iEndBlockid);
  if( rc!=SQLITE_ROW && rc!=SQLITE_DONE ) return rc;

  if( rc==SQLITE_ROW ){
    rc = FUNC0(v, iStartBlockid, iEndBlockid);
    if( rc!=SQLITE_OK ) return rc;
  }

  /* Delete the segment directory itself. */
  rc = FUNC2(v, SEGDIR_DELETE_STMT, &s);
  if( rc!=SQLITE_OK ) return rc;

  rc = FUNC4(s, 1, iLevel);
  if( rc!=SQLITE_OK ) return rc;

  return FUNC3(s);
}