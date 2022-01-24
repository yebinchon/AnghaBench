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
typedef  int /*<<< orphan*/  sqlite3 ;

/* Variables and functions */
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (char**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 

__attribute__((used)) static sqlite3_stmt *FUNC4(
  int *pRc,                       /* IN/OUT: Error code */
  sqlite3 *db,                    /* Database handle */
  const char *zSql,               /* SQL statement to prepare */
  char **pzErr                    /* OUT: Error message */
){
  sqlite3_stmt *pRet = 0;
  FUNC0( pzErr );
  if( *pRc==SQLITE_OK ){
    int rc = FUNC3(db, zSql, -1, &pRet, 0);
    if( rc!=SQLITE_OK ){
      *pzErr = FUNC2("sql error: %s", FUNC1(db));
      *pRc = rc;
    }
  }
  return pRet;
}