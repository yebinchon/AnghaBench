
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int repo_mgr; } ;
struct TYPE_8__ {scalar_t__ data; struct TYPE_8__* next; } ;
struct TYPE_7__ {char* email; int id; } ;
typedef TYPE_1__ SeafRepo ;
typedef TYPE_2__ GList ;
typedef int GError ;


 int SEAFILE_DOMAIN ;
 int SEAF_ERR_BAD_ARGS ;
 int cancel_clone_tasks_by_account (char const*,char const*) ;
 int g_free (char*) ;
 int g_list_free (TYPE_2__*) ;
 int g_set_error (int **,int ,int ,char*) ;
 scalar_t__ g_strcmp0 (char*,char const*) ;
 TYPE_5__* seaf ;
 TYPE_2__* seaf_repo_manager_get_repo_list (int ,int,int) ;
 int seaf_repo_manager_get_repo_relay_info (int ,int ,char**,int *) ;
 scalar_t__ seaf_repo_manager_remove_repo_token (int ,TYPE_1__*) ;

int
seafile_remove_repo_tokens_by_account (const char *server_addr, const char *email, GError **error)
{
    if (!server_addr || !email) {
        g_set_error (error, SEAFILE_DOMAIN, SEAF_ERR_BAD_ARGS, "Argument should not be null");
        return -1;
    }

    GList *ptr, *repos = seaf_repo_manager_get_repo_list(seaf->repo_mgr, -1, -1);
    if (!repos) {
        return 0;
    }

    for (ptr = repos; ptr; ptr = ptr->next) {
        SeafRepo *repo = (SeafRepo*)ptr->data;
        char *addr = ((void*)0);
        seaf_repo_manager_get_repo_relay_info(seaf->repo_mgr,
                                              repo->id,
                                              &addr,
                                              ((void*)0));

        if (g_strcmp0(addr, server_addr) == 0 && g_strcmp0(repo->email, email) == 0) {
            if (seaf_repo_manager_remove_repo_token(seaf->repo_mgr, repo) < 0) {
                return -1;
            }
        }

        g_free (addr);
    }

    g_list_free (repos);

    cancel_clone_tasks_by_account (server_addr, email);

    return 0;
}
