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
 int SQLITE_NOMEM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,char**,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static int FUNC3(
  sqlite3 *db, 
  sqlite3_stmt **ppStmt,
  char **pzErrmsg,
  char *zSql
){
  int rc;
  FUNC0( *pzErrmsg==0 );
  if( zSql==0 ){
    rc = SQLITE_NOMEM;
    *ppStmt = 0;
  }else{
    rc = FUNC1(db, ppStmt, pzErrmsg, zSql);
    FUNC2(zSql);
  }
  return rc;
}