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
typedef  int /*<<< orphan*/  sqlite3 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char const*,char const*,char const*) ; 

__attribute__((used)) static int FUNC4(sqlite3 *db, const char *zDb, const char *zName,
                    const char *zFormat){
  char *zCommand = FUNC3(zFormat, zDb, zName);
  int rc;
  FUNC0(("FTS2 sql: %s\n", zCommand));
  rc = FUNC1(db, zCommand, NULL, 0, NULL);
  FUNC2(zCommand);
  return rc;
}