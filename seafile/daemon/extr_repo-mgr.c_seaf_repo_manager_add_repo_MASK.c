#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3 ;
typedef  int /*<<< orphan*/  sql ;
struct TYPE_10__ {char* id; TYPE_2__* manager; } ;
struct TYPE_9__ {TYPE_1__* priv; } ;
struct TYPE_8__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  repo_hash; int /*<<< orphan*/  db_lock; int /*<<< orphan*/ * db; } ;
typedef  TYPE_2__ SeafRepoManager ;
typedef  TYPE_3__ SeafRepo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 

int
FUNC10 (SeafRepoManager *manager,
                            SeafRepo *repo)
{
    char sql[256];
    sqlite3 *db = manager->priv->db;

    FUNC2 (&manager->priv->db_lock);

    FUNC8 (sql, sizeof(sql), "REPLACE INTO Repo VALUES ('%s');", repo->id);
    FUNC9 (db, sql);

    FUNC3 (&manager->priv->db_lock);

    /* There may be a "deletion record" for this repo when it was deleted
     * last time.
     */
    FUNC6 (manager, repo->id);

    repo->manager = manager;

    if (FUNC5 (&manager->priv->lock) < 0) {
        FUNC7 ("[repo mgr] failed to lock repo cache.\n");
        return -1;
    }

    FUNC0 (manager->priv->repo_hash, FUNC1(repo->id), repo);

    FUNC4 (&manager->priv->lock);

    return 0;
}