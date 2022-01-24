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
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  http_tx_mgr; } ;
struct TYPE_7__ {int /*<<< orphan*/  server_url; } ;
typedef  TYPE_1__ CloneTask ;

/* Variables and functions */
 int /*<<< orphan*/  CLONE_STATE_CHECK_SERVER ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  SYNC_ERROR_ID_NOT_ENOUGH_MEMORY ; 
 int /*<<< orphan*/  check_http_protocol_done ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_4__* seaf ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3 (CloneTask *task)
{
    if (FUNC0 (seaf->http_tx_mgr,
                                                task->server_url,
                                                FALSE,
                                                check_http_protocol_done,
                                                task) < 0) {
        FUNC2 (task, SYNC_ERROR_ID_NOT_ENOUGH_MEMORY);
        return;
    }

    FUNC1 (task, CLONE_STATE_CHECK_SERVER);
}