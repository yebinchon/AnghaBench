#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  commit_id; } ;
struct TYPE_13__ {int /*<<< orphan*/  is_corrupted; int /*<<< orphan*/  id; } ;
struct TYPE_12__ {TYPE_1__* seaf; } ;
struct TYPE_11__ {int /*<<< orphan*/  commit_mgr; } ;
typedef  TYPE_2__ SeafRepoManager ;
typedef  TYPE_3__ SeafRepo ;
typedef  int /*<<< orphan*/  SeafCommit ;
typedef  TYPE_4__ SeafBranch ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,TYPE_4__*) ; 

__attribute__((used)) static void
FUNC5 (SeafRepoManager *manager,
                  SeafRepo *repo,
                  SeafBranch *branch)
{
    SeafCommit *commit;

    commit = FUNC0 (manager->seaf->commit_mgr,
                                                        repo->id,
                                                        branch->commit_id);
    if (!commit) {
        FUNC3 ("Commit %s is missing\n", branch->commit_id);
        repo->is_corrupted = TRUE;
        return;
    }

    FUNC4 (repo, branch);
    FUNC2 (repo, commit);

    FUNC1 (commit);
}