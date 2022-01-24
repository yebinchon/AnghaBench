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
struct TYPE_4__ {int /*<<< orphan*/  perm_lock; int /*<<< orphan*/  group_perms; int /*<<< orphan*/  user_perms; } ;
typedef  TYPE_2__ SeafRepoManager ;
typedef  int /*<<< orphan*/  GList ;
typedef  int /*<<< orphan*/  GDestroyNotify ;

/* Variables and functions */
 scalar_t__ folder_perm_free ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5 (SeafRepoManager *mgr, const char *repo_id)
{
    GList *perms = NULL;

    FUNC3 (&mgr->priv->perm_lock);

    perms = FUNC0 (mgr->priv->user_perms, repo_id);
    if (perms) {
        FUNC2 (perms, (GDestroyNotify)folder_perm_free);
        FUNC1 (mgr->priv->user_perms, repo_id);
    }

    perms = FUNC0 (mgr->priv->group_perms, repo_id);
    if (perms) {
        FUNC2 (perms, (GDestroyNotify)folder_perm_free);
        FUNC1 (mgr->priv->group_perms, repo_id);
    }

    FUNC4 (&mgr->priv->perm_lock);
}