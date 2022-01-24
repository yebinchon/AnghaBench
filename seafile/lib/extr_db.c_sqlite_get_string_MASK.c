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
 char* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,char const*) ; 

char *FUNC7 (sqlite3 *db, const char *sql)
{
    const char *res = NULL;
    int result;
    sqlite3_stmt *stmt;
    char *ret;

    if ( !(stmt = FUNC6(db, sql)) )
        return NULL;

    result = FUNC5 (stmt);
    if (result == SQLITE_ROW) {
        res = (const char *)FUNC2 (stmt, 0);
        ret = FUNC0(res);
        FUNC4 (stmt);
        return ret;
    }

    if (result == SQLITE_ERROR) {
        const gchar *str = FUNC3 (db);
        FUNC1 ("Couldn't execute query, error: %d->'%s'\n",
                   result, str ? str : "no error given");
        FUNC4 (stmt);
        return NULL;
    }

    FUNC4(stmt);
    return NULL;
}