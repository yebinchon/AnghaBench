
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int repo_mgr; } ;
struct TYPE_7__ {TYPE_1__* data; struct TYPE_7__* next; } ;
struct TYPE_6__ {int id; } ;
typedef int SeafRepoManager ;
typedef TYPE_1__ SeafRepo ;
typedef TYPE_2__ GList ;


 int REPO_PROP_SERVER_URL ;
 char* canonical_server_url (char const*) ;
 int g_free (char*) ;
 int g_list_free (TYPE_2__*) ;
 scalar_t__ g_strcmp0 (char*,char const*) ;
 TYPE_4__* seaf ;
 TYPE_2__* seaf_repo_manager_get_repo_list (int ,int ,int) ;
 int seaf_repo_manager_get_repo_relay_info (int ,int ,char**,char**) ;
 int seaf_repo_manager_set_repo_property (int ,int ,int ,char*) ;
 int seaf_repo_manager_set_repo_relay_info (int ,int ,char const*,char*) ;
 int update_server_properties (int *,int ,char*) ;

int
seaf_repo_manager_update_repos_server_host (SeafRepoManager *mgr,
                                            const char *old_host,
                                            const char *new_host,
                                            const char *new_server_url)
{
    GList *ptr, *repos = seaf_repo_manager_get_repo_list (seaf->repo_mgr, 0, -1);
    SeafRepo *r;
    char *canon_server_url = canonical_server_url(new_server_url);

    for (ptr = repos; ptr; ptr = ptr->next) {
        r = ptr->data;

        char *relay_addr = ((void*)0);
        char *relay_port = ((void*)0);
        seaf_repo_manager_get_repo_relay_info (seaf->repo_mgr, r->id,
                                               &relay_addr, &relay_port);
        if (g_strcmp0(relay_addr, old_host) == 0) {
            seaf_repo_manager_set_repo_relay_info (seaf->repo_mgr, r->id,
                                                   new_host, relay_port);


            update_server_properties (mgr, r->id, canon_server_url);

            seaf_repo_manager_set_repo_property (
                seaf->repo_mgr, r->id, REPO_PROP_SERVER_URL, canon_server_url);
        }

        g_free (relay_addr);
        g_free (relay_port);
    }

    g_list_free (repos);
    g_free (canon_server_url);

    return 0;
}
