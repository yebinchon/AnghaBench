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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 char* FUNC3 (char const*,char const*,char const*) ; 

__attribute__((used)) static int FUNC4(sqlite3 *db, const char *zDb, const char *zName,
                       sqlite3_stmt **ppStmt, const char *zFormat){
  char *zCommand = FUNC3(zFormat, zDb, zName);
  int rc;
  FUNC0(("FTS2 prepare: %s\n", zCommand));
  rc = FUNC2(db, zCommand, -1, ppStmt, NULL);
  FUNC1(zCommand);
  return rc;
}