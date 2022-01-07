
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int head_commit_map_lock; int head_commit_map; } ;
typedef TYPE_1__ HttpServerState ;


 int g_free (TYPE_1__*) ;
 int g_hash_table_destroy (int ) ;
 int pthread_mutex_destroy (int *) ;

__attribute__((used)) static void
http_server_state_free (HttpServerState *state)
{
    if (!state)
        return;
    g_hash_table_destroy (state->head_commit_map);
    pthread_mutex_destroy (&state->head_commit_map_lock);
    g_free (state);
}
