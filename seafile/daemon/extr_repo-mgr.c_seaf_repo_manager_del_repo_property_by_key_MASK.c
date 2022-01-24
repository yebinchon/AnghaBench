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
typedef  int /*<<< orphan*/  sqlite3 ;
struct TYPE_5__ {TYPE_1__* priv; } ;
struct TYPE_4__ {int /*<<< orphan*/  db_lock; int /*<<< orphan*/ * db; } ;
typedef  TYPE_2__ SeafRepoManager ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void
FUNC5 (SeafRepoManager *manager,
                                            const char *repo_id,
                                            const char *key)
{
    char *sql;
    sqlite3 *db = manager->priv->db;

    FUNC0 (&manager->priv->db_lock);

    sql = FUNC3 ("DELETE FROM RepoProperty "
                           "WHERE repo_id = %Q "
                           "  AND key = %Q", repo_id, key);
    FUNC4 (db, sql);
    FUNC2 (sql);

    FUNC1 (&manager->priv->db_lock);
}