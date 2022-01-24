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
 int /*<<< orphan*/  execCallback ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ nReply ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC4(sqlite3 *db, const char *zSql){
  char *zErr = 0;
  int rc;
  nReply = 0;
  rc = FUNC3(db, zSql, execCallback, 0, &zErr);
  if( zErr ){
    FUNC1(stderr, "SQL error: %s\n", zErr);
    FUNC0(1);
  }
  if( rc ){
    FUNC1(stderr, "SQL error: %s\n", FUNC2(db));
    FUNC0(1);
  }
}