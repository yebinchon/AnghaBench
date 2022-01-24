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
 int /*<<< orphan*/  FUNC0 (char*,int,char*,char const*) ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

int
FUNC3 (sqlite3 *db, const char *sql)
{
    char *errmsg = NULL;
    int result;

    result = FUNC1 (db, sql, NULL, NULL, &errmsg);

    if (result != SQLITE_OK) {
        if (errmsg != NULL) {
            FUNC0 ("SQL error: %d - %s\n:\t%s\n", result, errmsg, sql);
            FUNC2 (errmsg);
        }
        return -1;
    }

    return 0;
}