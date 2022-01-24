#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  http_tx_mgr; } ;
struct TYPE_11__ {int /*<<< orphan*/  message; } ;
struct TYPE_10__ {int /*<<< orphan*/  id; int /*<<< orphan*/  use_fileserver_port; int /*<<< orphan*/  token; int /*<<< orphan*/  effective_host; int /*<<< orphan*/  version; } ;
struct TYPE_9__ {int /*<<< orphan*/  tx_id; int /*<<< orphan*/  http_version; TYPE_2__* repo; } ;
typedef  TYPE_1__ SyncTask ;
typedef  TYPE_2__ SeafRepo ;
typedef  TYPE_3__ GError ;

/* Variables and functions */
 int /*<<< orphan*/  SYNC_ERROR_ID_NOT_ENOUGH_MEMORY ; 
 int /*<<< orphan*/  SYNC_STATE_UPLOAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__**) ; 
 TYPE_7__* seaf ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5 (SyncTask *task)
{
    GError *error = NULL;
    SeafRepo *repo = task->repo;

    if (FUNC1 (seaf->http_tx_mgr,
                                    repo->id,
                                    repo->version,
                                    repo->effective_host,
                                    repo->token,
                                    task->http_version,
                                    repo->use_fileserver_port,
                                    &error) < 0) {
        FUNC2 ("Failed to start http upload: %s\n", error->message);
        FUNC3 (task, SYNC_ERROR_ID_NOT_ENOUGH_MEMORY);
        return;
    }
    task->tx_id = FUNC0(repo->id);

    FUNC4 (task, SYNC_STATE_UPLOAD);
}