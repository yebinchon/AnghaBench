#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_10__ {int /*<<< orphan*/  repo_id; int /*<<< orphan*/  name; int /*<<< orphan*/  commit_id; } ;
struct TYPE_9__ {TYPE_2__* seaf; TYPE_1__* priv; } ;
struct TYPE_8__ {int /*<<< orphan*/  db; } ;
struct TYPE_7__ {int /*<<< orphan*/  db_lock; int /*<<< orphan*/ * db; } ;
typedef  TYPE_3__ SeafBranchManager ;
typedef  TYPE_4__ SeafBranch ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 

int
FUNC6 (SeafBranchManager *mgr, SeafBranch *branch)
{
#ifndef SEAFILE_SERVER
    sqlite3 *db;
    char *sql;

    FUNC0 (&mgr->priv->db_lock);

    db = mgr->priv->db;
    sql = FUNC4 ("UPDATE Branch SET commit_id = %Q "
                           "WHERE name = %Q AND repo_id = %Q",
                           branch->commit_id, branch->name, branch->repo_id);
    FUNC5 (db, sql);
    FUNC3 (sql);

    FUNC1 (&mgr->priv->db_lock);

    return 0;
#else
    int rc = seaf_db_statement_query (mgr->seaf->db,
                                      "UPDATE Branch SET commit_id = ? "
                                      "WHERE name = ? AND repo_id = ?",
                                      3, "string", branch->commit_id,
                                      "string", branch->name,
                                      "string", branch->repo_id);
    if (rc < 0)
        return -1;
    return 0;
#endif
}