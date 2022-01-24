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
typedef  int /*<<< orphan*/  sqlite3rbu ;
typedef  int /*<<< orphan*/  sqlite3 ;

/* Variables and functions */
 int /*<<< orphan*/  SQLITE_FCNTL_VFSNAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 

void FUNC4(sqlite3rbu *pRbu){
  sqlite3 *db = FUNC3(pRbu, 0);
  if( db ){
    char *zName = 0;
    FUNC1(db, "main", SQLITE_FCNTL_VFSNAME, &zName);
    if( zName ){
      FUNC0(stdout, "using vfs \"%s\"\n", zName);
    }else{
      FUNC0(stdout, "vfs name not available\n");
    }
    FUNC2(zName);
  }
}