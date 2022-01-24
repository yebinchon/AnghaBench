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
 int FUNC1 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 char* FUNC2 (char const*,char const*) ; 

__attribute__((used)) static int FUNC3(sqlite3 *db, const char *zName, sqlite3_stmt **ppStmt,
                const char *zFormat){
  char *zCommand = FUNC2(zFormat, zName);
  int rc = FUNC1(db, zCommand, -1, ppStmt, NULL);
  FUNC0(zCommand);
  return rc;
}