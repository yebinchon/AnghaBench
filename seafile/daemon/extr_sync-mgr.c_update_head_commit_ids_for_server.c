
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* gpointer ;
typedef scalar_t__ gint64 ;
struct TYPE_4__ {int http_tx_mgr; int repo_mgr; } ;
struct TYPE_3__ {int http_version; int head_commit_map_lock; scalar_t__ last_update_head_commit_map_time; scalar_t__ head_commit_map_init; int * head_commit_map; int use_fileserver_port; int effective_host; } ;
typedef TYPE_1__ HttpServerState ;
typedef int GList ;
typedef int GHashTable ;


 scalar_t__ TRUE ;
 int g_free ;
 int g_hash_table_destroy (int *) ;
 int g_list_free_full (int *,int ) ;
 int * http_tx_manager_get_head_commit_ids (int ,int ,int ,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 TYPE_2__* seaf ;
 int seaf_debug (char*,char*) ;
 int * seaf_repo_manager_get_repo_id_list_by_server (int ,char*) ;
 scalar_t__ time (int *) ;

__attribute__((used)) static void
update_head_commit_ids_for_server (gpointer key, gpointer value, gpointer user_data)
{
    char *server_url = key;
    HttpServerState *state = value;





    if (state->http_version >= 2) {
        seaf_debug ("Updating repo head commit ids for server %s.\n", server_url);
        GList *repo_id_list = seaf_repo_manager_get_repo_id_list_by_server (seaf->repo_mgr,
                                                                            server_url);
        if (!repo_id_list) {
            return;
        }

        GHashTable *new_map = http_tx_manager_get_head_commit_ids (seaf->http_tx_mgr,
                                                                   state->effective_host,
                                                                   state->use_fileserver_port,
                                                                   repo_id_list);
        if (new_map) {
            pthread_mutex_lock (&state->head_commit_map_lock);
            g_hash_table_destroy (state->head_commit_map);
            state->head_commit_map = new_map;
            if (!state->head_commit_map_init)
                state->head_commit_map_init = TRUE;
            state->last_update_head_commit_map_time = (gint64)time(((void*)0));
            pthread_mutex_unlock (&state->head_commit_map_lock);
        }

        g_list_free_full (repo_id_list, g_free);
    }
}
