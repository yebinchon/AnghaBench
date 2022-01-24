#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_stmt ;
struct TYPE_13__ {char* data; struct TYPE_13__* next; } ;
struct TYPE_12__ {int /*<<< orphan*/  locked_by_me; } ;
struct TYPE_11__ {TYPE_1__* priv; } ;
struct TYPE_10__ {int /*<<< orphan*/  db_lock; int /*<<< orphan*/  db; int /*<<< orphan*/ * repo_locked_files; } ;
typedef  TYPE_2__ SeafFilelockManager ;
typedef  TYPE_3__ LockInfo ;
typedef  TYPE_4__ GList ;
typedef  int /*<<< orphan*/  GHashTable ;

/* Variables and functions */
 scalar_t__ SQLITE_DONE ; 
 int /*<<< orphan*/  SQLITE_TRANSIENT ; 
 int /*<<< orphan*/  compare_paths ; 
 TYPE_4__* FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 TYPE_4__* FUNC4 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC16 (SeafFilelockManager *mgr, const char *repo_id)
{
    char *sql;
    sqlite3_stmt *stmt;
    GHashTable *locks;
    GList *paths, *ptr;
    char *path;
    LockInfo *info;

    FUNC5 (&mgr->priv->db_lock);

    sql = "DELETE FROM ServerLockedFiles WHERE repo_id = ?";
    stmt = FUNC15 (mgr->priv->db, sql);
    FUNC9 (stmt, 1, repo_id, -1, SQLITE_TRANSIENT);
    if (FUNC14 (stmt) != SQLITE_DONE) {
        FUNC7 ("Failed to remove server locked files for %.8s: %s.\n",
                      repo_id, FUNC11 (mgr->priv->db));
        FUNC12 (stmt);
        FUNC6 (&mgr->priv->db_lock);
        return -1;
    }
    FUNC12 (stmt);

    locks = FUNC1 (mgr->priv->repo_locked_files, repo_id);
    if (!locks || FUNC2 (locks) == 0) {
        FUNC6 (&mgr->priv->db_lock);
        return 0;
    }

    paths = FUNC0 (locks);
    paths = FUNC4 (paths, compare_paths);

    sql = "INSERT INTO ServerLockedFiles (repo_id, path, locked_by_me) VALUES (?, ?, ?)";
    stmt = FUNC15 (mgr->priv->db, sql);

    for (ptr = paths; ptr; ptr = ptr->next) {
        path = ptr->data;
        info = FUNC1 (locks, path);

        FUNC9 (stmt, 1, repo_id, -1, SQLITE_TRANSIENT);
        FUNC9 (stmt, 2, path, -1, SQLITE_TRANSIENT);
        FUNC8 (stmt, 3, info->locked_by_me);

        if (FUNC14 (stmt) != SQLITE_DONE) {
            FUNC7 ("Failed to insert server file lock for %.8s: %s.\n",
                          repo_id, FUNC11 (mgr->priv->db));
            FUNC12 (stmt);
            FUNC6 (&mgr->priv->db_lock);
            return -1;
        }

        FUNC13 (stmt);
        FUNC10 (stmt);
    }

    FUNC12 (stmt);
    FUNC3 (paths);

    FUNC6 (&mgr->priv->db_lock);

    return 0;
}