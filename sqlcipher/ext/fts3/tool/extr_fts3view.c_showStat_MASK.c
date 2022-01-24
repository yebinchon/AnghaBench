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
typedef  int /*<<< orphan*/  sqlite3_int64 ;
typedef  int /*<<< orphan*/  sqlite3 ;

/* Variables and functions */
#define  SQLITE_BLOB 129 
#define  SQLITE_INTEGER 128 
 scalar_t__ SQLITE_ROW ; 
 int FUNC0 (unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(sqlite3 *db, const char *zTab){
  sqlite3_stmt *pStmt;
  pStmt = FUNC1(db, "SELECT id, value FROM '%q_stat'", zTab);
  while( FUNC8(pStmt)==SQLITE_ROW ){
    FUNC2("stat[%d] =", FUNC5(pStmt, 0));
    switch( FUNC6(pStmt, 1) ){
      case SQLITE_INTEGER: {
        FUNC2(" %d\n", FUNC5(pStmt, 1));
        break;
      }
      case SQLITE_BLOB: {
        unsigned char *x = (unsigned char*)FUNC3(pStmt, 1);
        int len = FUNC4(pStmt, 1);
        int i = 0;
        sqlite3_int64 v;
        while( i<len ){
          i += FUNC0(x, &v);
          FUNC2(" %lld", v);
        }
        FUNC2("\n");
        break;
      }
    }
  }
  FUNC7(pStmt);
}