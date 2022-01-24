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

/* Variables and functions */
 scalar_t__ SQLITE_ROW ; 
 int /*<<< orphan*/ * FUNC0 (char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(const char *zTab){
  sqlite3_stmt *pStmt = FUNC0(
      "SELECT A.sql=B.sql FROM main.sqlite_master A, aux.sqlite_master B"
      " WHERE A.name=%Q AND B.name=%Q", zTab, zTab
  );
  if( SQLITE_ROW==FUNC5(pStmt) ){
    if( FUNC3(pStmt,0)==0 ){
      FUNC1("schema changes for table %s", FUNC2(zTab));
    }
  }else{
    FUNC1("table %s missing from one or both databases", FUNC2(zTab));
  }
  FUNC4(pStmt);
}