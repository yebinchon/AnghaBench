#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {void* data; int /*<<< orphan*/  done_func; int /*<<< orphan*/  thread_func; TYPE_1__* manager; scalar_t__ id; } ;
struct TYPE_7__ {int /*<<< orphan*/  next_job_id; } ;
typedef  TYPE_1__ SeafJobManager ;
typedef  TYPE_2__ SeafJob ;
typedef  int /*<<< orphan*/  JobThreadFunc ;
typedef  int /*<<< orphan*/  JobDoneCallback ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 TYPE_2__* FUNC2 () ; 

int
FUNC3 (SeafJobManager *mgr,
                               JobThreadFunc func,
                               JobDoneCallback done_func,
                               void *data)
{
    SeafJob *job = FUNC2 ();
    job->id = mgr->next_job_id++;
    job->manager = mgr;
    job->thread_func = func;
    job->done_func = done_func;
    job->data = data;
    
    if (FUNC0 (job) < 0) {
        FUNC1 (job);
        return -1;
    }

    return 0;
}