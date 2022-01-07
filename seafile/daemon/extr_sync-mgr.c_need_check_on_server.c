
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ gint64 ;
typedef int gboolean ;
struct TYPE_14__ {scalar_t__ last_update_head_commit_map_time; int head_commit_map_lock; int head_commit_map; int head_commit_map_init; } ;
struct TYPE_13__ {int id; int server_url; } ;
struct TYPE_12__ {int http_server_states; } ;
struct TYPE_11__ {TYPE_1__* current_task; } ;
struct TYPE_10__ {scalar_t__ state; } ;
typedef TYPE_2__ SyncInfo ;
typedef TYPE_3__ SeafSyncManager ;
typedef TYPE_4__ SeafRepo ;
typedef TYPE_5__ HttpServerState ;


 int FALSE ;
 scalar_t__ HEAD_COMMIT_MAP_TTL ;
 scalar_t__ SYNC_STATE_ERROR ;
 int TRUE ;
 void* g_hash_table_lookup (int ,int ) ;
 scalar_t__ g_strcmp0 (char*,char const*) ;
 TYPE_2__* get_sync_info (TYPE_3__*,int ) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int time (int *) ;

__attribute__((used)) static gboolean
need_check_on_server (SeafSyncManager *manager, SeafRepo *repo, const char *master_head_id)
{

    HttpServerState *state;
    gboolean ret = FALSE;
    SyncInfo *info;


    info = get_sync_info (manager, repo->id);
    if (info && info->current_task && info->current_task->state == SYNC_STATE_ERROR)
        return TRUE;

    state = g_hash_table_lookup (manager->http_server_states, repo->server_url);
    if (!state)
        return TRUE;

    pthread_mutex_lock (&state->head_commit_map_lock);

    if (!state->head_commit_map_init) {
        ret = TRUE;
        goto out;
    }

    gint64 now = (gint64)time(((void*)0));
    if (now - state->last_update_head_commit_map_time >= 90) {
        ret = TRUE;
        goto out;
    }

    char *server_head = g_hash_table_lookup (state->head_commit_map, repo->id);
    if (!server_head) {

        ret = TRUE;
        goto out;
    }
    if (g_strcmp0 (server_head, master_head_id) != 0)
        ret = TRUE;

out:
    pthread_mutex_unlock (&state->head_commit_map_lock);
    return ret;
}
