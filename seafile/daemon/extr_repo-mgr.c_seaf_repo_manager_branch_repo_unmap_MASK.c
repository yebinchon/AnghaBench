#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_8__ {int /*<<< orphan*/  repo_id; int /*<<< orphan*/  name; } ;
struct TYPE_7__ {TYPE_1__* priv; } ;
struct TYPE_6__ {int /*<<< orphan*/  db_lock; int /*<<< orphan*/ * db; } ;
typedef  TYPE_2__ SeafRepoManager ;
typedef  TYPE_3__ SeafBranch ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char*) ; 

int
FUNC6 (SeafRepoManager *manager, SeafBranch *branch)
{
    char *sql;
    sqlite3 *db = manager->priv->db;

    FUNC0 (&manager->priv->db_lock);

    sql = FUNC4 ("DELETE FROM RepoBranch WHERE branch_name = %Q"
                           " AND repo_id = %Q",
                           branch->name, branch->repo_id);
    if (FUNC5 (db, sql) < 0) {
        FUNC2 ("Unmap branch repo failed\n");
        FUNC1 (&manager->priv->db_lock);
        FUNC3 (sql);
        return -1;
    }

    FUNC3 (sql);
    FUNC1 (&manager->priv->db_lock);

    return 0;
}