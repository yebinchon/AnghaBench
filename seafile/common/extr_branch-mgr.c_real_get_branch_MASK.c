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
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_5__ {TYPE_1__* priv; } ;
struct TYPE_4__ {int /*<<< orphan*/  db_lock; int /*<<< orphan*/ * db; } ;
typedef  TYPE_2__ SeafBranchManager ;
typedef  int /*<<< orphan*/  SeafBranch ;

/* Variables and functions */
 int SQLITE_ERROR ; 
 int SQLITE_ROW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 char* FUNC8 (char*,char const*,char const*) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static SeafBranch *
FUNC11 (SeafBranchManager *mgr,
                 const char *repo_id,
                 const char *name)
{
    SeafBranch *branch = NULL;
    sqlite3_stmt *stmt;
    sqlite3 *db;
    char *sql;
    int result;

    FUNC0 (&mgr->priv->db_lock);

    db = mgr->priv->db;
    sql = FUNC8 ("SELECT commit_id FROM Branch "
                           "WHERE name = %Q and repo_id='%s'",
                           name, repo_id);
    if (!(stmt = FUNC10 (db, sql))) {
        FUNC3 ("[Branch mgr] Couldn't prepare query %s\n", sql);
        FUNC7 (sql);
        FUNC1 (&mgr->priv->db_lock);
        return NULL;
    }
    FUNC7 (sql);

    result = FUNC9 (stmt);
    if (result == SQLITE_ROW) {
        char *commit_id = (char *)FUNC4 (stmt, 0);

        branch = FUNC2 (name, repo_id, commit_id);
        FUNC1 (&mgr->priv->db_lock);
        FUNC6 (stmt);
        return branch;
    } else if (result == SQLITE_ERROR) {
        const char *str = FUNC5 (db);
        FUNC3 ("Couldn't prepare query, error: %d->'%s'\n",
                   result, str ? str : "no error given");
    }

    FUNC6 (stmt);
    FUNC1 (&mgr->priv->db_lock);
    return NULL;
}