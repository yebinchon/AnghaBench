#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ time_t ;
struct format_tree {int flags; TYPE_1__* client; int /*<<< orphan*/  tag; } ;
struct format_job_tree {int dummy; } ;
struct format_job {char const* cmd; char* out; scalar_t__ last; int status; scalar_t__ updated; int /*<<< orphan*/ * job; int /*<<< orphan*/ * expanded; int /*<<< orphan*/  tag; TYPE_1__* client; } ;
struct TYPE_2__ {struct format_job_tree* jobs; } ;

/* Variables and functions */
 int FORMAT_FORCE ; 
 int FORMAT_STATUS ; 
 int /*<<< orphan*/  JOB_NOWAIT ; 
 struct format_job* FUNC0 (int /*<<< orphan*/ ,struct format_job_tree*,struct format_job*) ; 
 int /*<<< orphan*/  FUNC1 (struct format_job_tree*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct format_job_tree*,struct format_job*) ; 
 char* FUNC3 (struct format_tree*,char const*) ; 
 int /*<<< orphan*/  format_job_complete ; 
 int /*<<< orphan*/  format_job_tree ; 
 int /*<<< orphan*/  format_job_update ; 
 struct format_job_tree format_jobs ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct format_job*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char**,char*,char const*) ; 
 struct format_job* FUNC11 (int,int) ; 
 struct format_job_tree* FUNC12 (int) ; 
 void* FUNC13 (char const*) ; 

__attribute__((used)) static char *
FUNC14(struct format_tree *ft, const char *cmd)
{
	struct format_job_tree	*jobs;
	struct format_job	 fj0, *fj;
	time_t			 t;
	char			*expanded;
	int			 force;

	if (ft->client == NULL)
		jobs = &format_jobs;
	else if (ft->client->jobs != NULL)
		jobs = ft->client->jobs;
	else {
		jobs = ft->client->jobs = FUNC12(sizeof *ft->client->jobs);
		FUNC1(jobs);
	}

	fj0.tag = ft->tag;
	fj0.cmd = cmd;
	if ((fj = FUNC0(format_job_tree, jobs, &fj0)) == NULL) {
		fj = FUNC11(1, sizeof *fj);
		fj->client = ft->client;
		fj->tag = ft->tag;
		fj->cmd = FUNC13(cmd);
		fj->expanded = NULL;

		FUNC10(&fj->out, "<'%s' not ready>", fj->cmd);

		FUNC2(format_job_tree, jobs, fj);
	}

	expanded = FUNC3(ft, cmd);
	if (fj->expanded == NULL || FUNC8(expanded, fj->expanded) != 0) {
		FUNC4((void *)fj->expanded);
		fj->expanded = FUNC13(expanded);
		force = 1;
	} else
		force = (ft->flags & FORMAT_FORCE);

	t = FUNC9(NULL);
	if (force && fj->job != NULL)
	       FUNC5(fj->job);
	if (force || (fj->job == NULL && fj->last != t)) {
		fj->job = FUNC6(expanded, NULL,
		    FUNC7(ft->client, NULL), format_job_update,
		    format_job_complete, NULL, fj, JOB_NOWAIT);
		if (fj->job == NULL) {
			FUNC4(fj->out);
			FUNC10(&fj->out, "<'%s' didn't start>", fj->cmd);
		}
		fj->last = t;
		fj->updated = 0;
	}

	if (ft->flags & FORMAT_STATUS)
		fj->status = 1;

	FUNC4(expanded);
	return (FUNC3(ft, fj->out));
}