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
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  int /*<<< orphan*/  fulltext_vtab ;

/* Variables and functions */
 int /*<<< orphan*/  CONTENT_INSERT_STMT ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  SQLITE_STATIC ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,char const*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(fulltext_vtab *v, sqlite3_value *rowid,
                          const char *zContent, int nContent){
  sqlite3_stmt *s;
  int rc = FUNC0(v, CONTENT_INSERT_STMT, &s);
  if( rc!=SQLITE_OK ) return rc;

  rc = FUNC3(s, 1, rowid);
  if( rc!=SQLITE_OK ) return rc;

  rc = FUNC2(s, 2, zContent, nContent, SQLITE_STATIC);
  if( rc!=SQLITE_OK ) return rc;

  return FUNC1(v, CONTENT_INSERT_STMT, &s);
}