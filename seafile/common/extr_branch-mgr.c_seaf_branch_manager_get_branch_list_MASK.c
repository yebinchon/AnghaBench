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
typedef  char gchar ;
struct TYPE_5__ {TYPE_1__* priv; } ;
struct TYPE_4__ {int /*<<< orphan*/  db_lock; int /*<<< orphan*/ * db; } ;
typedef  TYPE_2__ SeafBranchManager ;
typedef  int /*<<< orphan*/  SeafBranch ;
typedef  int /*<<< orphan*/  GList ;

/* Variables and functions */
 int SQLITE_DONE ; 
 int SQLITE_ERROR ; 
 int SQLITE_ROW ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char const*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,char const*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int) ; 
 char* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,char*) ; 

GList *
FUNC13 (SeafBranchManager *mgr,
                                     const char *repo_id)
{
    sqlite3 *db = mgr->priv->db;
    
    int result;
    sqlite3_stmt *stmt;
    char sql[256];
    char *name;
    char *commit_id;
    GList *ret = NULL;
    SeafBranch *branch;

    FUNC7 (sql, 256, "SELECT name, commit_id FROM branch WHERE repo_id ='%s'",
              repo_id);

    FUNC2 (&mgr->priv->db_lock);

    if ( !(stmt = FUNC12(db, sql)) ) {
        FUNC3 (&mgr->priv->db_lock);
        return NULL;
    }

    while (1) {
        result = FUNC11 (stmt);
        if (result == SQLITE_ROW) {
            name = (char *)FUNC8(stmt, 0);
            commit_id = (char *)FUNC8(stmt, 1);
            branch = FUNC5 (name, repo_id, commit_id);
            ret = FUNC0 (ret, branch);
        }
        if (result == SQLITE_DONE)
            break;
        if (result == SQLITE_ERROR) {
            const gchar *str = FUNC9 (db);
            FUNC6 ("Couldn't prepare query, error: %d->'%s'\n", 
                       result, str ? str : "no error given");
            FUNC10 (stmt);
            FUNC4 (ret);
            FUNC3 (&mgr->priv->db_lock);
            return NULL;
        }
    }

    FUNC10 (stmt);
    FUNC3 (&mgr->priv->db_lock);
    return FUNC1(ret);
}