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
typedef  char gchar ;

/* Variables and functions */
 int SQLITE_ERROR ; 
 int SQLITE_ROW ; 
 int /*<<< orphan*/  FUNC0 (char*,int,char const*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,char const*) ; 

int FUNC6 (sqlite3 *db, const char *sql)
{
    int ret = -1;
    int result;
    sqlite3_stmt *stmt;

    if ( !(stmt = FUNC5(db, sql)) )
        return 0;

    result = FUNC4 (stmt);
    if (result == SQLITE_ROW) {
        ret = FUNC1 (stmt, 0);
        FUNC3 (stmt);
        return ret;
    }

    if (result == SQLITE_ERROR) {
        const gchar *str = FUNC2 (db);
        FUNC0 ("Couldn't execute query, error: %d->'%s'\n",
                   result, str ? str : "no error given");
        FUNC3 (stmt);
        return -1;
    }

    FUNC3(stmt);
    return ret;
}