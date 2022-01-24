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
 int SQLITE_DONE ; 
 int SQLITE_ERROR ; 
#define  SQLITE_INTEGER 129 
#define  SQLITE_NULL 128 
 int SQLITE_OK ; 
 int SQLITE_ROW ; 
 int /*<<< orphan*/  SQLITE_STATIC ; 
 int /*<<< orphan*/  TERM_CHUNK_SELECT_STMT ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(fulltext_vtab *v, const char *zTerm, int nTerm,
                           sqlite_int64 iFirst, sqlite_int64 *piResult){
  sqlite3_stmt *s;
  int rc = FUNC0(v, TERM_CHUNK_SELECT_STMT, &s);
  if( rc!=SQLITE_OK ) return rc;

  rc = FUNC3(s, 1, zTerm, nTerm, SQLITE_STATIC);
  if( rc!=SQLITE_OK ) return rc;

  rc = FUNC2(s, 2, iFirst);
  if( rc!=SQLITE_OK ) return rc;

  rc = FUNC1(v, TERM_CHUNK_SELECT_STMT, &s);
  if( rc!=SQLITE_ROW ) return rc==SQLITE_DONE ? SQLITE_ERROR : rc;

  switch( FUNC5(s, 0) ){
    case SQLITE_NULL:
      rc = SQLITE_DONE;
      break;
    case SQLITE_INTEGER:
     *piResult = FUNC4(s, 0);
     break;
    default:
      return SQLITE_ERROR;
  }
  /* We expect only one row.  We must execute another sqlite3_step()
   * to complete the iteration; otherwise the table will remain locked. */
  if( FUNC6(s) != SQLITE_DONE ) return SQLITE_ERROR;
  return rc;
}