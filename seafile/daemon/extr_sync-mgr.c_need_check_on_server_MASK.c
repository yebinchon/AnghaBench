#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ gint64 ;
typedef  int /*<<< orphan*/  gboolean ;
struct TYPE_14__ {scalar_t__ last_update_head_commit_map_time; int /*<<< orphan*/  head_commit_map_lock; int /*<<< orphan*/  head_commit_map; int /*<<< orphan*/  head_commit_map_init; } ;
struct TYPE_13__ {int /*<<< orphan*/  id; int /*<<< orphan*/  server_url; } ;
struct TYPE_12__ {int /*<<< orphan*/  http_server_states; } ;
struct TYPE_11__ {TYPE_1__* current_task; } ;
struct TYPE_10__ {scalar_t__ state; } ;
typedef  TYPE_2__ SyncInfo ;
typedef  TYPE_3__ SeafSyncManager ;
typedef  TYPE_4__ SeafRepo ;
typedef  TYPE_5__ HttpServerState ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ HEAD_COMMIT_MAP_TTL ; 
 scalar_t__ SYNC_STATE_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*,char const*) ; 
 TYPE_2__* FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static gboolean
FUNC6 (SeafSyncManager *manager, SeafRepo *repo, const char *master_head_id)
{
#define HEAD_COMMIT_MAP_TTL 90
    HttpServerState *state;
    gboolean ret = FALSE;
    SyncInfo *info;

    /* If sync state is in error, always retry. */
    info = FUNC2 (manager, repo->id);
    if (info && info->current_task && info->current_task->state == SYNC_STATE_ERROR)
        return TRUE;

    state = FUNC0 (manager->http_server_states, repo->server_url);
    if (!state)
        return TRUE;

    FUNC3 (&state->head_commit_map_lock);

    if (!state->head_commit_map_init) {
        ret = TRUE;
        goto out;
    }

    gint64 now = (gint64)FUNC5(NULL);
    if (now - state->last_update_head_commit_map_time >= HEAD_COMMIT_MAP_TTL) {
        ret = TRUE;
        goto out;
    }

    char *server_head = FUNC0 (state->head_commit_map, repo->id);
    if (!server_head) {
        /* Repo was removed on server. Just return "changed on server". */
        ret = TRUE;
        goto out;
    }
    if (FUNC1 (server_head, master_head_id) != 0)
        ret = TRUE;

out:
    FUNC4 (&state->head_commit_map_lock);
    return ret;
}