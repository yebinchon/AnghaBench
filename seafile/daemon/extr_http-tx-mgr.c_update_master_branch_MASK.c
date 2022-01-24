#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  branch_mgr; } ;
struct TYPE_4__ {int /*<<< orphan*/  head; int /*<<< orphan*/  repo_id; } ;
typedef  int /*<<< orphan*/  SeafBranch ;
typedef  TYPE_1__ HttpTxTask ;

/* Variables and functions */
 TYPE_3__* seaf ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6 (HttpTxTask *task)
{
    SeafBranch *branch;
    branch = FUNC1 (seaf->branch_mgr,
                                             task->repo_id,
                                             "master");
    if (!branch) {
        branch = FUNC3 ("master", task->repo_id, task->head);
        FUNC0 (seaf->branch_mgr, branch);
        FUNC5 (branch);
    } else {
        FUNC4 (branch, task->head);
        FUNC2 (seaf->branch_mgr, branch);
        FUNC5 (branch);
    }
}