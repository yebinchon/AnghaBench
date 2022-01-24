#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  http_tx_mgr; int /*<<< orphan*/  started; } ;
struct TYPE_8__ {int state; int /*<<< orphan*/  repo_id; } ;
struct TYPE_7__ {int /*<<< orphan*/  tasks; } ;
typedef  TYPE_1__ SeafCloneManager ;
typedef  TYPE_2__ CloneTask ;

/* Variables and functions */
 int CLONE_STATE_CANCELED ; 
#define  CLONE_STATE_CANCEL_PENDING 137 
#define  CLONE_STATE_CHECKOUT 136 
#define  CLONE_STATE_CHECK_PROTOCOL 135 
#define  CLONE_STATE_CHECK_SERVER 134 
#define  CLONE_STATE_CONNECT 133 
#define  CLONE_STATE_ERROR 132 
#define  CLONE_STATE_FETCH 131 
#define  CLONE_STATE_INDEX 130 
#define  CLONE_STATE_INIT 129 
#define  CLONE_STATE_MERGE 128 
 int /*<<< orphan*/  HTTP_TASK_TYPE_DOWNLOAD ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_5__* seaf ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int) ; 

int
FUNC5 (SeafCloneManager *mgr,
                                const char *repo_id)
{
    CloneTask *task;

    if (!seaf->started) {
        FUNC2 ("System not started, skip canceling clone task.\n");
        return -1;
    }

    task = FUNC0 (mgr->tasks, repo_id);
    if (!task)
        return -1;

    switch (task->state) {
    case CLONE_STATE_INIT:
    case CLONE_STATE_CONNECT:
    case CLONE_STATE_ERROR:
        FUNC4 (task, CLONE_STATE_CANCELED);
        break;
    case CLONE_STATE_CHECK_SERVER:
        FUNC4 (task, CLONE_STATE_CANCEL_PENDING);
    case CLONE_STATE_FETCH:
        FUNC1 (seaf->http_tx_mgr,
                                     task->repo_id,
                                     HTTP_TASK_TYPE_DOWNLOAD);
        FUNC4 (task, CLONE_STATE_CANCEL_PENDING);
        break;
    case CLONE_STATE_INDEX:
    case CLONE_STATE_CHECKOUT:
    case CLONE_STATE_MERGE:
    case CLONE_STATE_CHECK_PROTOCOL:
        /* We cannot cancel an in-progress checkout, just
         * wait until it finishes.
         */
        FUNC4 (task, CLONE_STATE_CANCEL_PENDING);
        break;
    case CLONE_STATE_CANCEL_PENDING:
        break;
    default:
        FUNC3 ("[Clone mgr] cannot cancel a not-running task.\n");
        return -1;
    }

    return 0;
}