#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  int /*<<< orphan*/  gboolean ;
struct TYPE_7__ {char const* repo_id; int /*<<< orphan*/  locked_files; TYPE_2__* mgr; } ;
struct TYPE_6__ {TYPE_1__* priv; } ;
struct TYPE_5__ {int /*<<< orphan*/  db_lock; int /*<<< orphan*/  db; } ;
typedef  TYPE_2__ SeafRepoManager ;
typedef  TYPE_3__ LockedFileSet ;

/* Variables and functions */
 scalar_t__ SQLITE_DONE ; 
 int /*<<< orphan*/  SQLITE_TRANSIENT ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,char*) ; 

int
FUNC11 (LockedFileSet *fset, const char *path, gboolean db_only)
{
    SeafRepoManager *mgr = fset->mgr;
    char *sql;
    sqlite3_stmt *stmt;

    if (FUNC0 (fset->locked_files, path) == NULL)
        return 0;

    FUNC4 ("Remove locked file record %.8s, %s.\n",
                fset->repo_id, path);

    FUNC2 (&mgr->priv->db_lock);

    sql = "DELETE FROM LockedFiles WHERE repo_id = ? AND path = ?";
    stmt = FUNC10 (mgr->priv->db, sql);
    FUNC6 (stmt, 1, fset->repo_id, -1, SQLITE_TRANSIENT);
    FUNC6 (stmt, 2, path, -1, SQLITE_TRANSIENT);
    if (FUNC9 (stmt) != SQLITE_DONE) {
        FUNC5 ("Failed to remove locked file %s from db: %s.\n",
                      path, FUNC7 (mgr->priv->db));
        FUNC8 (stmt);
        FUNC3 (&mgr->priv->db_lock);
        return -1;
    }
    FUNC8 (stmt);
    FUNC3 (&mgr->priv->db_lock);

    if (!db_only)
        FUNC1 (fset->locked_files, path);

    return 0;
}