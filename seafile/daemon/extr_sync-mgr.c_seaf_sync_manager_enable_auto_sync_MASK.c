#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  started; } ;
struct TYPE_7__ {TYPE_1__* priv; } ;
struct TYPE_6__ {int /*<<< orphan*/  auto_sync_enabled; } ;
typedef  TYPE_2__ SeafSyncManager ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_4__* seaf ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

int
FUNC3 (SeafSyncManager *mgr)
{
    if (!seaf->started) {
        FUNC2 ("sync manager is not started, skip enable auto sync.\n");
        return -1;
    }

    FUNC0 (mgr);

    mgr->priv->auto_sync_enabled = TRUE;
    FUNC1 ("[sync mgr] auto sync is enabled\n");
    return 0;
}