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
typedef  int /*<<< orphan*/  DocList ;

/* Variables and functions */
 int /*<<< orphan*/  DL_DEFAULT ; 
 int SQLITE_DONE ; 
 int SQLITE_OK ; 
 int SQLITE_ROW ; 
 int /*<<< orphan*/  SQLITE_STATIC ; 
 int /*<<< orphan*/  TERM_SELECT_STMT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int,char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(fulltext_vtab *v, const char *pTerm, int nTerm,
                       int iSegment,
                       sqlite_int64 *rowid, DocList *out){
  sqlite3_stmt *s;
  int rc = FUNC1(v, TERM_SELECT_STMT, &s);
  if( rc!=SQLITE_OK ) return rc;

  rc = FUNC4(s, 1, pTerm, nTerm, SQLITE_STATIC);
  if( rc!=SQLITE_OK ) return rc;

  rc = FUNC3(s, 2, iSegment);
  if( rc!=SQLITE_OK ) return rc;

  rc = FUNC2(v, TERM_SELECT_STMT, &s);
  if( rc!=SQLITE_ROW ) return rc;

  *rowid = FUNC7(s, 0);
  FUNC0(out, DL_DEFAULT,
              FUNC5(s, 1), FUNC6(s, 1));

  /* We expect only one row.  We must execute another sqlite3_step()
   * to complete the iteration; otherwise the table will remain locked. */
  rc = FUNC8(s);
  return rc==SQLITE_DONE ? SQLITE_ROW : rc;
}