#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int flags; int /*<<< orphan*/  db; scalar_t__ canceled; } ;
typedef  TYPE_1__ mm_backup_ctx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,char const*) ; 
 int MMBAK_FLAG_FIX_CORRUPTION ; 
 int MMBAK_RET_CANCELED ; 
 int MMBAK_RET_FAILED ; 
 int MMBAK_RET_OK ; 
 int SQLITE_ABORT ; 
 int SQLITE_CORRUPT ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  dump_callback ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (size_t) ; 
 int FUNC3 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,TYPE_1__*,char**) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (size_t,char*,char*,char const*) ; 
 size_t FUNC6 (char const*) ; 

__attribute__((used)) static int FUNC7(mm_backup_ctx *ctx, const char *query_sql)
{
    // check cancel status.
    if (ctx->canceled)
        return MMBAK_RET_CANCELED;

    // dump all tables.
    char *errmsg = NULL;
    int ret = FUNC3(ctx->db, query_sql, dump_callback, ctx, &errmsg);
    if (ret == SQLITE_ABORT) {
        // abort due to user cancellation or error.
        if (errmsg)
            FUNC4(errmsg);
        return (ctx->canceled) ? MMBAK_RET_CANCELED : MMBAK_RET_FAILED;
    }

    if (ret == SQLITE_CORRUPT && (ctx->flags & MMBAK_FLAG_FIX_CORRUPTION)) {
        // in case of database corruption, dump tables in reverse order.
        if (errmsg) {
            FUNC0("SQL execution failed: %s [SQL: %s]", errmsg, query_sql);
            FUNC4(errmsg);
            errmsg = NULL;
        }

        size_t len = FUNC6(query_sql);
        char *query_sql_reverse = (char *) FUNC2(len + 32);
        if (!query_sql_reverse)
            return ret;
        FUNC5(len + 32, query_sql_reverse, "%s ORDER BY rowid DESC",
                         query_sql);

        ret = FUNC3(ctx->db, query_sql_reverse, dump_callback, ctx,
                           &errmsg);
        FUNC1(query_sql_reverse);
    }

    if (errmsg) {
        FUNC0("SQL execution failed: %s [SQL: %s]", errmsg, query_sql);
        FUNC4(errmsg);
    }
    return (ret == SQLITE_OK) ? MMBAK_RET_OK : MMBAK_RET_FAILED;
}