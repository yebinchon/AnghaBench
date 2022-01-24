#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_9__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  gboolean ;
struct TYPE_16__ {int /*<<< orphan*/  commit_mgr; int /*<<< orphan*/  branch_mgr; } ;
struct TYPE_15__ {TYPE_2__* data; struct TYPE_15__* next; } ;
struct TYPE_14__ {int /*<<< orphan*/  commit_id; } ;
struct TYPE_13__ {int /*<<< orphan*/  version; int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ SeafRepo ;
typedef  int /*<<< orphan*/  SeafCommit ;
typedef  TYPE_2__ SeafBranch ;
typedef  TYPE_3__ GList ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  collect_commit ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 TYPE_3__* FUNC1 (TYPE_3__*) ; 
 TYPE_9__* seaf ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 

GList *
FUNC7 (SeafRepo *repo)
{
    GList *branches;
    GList *ptr;
    SeafBranch *branch;
    GList *commits = NULL;

    branches = FUNC2 (seaf->branch_mgr, repo->id);
    if (branches == NULL) {
        FUNC6 ("Failed to get branch list of repo %s.\n", repo->id);
        return NULL;
    }

    for (ptr = branches; ptr != NULL; ptr = ptr->next) {
        branch = ptr->data;
        gboolean res = FUNC4 (seaf->commit_mgr,
                                                                 repo->id,
                                                                 repo->version,
                                                                 branch->commit_id,
                                                                 collect_commit,
                                                                 &commits, FALSE);
        if (!res) {
            for (ptr = commits; ptr != NULL; ptr = ptr->next)
                FUNC5 ((SeafCommit *)(ptr->data));
            FUNC0 (commits);
            goto out;
        }
    }

    commits = FUNC1 (commits);

out:
    for (ptr = branches; ptr != NULL; ptr = ptr->next) {
        FUNC3 ((SeafBranch *)ptr->data);
    }
    return commits;
}