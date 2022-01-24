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
 int SQLITE_OK ; 
 int SQLITE_OPEN_READWRITE ; 
 int SQLITE_OPEN_URI ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (char const*,int /*<<< orphan*/ **,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static sqlite3 *FUNC5(const char *zPrg, const char *zName){
  sqlite3 *db = 0;
  int flags = SQLITE_OPEN_READWRITE | SQLITE_OPEN_URI;
  int rc = FUNC4(zName, &db, flags, 0);
  if( rc!=SQLITE_OK ){
    const char *zErr = FUNC3(db);
    FUNC1(stderr, "%s: can't open %s (%s)\n", zPrg, zName, zErr);
    FUNC2(db);
    FUNC0(1);
  }
  return db;
}