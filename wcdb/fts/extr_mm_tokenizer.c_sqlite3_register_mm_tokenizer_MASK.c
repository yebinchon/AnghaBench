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
typedef  int /*<<< orphan*/  sqlite3_tokenizer_module ;
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  int /*<<< orphan*/  sqlite3 ;

/* Variables and functions */
 int SQLITE_OK ; 
 int /*<<< orphan*/  SQLITE_STATIC ; 
 int /*<<< orphan*/  mm_tokenizer_module ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/  const**,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,char*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(sqlite3 *db)
{
    const sqlite3_tokenizer_module *module = &mm_tokenizer_module;
    sqlite3_stmt *stmt = NULL;
    int result;

    result =
        FUNC3(db, "SELECT fts3_tokenizer(?, ?)", -1, &stmt, 0);
    if (result != SQLITE_OK)
        return result;

    FUNC1(stmt, 1, "mmicu", -1, SQLITE_STATIC);
    FUNC0(stmt, 2, &module, sizeof(sqlite3_tokenizer_module *),
                      SQLITE_STATIC);
    FUNC4(stmt);

    return FUNC2(stmt);
}