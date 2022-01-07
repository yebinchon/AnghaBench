
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef void* gpointer ;
struct TYPE_4__ {int http_server_states; } ;
typedef TYPE_1__ SeafSyncManager ;
typedef int HttpServerState ;
typedef int GList ;
typedef int GHashTableIter ;


 int check_folder_permissions_one_server (TYPE_1__*,char*,int *,int *) ;
 int g_hash_table_iter_init (int *,int ) ;
 scalar_t__ g_hash_table_iter_next (int *,void**,void**) ;

__attribute__((used)) static void
check_folder_permissions (SeafSyncManager *mgr, GList *repos)
{
    GHashTableIter iter;
    gpointer key, value;
    char *host;
    HttpServerState *state;

    g_hash_table_iter_init (&iter, mgr->http_server_states);
    while (g_hash_table_iter_next (&iter, &key, &value)) {
        host = key;
        state = value;
        check_folder_permissions_one_server (mgr, host, state, repos);
    }
}
