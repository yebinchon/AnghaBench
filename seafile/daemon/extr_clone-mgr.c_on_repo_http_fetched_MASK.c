#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {scalar_t__ server_url; int /*<<< orphan*/  peer_port; int /*<<< orphan*/  peer_addr; int /*<<< orphan*/  email; int /*<<< orphan*/  token; } ;
struct TYPE_19__ {scalar_t__ state; int /*<<< orphan*/  repo_id; int /*<<< orphan*/  error; int /*<<< orphan*/  is_clone; } ;
struct TYPE_18__ {int /*<<< orphan*/  tasks; } ;
struct TYPE_17__ {int /*<<< orphan*/  id; } ;
struct TYPE_16__ {int /*<<< orphan*/  repo_mgr; } ;
typedef  TYPE_1__ SeafileSession ;
typedef  TYPE_2__ SeafRepo ;
typedef  TYPE_3__ SeafCloneManager ;
typedef  TYPE_4__ HttpTxTask ;
typedef  TYPE_5__ CloneTask ;

/* Variables and functions */
 int /*<<< orphan*/  CLONE_STATE_CANCELED ; 
 scalar_t__ HTTP_TASK_STATE_CANCELED ; 
 scalar_t__ HTTP_TASK_STATE_ERROR ; 
 int /*<<< orphan*/  REPO_PROP_SERVER_URL ; 
 int /*<<< orphan*/  SYNC_ERROR_ID_LOCAL_DATA_CORRUPT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 TYPE_5__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC11 (SeafileSession *seaf,
                      HttpTxTask *tx_task,
                      SeafCloneManager *mgr)
{
    CloneTask *task;

    /* Only handle clone task. */
    if (!tx_task->is_clone)
        return;

    task = FUNC1 (mgr->tasks, tx_task->repo_id);
    FUNC2 (task != NULL);

    if (tx_task->state == HTTP_TASK_STATE_CANCELED) {
        /* g_assert (task->state == CLONE_STATE_CANCEL_PENDING); */
        FUNC9 (task, CLONE_STATE_CANCELED);
        return;
    } else if (tx_task->state == HTTP_TASK_STATE_ERROR) {
        FUNC10 (task, tx_task->error);
        return;
    }

    SeafRepo *repo = FUNC3 (seaf->repo_mgr,
                                                 tx_task->repo_id);
    if (repo == NULL) {
        FUNC8 ("[Clone mgr] cannot find repo %s after fetched.\n", 
                   tx_task->repo_id);
        FUNC10 (task, SYNC_ERROR_ID_LOCAL_DATA_CORRUPT);
        return;
    }

    FUNC7 (seaf->repo_mgr, repo, task->token);
    FUNC4 (seaf->repo_mgr, repo, task->email);
    FUNC6 (seaf->repo_mgr, repo->id,
                                           task->peer_addr, task->peer_port);
    if (task->server_url) {
        FUNC5 (seaf->repo_mgr,
                                             repo->id,
                                             REPO_PROP_SERVER_URL,
                                             task->server_url);
    }

    FUNC0 (task);
}