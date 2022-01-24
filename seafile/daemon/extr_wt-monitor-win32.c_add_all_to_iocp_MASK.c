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
typedef  int /*<<< orphan*/ * gpointer ;
struct TYPE_6__ {scalar_t__* cmd_pipe; TYPE_1__* priv; } ;
struct TYPE_5__ {int /*<<< orphan*/  handle_hash; } ;
typedef  TYPE_1__ SeafWTMonitorPriv ;
typedef  TYPE_2__ SeafWTMonitor ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int /*<<< orphan*/  GHashTableIter ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,...) ; 

__attribute__((used)) static BOOL
FUNC6 (SeafWTMonitor *monitor)
{
    SeafWTMonitorPriv *priv = monitor->priv;

    if (!FUNC1(monitor, (HANDLE)monitor->cmd_pipe[0])) {

        FUNC5("Failed to add cmd_pipe to iocp, "
                     "error code %lu", FUNC0());
        return FALSE;
    }

    GHashTableIter iter;
    gpointer value = NULL;
    gpointer key = NULL;

    FUNC2 (&iter, priv->handle_hash);
    while (FUNC3 (&iter, &key, &value)) {
        if (!FUNC1(monitor, (HANDLE)value)) {
            FUNC5("Failed to add dir handle to iocp, "
                         "repo %s, error code %lu", (char *)key,
                         FUNC0());
            continue;
        }
    }

    FUNC4("Done: add_all_to_iocp\n");
    return TRUE;
}