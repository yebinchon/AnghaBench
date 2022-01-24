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
struct TYPE_5__ {TYPE_1__* priv; } ;
struct TYPE_4__ {int /*<<< orphan*/  paths_lock; int /*<<< orphan*/  active_paths; } ;
typedef  TYPE_2__ SeafSyncManager ;

/* Variables and functions */
 int /*<<< orphan*/  SHCNE_ASSOCCHANGED ; 
 int /*<<< orphan*/  SHCNF_IDLIST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4 (SeafSyncManager *mgr, const char *repo_id)
{
    FUNC2 (&mgr->priv->paths_lock);

    FUNC1 (mgr->priv->active_paths, repo_id);

    FUNC3 (&mgr->priv->paths_lock);

#ifdef WIN32
    /* This is a hack to tell Windows Explorer to refresh all open windows. */
    SHChangeNotify (SHCNE_ASSOCCHANGED, SHCNF_IDLIST, NULL, NULL);
#endif
}