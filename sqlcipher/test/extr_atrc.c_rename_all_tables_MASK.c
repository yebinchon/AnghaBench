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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char*,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,char const*,char const*) ; 

int FUNC8(
  sqlite3 *db,              /* Database connection */
  sqlite3_str *pConvert,    /* Append SQL to do the rename here */
  sqlite3_str *pUndo        /* Append SQL to undo the rename here */
){
  sqlite3_stmt *pStmt;
  int rc;
  int cnt = 0;

  rc = FUNC5(db,
         "SELECT name FROM sqlite_master WHERE type='table'"
         " AND name NOT LIKE 'sqlite_%';",
         -1, &pStmt, 0);
  if( rc ) return rc;
  while( FUNC6(pStmt)==SQLITE_ROW ){
    const char *zTab = (const char*)FUNC1(pStmt, 0);
    char *zNewTab;
    char zPrefix[2];

    zPrefix[0] = (cnt%26) + 'a';
    zPrefix[1] = 0;
    zNewTab = FUNC4("tx%d", ++cnt);
    if( pUndo ){
      FUNC7(pUndo,
        "ALTER TABLE \"%s\" RENAME TO \"%w\";\n",
        zNewTab, zTab
      );
    }
    FUNC0(db, zTab, zPrefix, pConvert, pUndo);
    FUNC7(pConvert,
      "ALTER TABLE \"%w\" RENAME TO \"%s\";\n",
      zTab, zNewTab
    );
    FUNC3(zNewTab);
  }
  FUNC2(pStmt);
  return SQLITE_OK;
}