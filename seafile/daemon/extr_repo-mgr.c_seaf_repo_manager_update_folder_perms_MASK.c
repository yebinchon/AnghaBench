#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_stmt ;
struct TYPE_17__ {char const* path; char const* permission; } ;
struct TYPE_16__ {TYPE_4__* data; struct TYPE_16__* next; } ;
struct TYPE_15__ {TYPE_1__* priv; } ;
struct TYPE_14__ {int /*<<< orphan*/  perm_lock; int /*<<< orphan*/  group_perms; int /*<<< orphan*/  user_perms; int /*<<< orphan*/  db_lock; int /*<<< orphan*/  db; } ;
typedef  TYPE_2__ SeafRepoManager ;
typedef  TYPE_3__ GList ;
typedef  int /*<<< orphan*/  GDestroyNotify ;
typedef  scalar_t__ FolderPermType ;
typedef  TYPE_4__ FolderPerm ;

/* Variables and functions */
 scalar_t__ FOLDER_PERM_TYPE_GROUP ; 
 scalar_t__ FOLDER_PERM_TYPE_USER ; 
 scalar_t__ SQLITE_DONE ; 
 int /*<<< orphan*/  SQLITE_TRANSIENT ; 
 int /*<<< orphan*/  comp_folder_perms ; 
 scalar_t__ folder_perm_free ; 
 TYPE_3__* FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ ,char*) ; 

int
FUNC17 (SeafRepoManager *mgr,
                                       const char *repo_id,
                                       FolderPermType type,
                                       GList *folder_perms)
{
    char *sql;
    sqlite3_stmt *stmt;
    GList *ptr;
    FolderPerm *perm;

    FUNC5 ((type == FOLDER_PERM_TYPE_USER ||
                           type == FOLDER_PERM_TYPE_GROUP),
                          -1);

    /* Update db. */

    FUNC7 (&mgr->priv->db_lock);

    if (type == FOLDER_PERM_TYPE_USER)
        sql = "DELETE FROM FolderUserPerms WHERE repo_id = ?";
    else
        sql = "DELETE FROM FolderGroupPerms WHERE repo_id = ?";
    stmt = FUNC16 (mgr->priv->db, sql);
    FUNC10 (stmt, 1, repo_id, -1, SQLITE_TRANSIENT);
    if (FUNC15 (stmt) != SQLITE_DONE) {
        FUNC9 ("Failed to remove folder perms for %.8s: %s.\n",
                      repo_id, FUNC12 (mgr->priv->db));
        FUNC13 (stmt);
        FUNC8 (&mgr->priv->db_lock);
        return -1;
    }
    FUNC13 (stmt);

    if (!folder_perms) {
        FUNC8 (&mgr->priv->db_lock);
        return 0;
    }

    if (type == FOLDER_PERM_TYPE_USER)
        sql = "INSERT INTO FolderUserPerms VALUES (?, ?, ?)";
    else
        sql = "INSERT INTO FolderGroupPerms VALUES (?, ?, ?)";
    stmt = FUNC16 (mgr->priv->db, sql);

    for (ptr = folder_perms; ptr; ptr = ptr->next) {
        perm = ptr->data;

        FUNC10 (stmt, 1, repo_id, -1, SQLITE_TRANSIENT);
        FUNC10 (stmt, 2, perm->path, -1, SQLITE_TRANSIENT);
        FUNC10 (stmt, 3, perm->permission, -1, SQLITE_TRANSIENT);

        if (FUNC15 (stmt) != SQLITE_DONE) {
            FUNC9 ("Failed to insert folder perms for %.8s: %s.\n",
                          repo_id, FUNC12 (mgr->priv->db));
            FUNC13 (stmt);
            FUNC8 (&mgr->priv->db_lock);
            return -1;
        }

        FUNC14 (stmt);
        FUNC11 (stmt);
    }

    FUNC13 (stmt);

    FUNC8 (&mgr->priv->db_lock);

    /* Update in memory */
    GList *new, *old;
    new = FUNC0 (folder_perms);
    new = FUNC4 (new, comp_folder_perms);

    FUNC7 (&mgr->priv->perm_lock);
    if (type == FOLDER_PERM_TYPE_USER) {
        old = FUNC2 (mgr->priv->user_perms, repo_id);
        if (old)
            FUNC3 (old, (GDestroyNotify)folder_perm_free);
        FUNC1 (mgr->priv->user_perms, FUNC6(repo_id), new);
    } else if (type == FOLDER_PERM_TYPE_GROUP) {
        old = FUNC2 (mgr->priv->group_perms, repo_id);
        if (old)
            FUNC3 (old, (GDestroyNotify)folder_perm_free);
        FUNC1 (mgr->priv->group_perms, FUNC6(repo_id), new);
    }
    FUNC8 (&mgr->priv->perm_lock);

    return 0;
}