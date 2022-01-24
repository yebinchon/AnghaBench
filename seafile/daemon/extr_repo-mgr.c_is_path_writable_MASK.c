#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int gboolean ;
struct TYPE_6__ {TYPE_2__* repo_mgr; } ;
struct TYPE_5__ {TYPE_1__* priv; } ;
struct TYPE_4__ {int /*<<< orphan*/  perm_lock; int /*<<< orphan*/  group_perms; int /*<<< orphan*/  user_perms; } ;
typedef  TYPE_2__ SeafRepoManager ;
typedef  int /*<<< orphan*/  GList ;

/* Variables and functions */
 int FALSE ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 char* FUNC2 (char*,char const*,int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_3__* seaf ; 
 scalar_t__ FUNC6 (char*,char*) ; 

__attribute__((used)) static gboolean
FUNC7 (const char *repo_id,
                  gboolean is_repo_readonly,
                  const char *path)
{
    SeafRepoManager *mgr = seaf->repo_mgr;
    GList *user_perms = NULL, *group_perms = NULL;
    char *permission = NULL;
    char *abs_path = NULL;

    FUNC4 (&mgr->priv->perm_lock);

    user_perms = FUNC1 (mgr->priv->user_perms, repo_id);
    group_perms = FUNC1 (mgr->priv->group_perms, repo_id);

    if (user_perms || group_perms)
        abs_path = FUNC2 ("/", path, NULL);

    if (user_perms)
        permission = FUNC3 (user_perms, abs_path);
    if (!permission && group_perms)
        permission = FUNC3 (group_perms, abs_path);

    FUNC5 (&mgr->priv->perm_lock);

    FUNC0 (abs_path);

    if (!permission)
        return !is_repo_readonly;

    if (FUNC6 (permission, "rw") == 0)
        return TRUE;
    else
        return FALSE;
}