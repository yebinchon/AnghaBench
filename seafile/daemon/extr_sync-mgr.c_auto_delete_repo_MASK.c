#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  mq_mgr; int /*<<< orphan*/  repo_mgr; int /*<<< orphan*/  sync_mgr; } ;
struct TYPE_9__ {int /*<<< orphan*/  id; int /*<<< orphan*/  name; } ;
struct TYPE_8__ {scalar_t__ in_sync; } ;
typedef  TYPE_1__ SyncInfo ;
typedef  int /*<<< orphan*/  SeafSyncManager ;
typedef  TYPE_2__ SeafRepo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_6__* seaf ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8 (SeafSyncManager *manager, SeafRepo *repo)
{
    SyncInfo *info = FUNC7 (manager, repo->id);
    char *name = FUNC1 (repo->name);

    FUNC2 ("Auto deleted repo '%s'.\n", repo->name);

    FUNC6 (seaf->sync_mgr, repo->id);

    if (info != NULL && info->in_sync) {
        FUNC5 (seaf->repo_mgr, repo);
    } else {
        FUNC4 (seaf->repo_mgr, repo);
    }

    /* Publish a message, for applet to notify in the system tray */
    FUNC3 (seaf->mq_mgr,
                                          "repo.removed",
                                          name);
    FUNC0 (name);
}