
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int http_server_states; } ;
typedef TYPE_1__ SeafSyncManager ;


 int G_USEC_PER_SEC ;
 int g_hash_table_foreach (int ,int ,TYPE_1__*) ;
 int g_usleep (int) ;
 int update_head_commit_ids_for_server ;

__attribute__((used)) static void *
update_cached_head_commit_ids (void *arg)
{
    SeafSyncManager *mgr = (SeafSyncManager *)arg;

    while (1) {
        g_usleep (30 * G_USEC_PER_SEC);

        g_hash_table_foreach (mgr->http_server_states, update_head_commit_ids_for_server, mgr);
    }

    return ((void*)0);
}
