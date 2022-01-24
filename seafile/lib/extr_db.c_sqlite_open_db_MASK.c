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
 int /*<<< orphan*/  FUNC0 (char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (char const*,int /*<<< orphan*/ **) ; 

int
FUNC4 (const char *db_path, sqlite3 **db)
{
    int result;
    const char *errmsg;

    result = FUNC3 (db_path, db);
    if (result) {
        errmsg = FUNC2 (*db);
                                
        FUNC0 ("Couldn't open database:'%s', %s\n", 
                   db_path, errmsg ? errmsg : "no error given");

        FUNC1 (*db);
        return -1;
    }

    return 0;
}