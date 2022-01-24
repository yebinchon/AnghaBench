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
typedef  int /*<<< orphan*/  gboolean ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int SQLITE_ERROR ; 
 int SQLITE_ROW ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*,int,char const*) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char const*) ; 

gboolean
FUNC5 (sqlite3 *db, const char *sql)
{
    sqlite3_stmt *stmt;
    int result;

    stmt = FUNC4 (db, sql);
    if (!stmt)
        return FALSE;

    result = FUNC3 (stmt);
    if (result == SQLITE_ERROR) {
        const gchar *str = FUNC1 (db);

        FUNC0 ("Couldn't execute query, error: %d->'%s'\n", 
                   result, str ? str : "no error given");
        FUNC2 (stmt);
        return FALSE;
    }
    FUNC2 (stmt);

    if (result == SQLITE_ROW)
        return TRUE;
    return FALSE;
}