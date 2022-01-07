
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef void* gint64 ;
struct TYPE_14__ {int repo_mgr; int sync_mgr; } ;
struct TYPE_13__ {TYPE_4__* data; struct TYPE_13__* next; } ;
struct TYPE_12__ {int timestamp; int repo_id; int group_perms; int user_perms; } ;
struct TYPE_11__ {TYPE_5__* results; int success; } ;
struct TYPE_10__ {scalar_t__ last_check_perms_time; int folder_perms_not_supported; int checking_folder_perms; } ;
struct TYPE_9__ {scalar_t__ in_sync; } ;
typedef TYPE_1__ SyncInfo ;
typedef TYPE_2__ HttpServerState ;
typedef TYPE_3__ HttpFolderPerms ;
typedef TYPE_4__ HttpFolderPermRes ;
typedef TYPE_5__ GList ;


 int FALSE ;
 int FOLDER_PERM_TYPE_GROUP ;
 int FOLDER_PERM_TYPE_USER ;
 int TRUE ;
 TYPE_1__* get_sync_info (int ,int ) ;
 TYPE_6__* seaf ;
 int seaf_repo_manager_update_folder_perm_timestamp (int ,int ,int ) ;
 int seaf_repo_manager_update_folder_perms (int ,int ,int ,int ) ;
 int time (int *) ;

__attribute__((used)) static void
check_folder_perms_done (HttpFolderPerms *result, void *user_data)
{
    HttpServerState *server_state = user_data;
    GList *ptr;
    HttpFolderPermRes *res;
    gint64 now = (gint64)time(((void*)0));

    server_state->checking_folder_perms = FALSE;

    if (!result->success) {



        if (server_state->last_check_perms_time == 0)
            server_state->folder_perms_not_supported = TRUE;
        server_state->last_check_perms_time = now;
        return;
    }

    SyncInfo *info;
    for (ptr = result->results; ptr; ptr = ptr->next) {
        res = ptr->data;

        info = get_sync_info (seaf->sync_mgr, res->repo_id);
        if (info->in_sync)
            continue;

        seaf_repo_manager_update_folder_perms (seaf->repo_mgr, res->repo_id,
                                               FOLDER_PERM_TYPE_USER,
                                               res->user_perms);
        seaf_repo_manager_update_folder_perms (seaf->repo_mgr, res->repo_id,
                                               FOLDER_PERM_TYPE_GROUP,
                                               res->group_perms);
        seaf_repo_manager_update_folder_perm_timestamp (seaf->repo_mgr,
                                                        res->repo_id,
                                                        res->timestamp);
    }

    server_state->last_check_perms_time = now;
}
