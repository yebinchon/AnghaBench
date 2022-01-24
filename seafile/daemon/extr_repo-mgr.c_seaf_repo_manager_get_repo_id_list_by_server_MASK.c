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
typedef  TYPE_2__* gpointer ;
struct TYPE_10__ {TYPE_1__* priv; } ;
struct TYPE_9__ {int /*<<< orphan*/  id; int /*<<< orphan*/  server_url; int /*<<< orphan*/  delete_pending; } ;
struct TYPE_8__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  repo_hash; } ;
typedef  TYPE_3__ SeafRepoManager ;
typedef  TYPE_2__ SeafRepo ;
typedef  int /*<<< orphan*/  GList ;
typedef  int /*<<< orphan*/  GHashTableIter ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,TYPE_2__**,TYPE_2__**) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

GList *
FUNC8 (SeafRepoManager *manager, const char *server_url)
{
    GList *repo_id_list = NULL;
    GHashTableIter iter;
    SeafRepo *repo;
    gpointer key, value;

    if (FUNC5 (&manager->priv->lock) < 0) {
        FUNC7 ("[repo mgr] failed to lock repo cache.\n");
        return NULL;
    }
    FUNC0 (&iter, manager->priv->repo_hash);

    while (FUNC1 (&iter, &key, &value)) {
        repo = value;
        if (!repo->delete_pending && FUNC3 (repo->server_url, server_url) == 0)
            repo_id_list = FUNC2 (repo_id_list, FUNC4(repo->id));
    }

    FUNC6 (&manager->priv->lock);

    return repo_id_list;
}