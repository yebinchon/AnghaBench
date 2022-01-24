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
struct TYPE_7__ {TYPE_2__* seaf; TYPE_1__* priv; } ;
struct TYPE_6__ {int /*<<< orphan*/  db; int /*<<< orphan*/  seaf_dir; } ;
struct TYPE_5__ {int /*<<< orphan*/  db; } ;
typedef  TYPE_3__ SeafBranchManager ;

/* Variables and functions */
 int /*<<< orphan*/  BRANCH_DB ; 
#define  SEAF_DB_TYPE_MYSQL 130 
#define  SEAF_DB_TYPE_PGSQL 129 
#define  SEAF_DB_TYPE_SQLITE 128 
 char* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static int
FUNC7 (SeafBranchManager *mgr)
{
#ifndef SEAFILE_SERVER

    char *db_path;
    const char *sql;

    db_path = FUNC0 (mgr->seaf->seaf_dir, BRANCH_DB, NULL);
    if (FUNC5 (db_path, &mgr->priv->db) < 0) {
        FUNC1 ("[Branch mgr] Failed to open branch db\n");
        FUNC2 (db_path);
        return -1;
    }
    FUNC2 (db_path);

    sql = "CREATE TABLE IF NOT EXISTS Branch ("
          "name TEXT, repo_id TEXT, commit_id TEXT);";
    if (FUNC6 (mgr->priv->db, sql) < 0)
        return -1;

    sql = "CREATE INDEX IF NOT EXISTS branch_index ON Branch(repo_id, name);";
    if (FUNC6 (mgr->priv->db, sql) < 0)
        return -1;

#elif defined FULL_FEATURE

    char *sql;
    switch (seaf_db_type (mgr->seaf->db)) {
    case SEAF_DB_TYPE_MYSQL:
        sql = "CREATE TABLE IF NOT EXISTS Branch ("
            "name VARCHAR(10), repo_id CHAR(41), commit_id CHAR(41),"
            "PRIMARY KEY (repo_id, name)) ENGINE = INNODB";
        if (seaf_db_query (mgr->seaf->db, sql) < 0)
            return -1;
        break;
    case SEAF_DB_TYPE_PGSQL:
        sql = "CREATE TABLE IF NOT EXISTS Branch ("
            "name VARCHAR(10), repo_id CHAR(40), commit_id CHAR(40),"
            "PRIMARY KEY (repo_id, name))";
        if (seaf_db_query (mgr->seaf->db, sql) < 0)
            return -1;
        break;
    case SEAF_DB_TYPE_SQLITE:
        sql = "CREATE TABLE IF NOT EXISTS Branch ("
            "name VARCHAR(10), repo_id CHAR(41), commit_id CHAR(41),"
            "PRIMARY KEY (repo_id, name))";
        if (seaf_db_query (mgr->seaf->db, sql) < 0)
            return -1;
        break;
    }

#endif

    return 0;
}