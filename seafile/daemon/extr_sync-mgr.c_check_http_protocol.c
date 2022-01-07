
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ gint64 ;
typedef scalar_t__ gboolean ;
struct TYPE_14__ {int http_tx_mgr; } ;
struct TYPE_13__ {scalar_t__ http_version; scalar_t__ last_http_check_time; scalar_t__ checking; void* testing_host; int use_fileserver_port; int effective_host; } ;
struct TYPE_12__ {int server_url; int use_fileserver_port; void* effective_host; } ;
struct TYPE_11__ {int http_server_states; } ;
typedef TYPE_1__ SeafSyncManager ;
typedef TYPE_2__ SeafRepo ;
typedef TYPE_3__ HttpServerState ;


 scalar_t__ CHECK_HTTP_INTERVAL ;
 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 int check_http_protocol_done ;
 int g_free (void*) ;
 int g_hash_table_insert (int ,void*,TYPE_3__*) ;
 TYPE_3__* g_hash_table_lookup (int ,int ) ;
 void* g_strdup (int ) ;
 TYPE_3__* http_server_state_new () ;
 scalar_t__ http_tx_manager_check_protocol_version (int ,int ,scalar_t__,int ,TYPE_3__*) ;
 TYPE_4__* seaf ;
 scalar_t__ time (int *) ;

__attribute__((used)) static gboolean
check_http_protocol (SeafSyncManager *mgr, SeafRepo *repo)
{

    if (!repo->server_url)
        return FALSE;

    HttpServerState *state = g_hash_table_lookup (mgr->http_server_states,
                                                  repo->server_url);
    if (!state) {
        state = http_server_state_new ();
        g_hash_table_insert (mgr->http_server_states,
                             g_strdup(repo->server_url), state);
    }

    if (state->checking) {
        return FALSE;
    }

    if (state->http_version > 0) {
        if (!repo->effective_host) {
            repo->effective_host = g_strdup(state->effective_host);
            repo->use_fileserver_port = state->use_fileserver_port;
        }
        return TRUE;
    }


    gint64 now = time(((void*)0));
    if (now - state->last_http_check_time < CHECK_HTTP_INTERVAL)
        return FALSE;




    g_free (state->testing_host);
    state->testing_host = g_strdup(repo->server_url);

    state->last_http_check_time = (gint64)time(((void*)0));

    if (http_tx_manager_check_protocol_version (seaf->http_tx_mgr,
                                                repo->server_url,
                                                FALSE,
                                                check_http_protocol_done,
                                                state) < 0)
        return FALSE;

    state->checking = TRUE;

    return FALSE;
}
