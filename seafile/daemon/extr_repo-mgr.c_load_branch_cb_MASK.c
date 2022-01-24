#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  int /*<<< orphan*/  gboolean ;
struct TYPE_8__ {int /*<<< orphan*/  is_corrupted; int /*<<< orphan*/  id; TYPE_2__* manager; } ;
struct TYPE_7__ {TYPE_1__* seaf; } ;
struct TYPE_6__ {int /*<<< orphan*/  branch_mgr; } ;
typedef  TYPE_2__ SeafRepoManager ;
typedef  TYPE_3__ SeafRepo ;
typedef  int /*<<< orphan*/  SeafBranch ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static gboolean
FUNC5 (sqlite3_stmt *stmt, void *vrepo)
{
    SeafRepo *repo = vrepo;
    SeafRepoManager *manager = repo->manager;

    char *branch_name = (char *) FUNC4 (stmt, 0);
    SeafBranch *branch =
        FUNC1 (manager->seaf->branch_mgr,
                                        repo->id, branch_name);
    if (branch == NULL) {
        FUNC3 ("Broken branch name for repo %s\n", repo->id); 
        repo->is_corrupted = TRUE;
        return FALSE;
    }
    FUNC0 (manager, repo, branch);
    FUNC2 (branch);

    /* Only one result. */
    return FALSE;
}