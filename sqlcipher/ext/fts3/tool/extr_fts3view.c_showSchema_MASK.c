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
 scalar_t__ SQLITE_ROW ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(sqlite3 *db, const char *zTab){
  sqlite3_stmt *pStmt;
  pStmt = FUNC0(db,
            "SELECT sql FROM sqlite_master"
            " WHERE name LIKE '%q%%'"
            " ORDER BY 1",
            zTab);
  while( FUNC5(pStmt)==SQLITE_ROW ){
    FUNC1("%s;\n", FUNC3(pStmt, 0));
  }
  FUNC4(pStmt);
  pStmt = FUNC0(db, "PRAGMA page_size");
  while( FUNC5(pStmt)==SQLITE_ROW ){
    FUNC1("PRAGMA page_size=%s;\n", FUNC3(pStmt, 0));
  }
  FUNC4(pStmt);
  pStmt = FUNC0(db, "PRAGMA journal_mode");
  while( FUNC5(pStmt)==SQLITE_ROW ){
    FUNC1("PRAGMA journal_mode=%s;\n", FUNC3(pStmt, 0));
  }
  FUNC4(pStmt);
  pStmt = FUNC0(db, "PRAGMA auto_vacuum");
  while( FUNC5(pStmt)==SQLITE_ROW ){
    const char *zType = "???";
    switch( FUNC2(pStmt, 0) ){
      case 0:  zType = "OFF";         break;
      case 1:  zType = "FULL";        break;
      case 2:  zType = "INCREMENTAL"; break;
    }
    FUNC1("PRAGMA auto_vacuum=%s;\n", zType);
  }
  FUNC4(pStmt);
  pStmt = FUNC0(db, "PRAGMA encoding");
  while( FUNC5(pStmt)==SQLITE_ROW ){
    FUNC1("PRAGMA encoding=%s;\n", FUNC3(pStmt, 0));
  }
  FUNC4(pStmt);
}