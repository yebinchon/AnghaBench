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
typedef  scalar_t__ gint64 ;
typedef  scalar_t__ gboolean ;
struct TYPE_14__ {int /*<<< orphan*/  http_tx_mgr; } ;
struct TYPE_13__ {scalar_t__ http_version; scalar_t__ last_http_check_time; scalar_t__ checking; void* testing_host; int /*<<< orphan*/  use_fileserver_port; int /*<<< orphan*/  effective_host; } ;
struct TYPE_12__ {int /*<<< orphan*/  server_url; int /*<<< orphan*/  use_fileserver_port; void* effective_host; } ;
struct TYPE_11__ {int /*<<< orphan*/  http_server_states; } ;
typedef  TYPE_1__ SeafSyncManager ;
typedef  TYPE_2__ SeafRepo ;
typedef  TYPE_3__ HttpServerState ;

/* Variables and functions */
 scalar_t__ CHECK_HTTP_INTERVAL ; 
 scalar_t__ FALSE ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  check_http_protocol_done ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*,TYPE_3__*) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,TYPE_3__*) ; 
 TYPE_4__* seaf ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static gboolean
FUNC7 (SeafSyncManager *mgr, SeafRepo *repo)
{
    /* If a repo was cloned before 4.0, server-url is not set. */
    if (!repo->server_url)
        return FALSE;

    HttpServerState *state = FUNC2 (mgr->http_server_states,
                                                  repo->server_url);
    if (!state) {
        state = FUNC4 ();
        FUNC1 (mgr->http_server_states,
                             FUNC3(repo->server_url), state);
    }

    if (state->checking) {
        return FALSE;
    }

    if (state->http_version > 0) {
        if (!repo->effective_host) {
            repo->effective_host = FUNC3(state->effective_host);
            repo->use_fileserver_port = state->use_fileserver_port;
        }
        return TRUE;
    }

    /* If we haven't detected the server url successfully, retry every 10 seconds. */
    gint64 now = FUNC6(NULL);
    if (now - state->last_http_check_time < CHECK_HTTP_INTERVAL)
        return FALSE;

    /* First try repo->server_url.
     * If it fails and https is not used, try server_url:8082 instead.
     */
    FUNC0 (state->testing_host);
    state->testing_host = FUNC3(repo->server_url);

    state->last_http_check_time = (gint64)FUNC6(NULL);

    if (FUNC5 (seaf->http_tx_mgr,
                                                repo->server_url,
                                                FALSE,
                                                check_http_protocol_done,
                                                state) < 0)
        return FALSE;

    state->checking = TRUE;

    return FALSE;
}