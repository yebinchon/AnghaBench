#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_7__ {int /*<<< orphan*/  seaf_dir; } ;
struct TYPE_6__ {TYPE_1__* priv; } ;
struct TYPE_5__ {int /*<<< orphan*/  db_lock; int /*<<< orphan*/  hash_lock; int /*<<< orphan*/  repo_locked_files; int /*<<< orphan*/ * db; } ;
typedef  TYPE_2__ SeafFilelockManager ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  load_locked_files ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_4__* seaf ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 

int
FUNC8 (SeafFilelockManager *mgr)
{
    char *db_path;
    sqlite3 *db;
    char *sql;

    db_path = FUNC0 (seaf->seaf_dir, "filelocks.db", NULL);
    if (FUNC6 (db_path, &db) < 0)
        return -1;
    FUNC1 (db_path);
    mgr->priv->db = db;

    sql = "CREATE TABLE IF NOT EXISTS ServerLockedFiles ("
        "repo_id TEXT, path TEXT, locked_by_me INTEGER);";
    FUNC7 (db, sql);

    sql = "CREATE INDEX IF NOT EXISTS server_locked_files_repo_id_idx "
        "ON ServerLockedFiles (repo_id);";
    FUNC7 (db, sql);

    sql = "CREATE TABLE IF NOT EXISTS ServerLockedFilesTimestamp ("
        "repo_id TEXT, timestamp INTEGER, PRIMARY KEY (repo_id));";
    FUNC7 (db, sql);

    sql = "SELECT repo_id, path, locked_by_me FROM ServerLockedFiles";

    FUNC3 (&mgr->priv->db_lock);
    FUNC3 (&mgr->priv->hash_lock);

    if (FUNC5 (mgr->priv->db, sql,
                                     load_locked_files,
                                     mgr->priv->repo_locked_files) < 0) {
        FUNC4 (&mgr->priv->db_lock);
        FUNC4 (&mgr->priv->hash_lock);
        FUNC2 (mgr->priv->repo_locked_files);
        return -1;
    }

    FUNC4 (&mgr->priv->hash_lock);
    FUNC4 (&mgr->priv->db_lock);

    return 0;
}