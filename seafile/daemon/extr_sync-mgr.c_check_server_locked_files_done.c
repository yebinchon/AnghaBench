
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
struct TYPE_14__ {int filelock_mgr; int sync_mgr; } ;
struct TYPE_13__ {TYPE_3__* data; struct TYPE_13__* next; } ;
struct TYPE_12__ {TYPE_5__* results; int success; } ;
struct TYPE_11__ {int timestamp; int repo_id; int locked_files; } ;
struct TYPE_10__ {scalar_t__ last_check_locked_files_time; int locked_files_not_supported; int checking_locked_files; } ;
struct TYPE_9__ {scalar_t__ in_sync; } ;
typedef TYPE_1__ SyncInfo ;
typedef TYPE_2__ HttpServerState ;
typedef TYPE_3__ HttpLockedFilesRes ;
typedef TYPE_4__ HttpLockedFiles ;
typedef TYPE_5__ GList ;


 int FALSE ;
 int TRUE ;
 TYPE_1__* get_sync_info (int ,int ) ;
 TYPE_6__* seaf ;
 int seaf_filelock_manager_update (int ,int ,int ) ;
 int seaf_filelock_manager_update_timestamp (int ,int ,int ) ;
 int time (int *) ;

__attribute__((used)) static void
check_server_locked_files_done (HttpLockedFiles *result, void *user_data)
{
    HttpServerState *server_state = user_data;
    GList *ptr;
    HttpLockedFilesRes *locked_res;
    gint64 now = (gint64)time(((void*)0));

    server_state->checking_locked_files = FALSE;

    if (!result->success) {



        if (server_state->last_check_locked_files_time == 0)
            server_state->locked_files_not_supported = TRUE;
        server_state->last_check_locked_files_time = now;
        return;
    }

    SyncInfo *info;
    for (ptr = result->results; ptr; ptr = ptr->next) {
        locked_res = ptr->data;

        info = get_sync_info (seaf->sync_mgr, locked_res->repo_id);
        if (info->in_sync)
            continue;

        seaf_filelock_manager_update (seaf->filelock_mgr,
                                      locked_res->repo_id,
                                      locked_res->locked_files);

        seaf_filelock_manager_update_timestamp (seaf->filelock_mgr,
                                                locked_res->repo_id,
                                                locked_res->timestamp);
    }

    server_state->last_check_locked_files_time = now;
}
