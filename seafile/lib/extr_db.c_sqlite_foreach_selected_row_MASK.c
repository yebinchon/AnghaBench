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
typedef  int /*<<< orphan*/  (* SqliteRowFunc ) (int /*<<< orphan*/ *,void*) ;

/* Variables and functions */
 int SQLITE_ERROR ; 
 int SQLITE_ROW ; 
 int /*<<< orphan*/  FUNC0 (char*,int,char const*) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char const*) ; 

int
FUNC5 (sqlite3 *db, const char *sql, 
                             SqliteRowFunc callback, void *data)
{
    sqlite3_stmt *stmt;
    int result;
    int n_rows = 0;

    stmt = FUNC4 (db, sql);
    if (!stmt) {
        return -1;
    }

    while (1) {
        result = FUNC3 (stmt);
        if (result != SQLITE_ROW)
            break;
        n_rows++;
        if (!callback (stmt, data))
            break;
    }

    if (result == SQLITE_ERROR) {
        const gchar *s = FUNC1 (db);

        FUNC0 ("Couldn't execute query, error: %d->'%s'\n",
                   result, s ? s : "no error given");
        FUNC2 (stmt);
        return -1;
    }

    FUNC2 (stmt);
    return n_rows;
}