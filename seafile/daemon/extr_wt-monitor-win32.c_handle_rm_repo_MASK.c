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
typedef  char const* gpointer ;
struct TYPE_3__ {int /*<<< orphan*/  hash_lock; int /*<<< orphan*/  info_hash; int /*<<< orphan*/  handle_hash; } ;
typedef  TYPE_1__ SeafWTMonitorPriv ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4 (SeafWTMonitorPriv *priv, const char *repo_id, gpointer handle)
{
    FUNC2 (&priv->hash_lock);
    FUNC1 (priv->handle_hash, repo_id);
    FUNC1 (priv->info_hash, handle);
    FUNC3 (&priv->hash_lock);

    /* `aux' can't be freed here. Once we we close the dir_handle, its
     *  outstanding io would cause GetQueuedCompletionStatus() to return some
     *  information in aux->buf. If we free it here, it would cause seg fault.
     *  It will be freed in the completion code of GetQueuedCompletionStatus().
     */
    FUNC0 (handle);

    return 0;
}