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
typedef  int /*<<< orphan*/  sqlite3_str ;
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  int /*<<< orphan*/  sqlite3 ;

/* Variables and functions */
 int SQLITE_OK ; 
 scalar_t__ SQLITE_ROW ; 
 int /*<<< orphan*/  SQLITE_STATIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,char const*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,char const*,char const*,...) ; 

int FUNC6(
  sqlite3 *db,                   /* Database connection */
  const char *zTab,              /* Table whose columns should all be renamed */
  const char *zColPrefix,        /* Prefix for new column names */
  sqlite3_str *pConvert,         /* Append ALTER TABLE statements here */
  sqlite3_str *pUndo             /* SQL to undo the change, if not NULL */
){
  sqlite3_stmt *pStmt;
  int rc;
  int cnt = 0;

  rc = FUNC3(db,
         "SELECT name FROM pragma_table_info(?1);",
         -1, &pStmt, 0);
  if( rc ) return rc;
  FUNC0(pStmt, 1, zTab, -1, SQLITE_STATIC);
  while( FUNC4(pStmt)==SQLITE_ROW ){
    const char *zCol = (const char*)FUNC1(pStmt, 0);
    cnt++;
    FUNC5(pConvert,
      "ALTER TABLE \"%w\" RENAME COLUMN \"%w\" TO \"%w%d\";\n",
      zTab, zCol, zColPrefix, cnt
    );
    if( pUndo ){
      FUNC5(pUndo,
        "ALTER TABLE \"%w\" RENAME COLUMN \"%w%d\" TO \"%w\";\n",
        zTab, zColPrefix, cnt, zCol
      );
    }
  }
  FUNC2(pStmt);
  return SQLITE_OK; 
}