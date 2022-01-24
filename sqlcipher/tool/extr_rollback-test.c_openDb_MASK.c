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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (char const*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static sqlite3 *FUNC5(const char *zFilename){
  int rc;
  sqlite3 *db;
  rc = FUNC4(zFilename, &db);
  if( rc ){
    FUNC1(stderr, "Cannot open \"%s\": %s\n",
            zFilename, FUNC3(db));
    FUNC2(db);
    FUNC0(1);
  }
  return db;
}