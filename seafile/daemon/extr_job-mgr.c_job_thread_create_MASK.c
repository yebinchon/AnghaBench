#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/ * pipefd; TYPE_1__* manager; } ;
struct TYPE_8__ {int /*<<< orphan*/  ev_base; } ;
struct TYPE_7__ {int /*<<< orphan*/  thread_pool; TYPE_2__* session; } ;
typedef  TYPE_2__ SeafileSession ;
typedef  TYPE_3__ SeafJob ;

/* Variables and functions */
 int /*<<< orphan*/  EV_READ ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  job_done_cb ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int
FUNC5 (SeafJob *job)
{
    SeafileSession *session = job->manager->session;

    if (FUNC2 (job->pipefd) < 0) {
        FUNC3 ("[Job Manager] pipe error: %s\n", FUNC4(errno));
        return -1;
    }

    FUNC1 (job->manager->thread_pool, job, NULL);

    FUNC0 (session->ev_base, job->pipefd[0], EV_READ, job_done_cb, job, NULL);

    return 0;
}