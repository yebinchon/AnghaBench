#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct job {int pid; int fd; int /*<<< orphan*/ * event; int /*<<< orphan*/ * data; int /*<<< orphan*/  (* freecb ) (int /*<<< orphan*/ *) ;struct job* cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct job*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  entry ; 
 int /*<<< orphan*/  FUNC3 (struct job*) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,struct job*,struct job*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void
FUNC7(struct job *job)
{
	FUNC5("free job %p: %s", job, job->cmd);

	FUNC0(job, entry);
	FUNC3(job->cmd);

	if (job->freecb != NULL && job->data != NULL)
		job->freecb(job->data);

	if (job->pid != -1)
		FUNC4(job->pid, SIGTERM);
	if (job->event != NULL)
		FUNC1(job->event);
	if (job->fd != -1)
		FUNC2(job->fd);

	FUNC3(job);
}