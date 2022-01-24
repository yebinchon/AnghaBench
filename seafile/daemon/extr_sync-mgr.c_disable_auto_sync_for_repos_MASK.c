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
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  wt_monitor; int /*<<< orphan*/  repo_mgr; } ;
struct TYPE_7__ {TYPE_1__* data; struct TYPE_7__* next; } ;
struct TYPE_6__ {scalar_t__ sync_interval; int /*<<< orphan*/  id; } ;
typedef  int /*<<< orphan*/  SeafSyncManager ;
typedef  TYPE_1__ SeafRepo ;
typedef  TYPE_2__ GList ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 TYPE_4__* seaf ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5 (SeafSyncManager *mgr)
{
    GList *repos;
    GList *ptr;
    SeafRepo *repo;

    repos = FUNC1 (seaf->repo_mgr, -1, -1);
    for (ptr = repos; ptr; ptr = ptr->next) {
        repo = ptr->data;
        if (repo->sync_interval == 0)
            FUNC4 (seaf->wt_monitor, repo->id);
        FUNC2 (mgr, repo->id);
        FUNC3 (mgr, repo->id);
    }

    FUNC0 (repos);
}