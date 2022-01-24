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
struct TYPE_4__ {int /*<<< orphan*/  hash_lock; int /*<<< orphan*/  repo_locked_files; int /*<<< orphan*/  db_lock; int /*<<< orphan*/  db; } ;
typedef  TYPE_2__ SeafFilelockManager ;

/* Variables and functions */
 scalar_t__ SQLITE_DONE ; 
 int /*<<< orphan*/  SQLITE_TRANSIENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,char*) ; 

int
FUNC9 (SeafFilelockManager *mgr,
                              const char *repo_id)
{
    char *sql;
    sqlite3_stmt *stmt;

    FUNC1 (&mgr->priv->db_lock);

    sql = "DELETE FROM ServerLockedFiles WHERE repo_id = ?";
    stmt = FUNC8 (mgr->priv->db, sql);
    FUNC4 (stmt, 1, repo_id, -1, SQLITE_TRANSIENT);
    if (FUNC7 (stmt) != SQLITE_DONE) {
        FUNC3 ("Failed to remove server locked files for %.8s: %s.\n",
                      repo_id, FUNC5 (mgr->priv->db));
        FUNC6 (stmt);
        FUNC2 (&mgr->priv->db_lock);
        return -1;
    }
    FUNC6 (stmt);

    sql = "DELETE FROM ServerLockedFilesTimestamp WHERE repo_id = ?";
    stmt = FUNC8 (mgr->priv->db, sql);
    FUNC4 (stmt, 1, repo_id, -1, SQLITE_TRANSIENT);
    if (FUNC7 (stmt) != SQLITE_DONE) {
        FUNC3 ("Failed to remove server locked files timestamp for %.8s: %s.\n",
                      repo_id, FUNC5 (mgr->priv->db));
        FUNC6 (stmt);
        FUNC2 (&mgr->priv->db_lock);
        return -1;
    }
    FUNC6 (stmt);

    FUNC2 (&mgr->priv->db_lock);

    FUNC1 (&mgr->priv->hash_lock);
    FUNC0 (mgr->priv->repo_locked_files, repo_id);
    FUNC2 (&mgr->priv->hash_lock);

    return 0;
}