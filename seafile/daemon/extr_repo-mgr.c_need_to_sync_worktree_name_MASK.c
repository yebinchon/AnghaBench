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
typedef  int gboolean ;
struct TYPE_2__ {int /*<<< orphan*/  repo_mgr; } ;

/* Variables and functions */
 int /*<<< orphan*/  REPO_SYNC_WORKTREE_NAME ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 TYPE_1__* seaf ; 
 char* FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static gboolean
FUNC3 (const char *repo_id)
{
    char *need_sync_wt_name = FUNC2 (seaf->repo_mgr,
                                                                   repo_id,
                                                                   REPO_SYNC_WORKTREE_NAME);
    gboolean ret = (FUNC1(need_sync_wt_name, "true") == 0);
    FUNC0 (need_sync_wt_name);
    return ret;
}