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
typedef  int /*<<< orphan*/  sqlite3 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (char*,int /*<<< orphan*/ **) ; 
 char* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC8(int argc, char **argv){
  sqlite3 *db;
  int rc;
  sqlite3_str *pConvert;
  sqlite3_str *pUndo;
  char *zDbName;
  char *zSql1, *zSql2;
  if( argc!=2 ){
    FUNC0(stderr, "Usage: %s DATABASE\n", argv[0]);
  }
  zDbName = argv[1];
  rc = FUNC5(zDbName, &db);
  if( rc ){
    FUNC0(stderr, "sqlite3_open() returns %d\n", rc);
    return 1;
  }
  pConvert = FUNC7(db);
  pUndo = FUNC7(db);
  FUNC2(db, pConvert, pUndo);
  zSql1 = FUNC6(pConvert);
  zSql2 = FUNC6(pUndo);
  FUNC3(db);
  FUNC1("BEGIN;\n");
  FUNC1("%s", zSql1);
  FUNC4(zSql1);
  FUNC1(".schema --indent\n");
  FUNC1("PRAGMA integrity_check;\n");
  FUNC1("%s", zSql2);
  FUNC4(zSql2);
  FUNC1("PRAGMA integrity_check;\n");
  FUNC1("ROLLBACK;\n");
  return 0; 
}