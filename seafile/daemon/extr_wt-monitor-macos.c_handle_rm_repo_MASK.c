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
typedef  char const* gpointer ;
struct TYPE_5__ {TYPE_1__* priv; } ;
struct TYPE_4__ {int /*<<< orphan*/  hash_lock; int /*<<< orphan*/  info_hash; int /*<<< orphan*/  handle_hash; } ;
typedef  TYPE_1__ SeafWTMonitorPriv ;
typedef  TYPE_2__ SeafWTMonitor ;
typedef  scalar_t__ FSEventStreamRef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6 (SeafWTMonitor *monitor, const char *repo_id, gpointer handle)
{
    SeafWTMonitorPriv *priv = monitor->priv;
    FSEventStreamRef stream = (FSEventStreamRef)handle;
    FUNC2 (stream);
    FUNC0 (stream);
    FUNC1 (stream);

    FUNC4 (&priv->hash_lock);
    FUNC3 (priv->handle_hash, repo_id);
    FUNC3 (priv->info_hash, (gpointer)(long)stream);
    FUNC5 (&priv->hash_lock);
    return 0;
}