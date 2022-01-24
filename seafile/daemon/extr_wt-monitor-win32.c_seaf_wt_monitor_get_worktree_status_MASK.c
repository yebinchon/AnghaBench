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
typedef  int /*<<< orphan*/  gpointer ;
typedef  int /*<<< orphan*/  WTStatus ;
struct TYPE_8__ {int /*<<< orphan*/ * status; } ;
struct TYPE_7__ {TYPE_1__* priv; } ;
struct TYPE_6__ {int /*<<< orphan*/  hash_lock; int /*<<< orphan*/  info_hash; int /*<<< orphan*/  handle_hash; } ;
typedef  TYPE_1__ SeafWTMonitorPriv ;
typedef  TYPE_2__ SeafWTMonitor ;
typedef  TYPE_3__ RepoWatchInfo ;

/* Variables and functions */
 TYPE_3__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

WTStatus *
FUNC5 (SeafWTMonitor *monitor,
                                     const char *repo_id)
{
    SeafWTMonitorPriv *priv = monitor->priv;
    gpointer key, value;
    RepoWatchInfo *info;

    FUNC2 (&priv->hash_lock);

    if (!FUNC1 (priv->handle_hash, repo_id,
                                       &key, &value)) {
        FUNC3 (&priv->hash_lock);
        return NULL;
    }

    info = FUNC0(priv->info_hash, value);
    FUNC4 (info->status);

    FUNC3 (&priv->hash_lock);

    return info->status;
}