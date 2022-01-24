#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_stmt ;
struct TYPE_5__ {TYPE_1__* priv; } ;
struct TYPE_4__ {int /*<<< orphan*/  db_lock; int /*<<< orphan*/  db; } ;
typedef  TYPE_2__ SeafFilelockManager ;

/* Variables and functions */
 scalar_t__ SQLITE_DONE ; 
 int /*<<< orphan*/  SQLITE_TRANSIENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC8 (SeafFilelockManager *mgr,
                            const char *repo_id,
                            const char *path)
{
    char *sql;
    sqlite3_stmt *stmt;

    FUNC0 (&mgr->priv->db_lock);

    sql = "DELETE FROM ServerLockedFiles WHERE repo_id = ? AND path = ?";
    stmt = FUNC7 (mgr->priv->db, sql);
    FUNC3 (stmt, 1, repo_id, -1, SQLITE_TRANSIENT);
    FUNC3 (stmt, 2, path, -1, SQLITE_TRANSIENT);
    if (FUNC6 (stmt) != SQLITE_DONE) {
        FUNC2 ("Failed to remove locked file %s from %.8s: %s.\n",
                      path, repo_id, FUNC4 (mgr->priv->db));
        FUNC5 (stmt);
        FUNC1 (&mgr->priv->db_lock);
        return -1;
    }
    FUNC5 (stmt);

    FUNC1 (&mgr->priv->db_lock);

    return 0;
}