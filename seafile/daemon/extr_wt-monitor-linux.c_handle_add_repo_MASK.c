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
struct TYPE_4__ {int /*<<< orphan*/  maxfd; int /*<<< orphan*/  read_fds; } ;
typedef  TYPE_1__ SeafWTMonitorPriv ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*,char const*,char const*) ; 

__attribute__((used)) static int FUNC3 (SeafWTMonitorPriv *priv,
                            const char *repo_id,
                            const char *worktree)
{
    int inotify_fd;

    inotify_fd = FUNC2 (priv, repo_id, worktree);
    if (inotify_fd < 0) {
        return -1;
    }

    FUNC0 (inotify_fd, &priv->read_fds);
    priv->maxfd = FUNC1 (inotify_fd, priv->maxfd);
    return 0;
}