#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  priv; } ;
typedef  TYPE_1__ SeafWTMonitor ;
typedef  int /*<<< orphan*/ * HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char const*,char const*) ; 

__attribute__((used)) static int FUNC2 (SeafWTMonitor *monitor,
                            const char *repo_id,
                            const char *worktree)
{
    HANDLE handle;

    handle = FUNC1 (monitor->priv, repo_id, worktree);
    if (handle == NULL ||
        !FUNC0(monitor, handle)) {
        return -1;
    }

    return 0;
}