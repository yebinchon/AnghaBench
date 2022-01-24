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
 int /*<<< orphan*/  FUNC2 (char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC9 (SeafFilelockManager *mgr,
                        const char *repo_id,
                        const char *path,
                        int locked_by_me)
{
    char *sql;
    sqlite3_stmt *stmt;

    FUNC0 (&mgr->priv->db_lock);

    sql = "REPLACE INTO ServerLockedFiles (repo_id, path, locked_by_me) VALUES (?, ?, ?)";
    stmt = FUNC8 (mgr->priv->db, sql);
    FUNC4 (stmt, 1, repo_id, -1, SQLITE_TRANSIENT);
    FUNC4 (stmt, 2, path, -1, SQLITE_TRANSIENT);
    FUNC3 (stmt, 3, locked_by_me);
    if (FUNC7 (stmt) != SQLITE_DONE) {
        FUNC2 ("Failed to update server locked files for %.8s: %s.\n",
                      repo_id, FUNC5 (mgr->priv->db));
        FUNC6 (stmt);
        FUNC1 (&mgr->priv->db_lock);
        return -1;
    }
    FUNC6 (stmt);

    FUNC1 (&mgr->priv->db_lock);

    return 0;
}