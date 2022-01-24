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
struct TYPE_8__ {int /*<<< orphan*/  synced_tree; int /*<<< orphan*/  syncing_tree; int /*<<< orphan*/  paths; } ;
struct TYPE_7__ {TYPE_1__* priv; } ;
struct TYPE_6__ {int /*<<< orphan*/  paths_lock; int /*<<< orphan*/  active_paths; } ;
typedef  TYPE_2__ SeafSyncManager ;
typedef  TYPE_3__ ActivePathsInfo ;

/* Variables and functions */
 TYPE_3__* FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*) ; 

void
FUNC6 (SeafSyncManager *mgr,
                                      const char *repo_id,
                                      const char *path)
{
    ActivePathsInfo *info;

    if (!repo_id || !path) {
        FUNC4 ("BUG: empty repo_id or path.\n");
        return;
    }

    FUNC2 (&mgr->priv->paths_lock);

    info = FUNC0 (mgr->priv->active_paths, repo_id);
    if (!info) {
        FUNC3 (&mgr->priv->paths_lock);
        return;
    }

    FUNC1 (info->paths, path);
    FUNC5 (info->syncing_tree, path);
    FUNC5 (info->synced_tree, path);

    FUNC3 (&mgr->priv->paths_lock);
}