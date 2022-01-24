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
 int /*<<< orphan*/  load_property_cb ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char const*,char const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char**) ; 

__attribute__((used)) static char *
FUNC5 (SeafRepoManager *manager,
                    const char *repo_id,
                    const char *key)
{
    sqlite3 *db = manager->priv->db;
    char sql[256];
    char *value = NULL;

    FUNC0 (&manager->priv->db_lock);

    FUNC3(sql, 256, "SELECT value FROM RepoProperty WHERE "
             "repo_id='%s' and key='%s'", repo_id, key);
    if (FUNC4 (db, sql, load_property_cb, &value) < 0) {
        FUNC2 ("Error read property %s for repo %s.\n", key, repo_id);
        FUNC1 (&manager->priv->db_lock);
        return NULL;
    }

    FUNC1 (&manager->priv->db_lock);

    return value;
}