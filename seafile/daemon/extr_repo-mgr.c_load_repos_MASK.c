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
typedef  int /*<<< orphan*/  SeafRepoManager ;

/* Variables and functions */
 int /*<<< orphan*/  load_repo_cb ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  remove_deleted_repo ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3 (SeafRepoManager *manager, const char *seaf_dir)
{
    sqlite3 *db = FUNC0(manager, seaf_dir);
    if (!db) return;

    char *sql;

    sql = "SELECT repo_id FROM DeletedRepo";
    if (FUNC2 (db, sql, remove_deleted_repo, manager) < 0) {
        FUNC1 ("Error removing deleted repos.\n");
        return;
    }

    sql = "SELECT repo_id FROM Repo;";
    if (FUNC2 (db, sql, load_repo_cb, manager) < 0) {
        FUNC1 ("Error read repo db.\n");
        return;
    }
}