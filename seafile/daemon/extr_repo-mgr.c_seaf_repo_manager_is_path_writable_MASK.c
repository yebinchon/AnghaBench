#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  gboolean ;
struct TYPE_3__ {int /*<<< orphan*/  is_readonly; } ;
typedef  int /*<<< orphan*/  SeafRepoManager ;
typedef  TYPE_1__ SeafRepo ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ ,char const*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 

gboolean
FUNC3 (SeafRepoManager *mgr,
                                    const char *repo_id,
                                    const char *path)
{
    SeafRepo *repo = FUNC1 (mgr, repo_id);
    if (!repo) {
        FUNC2 ("Failed to get repo %s.\n", repo_id);
        return FALSE;
    }

    return FUNC0 (repo_id, repo->is_readonly, path);
}