#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  clone_mgr; } ;
typedef  int /*<<< orphan*/  GError ;

/* Variables and functions */
 int /*<<< orphan*/  SEAFILE_DOMAIN ; 
 int /*<<< orphan*/  SEAF_ERR_BAD_ARGS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* seaf ; 
 char* FUNC1 (int /*<<< orphan*/ ,char const*,char const*) ; 

char *
FUNC2 (const char *worktree_parent,
                              const char *repo_name,
                              GError **error)
{
    if (!worktree_parent || !repo_name) {
        FUNC0 (error, SEAFILE_DOMAIN, SEAF_ERR_BAD_ARGS, "Empty args");
        return NULL;
    }

    return FUNC1 (seaf->clone_mgr,
                                                    worktree_parent,
                                                    repo_name);
}