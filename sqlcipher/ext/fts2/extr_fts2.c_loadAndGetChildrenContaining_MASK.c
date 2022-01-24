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
 int /*<<< orphan*/  BLOCK_SELECT_STMT ; 
 int SQLITE_DONE ; 
 int SQLITE_ERROR ; 
 int SQLITE_OK ; 
 int SQLITE_ROW ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(
  fulltext_vtab *v,
  sqlite_int64 iBlockid,
  const char *pTerm, int nTerm, int isPrefix,
  sqlite_int64 *piStartChild, sqlite_int64 *piEndChild
){
  sqlite3_stmt *s = NULL;
  int rc;

  FUNC0( iBlockid!=0 );
  FUNC0( pTerm!=NULL );
  FUNC0( nTerm!=0 );        /* TODO(shess) Why not allow this? */
  FUNC0( piStartChild!=NULL );
  FUNC0( piEndChild!=NULL );

  rc = FUNC2(v, BLOCK_SELECT_STMT, &s);
  if( rc!=SQLITE_OK ) return rc;

  rc = FUNC3(s, 1, iBlockid);
  if( rc!=SQLITE_OK ) return rc;

  rc = FUNC6(s);
  if( rc==SQLITE_DONE ) return SQLITE_ERROR;
  if( rc!=SQLITE_ROW ) return rc;

  FUNC1(FUNC4(s, 0), FUNC5(s, 0),
                        pTerm, nTerm, isPrefix, piStartChild, piEndChild);

  /* We expect only one row.  We must execute another sqlite3_step()
   * to complete the iteration; otherwise the table will remain
   * locked. */
  rc = FUNC6(s);
  if( rc==SQLITE_ROW ) return SQLITE_ERROR;
  if( rc!=SQLITE_DONE ) return rc;

  return SQLITE_OK;
}