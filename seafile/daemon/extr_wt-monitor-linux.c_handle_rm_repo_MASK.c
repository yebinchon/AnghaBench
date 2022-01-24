#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  char const* gpointer ;
struct TYPE_6__ {TYPE_1__* priv; } ;
struct TYPE_5__ {int /*<<< orphan*/  hash_lock; int /*<<< orphan*/  info_hash; int /*<<< orphan*/  handle_hash; int /*<<< orphan*/  read_fds; } ;
typedef  TYPE_1__ SeafWTMonitorPriv ;
typedef  TYPE_2__ SeafWTMonitor ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC6 (SeafWTMonitor *monitor,
                           const char *repo_id,
                           gpointer handle)
{
    SeafWTMonitorPriv *priv = monitor->priv;
    int inotify_fd = (int)(long)handle;

    FUNC1 (inotify_fd);
    FUNC0 (inotify_fd, &priv->read_fds);
    FUNC5 (monitor);

    FUNC3 (&priv->hash_lock);
    FUNC2 (priv->handle_hash, repo_id);
    FUNC2 (priv->info_hash, (gpointer)(long)inotify_fd);
    FUNC4 (&priv->hash_lock);

    return 0;
}