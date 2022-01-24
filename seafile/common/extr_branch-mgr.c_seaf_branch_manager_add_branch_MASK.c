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
typedef  int /*<<< orphan*/  sql ;
typedef  scalar_t__ gboolean ;
struct TYPE_10__ {int /*<<< orphan*/  commit_id; int /*<<< orphan*/  repo_id; int /*<<< orphan*/  name; } ;
struct TYPE_9__ {TYPE_2__* seaf; TYPE_1__* priv; } ;
struct TYPE_8__ {int /*<<< orphan*/ * db; } ;
struct TYPE_7__ {int /*<<< orphan*/  db_lock; int /*<<< orphan*/  db; } ;
typedef  int /*<<< orphan*/  SeafDB ;
typedef  TYPE_3__ SeafBranchManager ;
typedef  TYPE_4__ SeafBranch ;

/* Variables and functions */
 scalar_t__ SEAF_DB_TYPE_PGSQL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,scalar_t__*,int,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,int,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 

int
FUNC8 (SeafBranchManager *mgr, SeafBranch *branch)
{
#ifndef SEAFILE_SERVER
    char sql[256];

    FUNC0 (&mgr->priv->db_lock);

    FUNC5 (sizeof(sql), sql,
                      "SELECT 1 FROM Branch WHERE name=%Q and repo_id=%Q",
                      branch->name, branch->repo_id);
    if (FUNC6 (mgr->priv->db, sql))
        FUNC5 (sizeof(sql), sql,
                          "UPDATE Branch SET commit_id=%Q WHERE "
                          "name=%Q and repo_id=%Q",
                          branch->commit_id, branch->name, branch->repo_id);
    else
        FUNC5 (sizeof(sql), sql,
                          "INSERT INTO Branch VALUES (%Q, %Q, %Q)",
                          branch->name, branch->repo_id, branch->commit_id);

    FUNC7 (mgr->priv->db, sql);

    FUNC1 (&mgr->priv->db_lock);

    return 0;
#else
    char *sql;
    SeafDB *db = mgr->seaf->db;

    if (seaf_db_type(db) == SEAF_DB_TYPE_PGSQL) {
        gboolean exists, err;
        int rc;

        sql = "SELECT repo_id FROM Branch WHERE name=? AND repo_id=?";
        exists = seaf_db_statement_exists(db, sql, &err,
                                          2, "string", branch->name,
                                          "string", branch->repo_id);
        if (err)
            return -1;

        if (exists)
            rc = seaf_db_statement_query (db,
                                          "UPDATE Branch SET commit_id=? "
                                          "WHERE name=? AND repo_id=?",
                                          3, "string", branch->commit_id,
                                          "string", branch->name,
                                          "string", branch->repo_id);
        else
            rc = seaf_db_statement_query (db,
                                          "INSERT INTO Branch VALUES (?, ?, ?)",
                                          3, "string", branch->name,
                                          "string", branch->repo_id,
                                          "string", branch->commit_id);
        if (rc < 0)
            return -1;
    } else {
        int rc = seaf_db_statement_query (db,
                                 "REPLACE INTO Branch VALUES (?, ?, ?)",
                                 3, "string", branch->name,
                                 "string", branch->repo_id,
                                 "string", branch->commit_id);
        if (rc < 0)
            return -1;
    }
    return 0;
#endif
}