
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int repo_mgr; } ;
struct TYPE_6__ {int id; int name; } ;
typedef int SyncTask ;
typedef TYPE_1__ SeafRepo ;


 int SYNC_ERROR_ID_SERVER_REPO_DELETED ;
 TYPE_2__* seaf ;
 int seaf_message (char*,int ,int ) ;
 int seaf_repo_manager_del_repo (int ,TYPE_1__*) ;
 int seaf_warning (char*,int ,int ) ;
 int seafile_session_config_get_allow_repo_not_found_on_server (TYPE_2__*) ;
 int set_task_error (int *,int ) ;

__attribute__((used)) static void
on_repo_deleted_on_server (SyncTask *task, SeafRepo *repo)
{
    set_task_error (task, SYNC_ERROR_ID_SERVER_REPO_DELETED);

    seaf_warning ("repo %s(%.8s) not found on server\n",
                  repo->name, repo->id);

    if (!seafile_session_config_get_allow_repo_not_found_on_server(seaf)) {
        seaf_message ("remove repo %s(%.8s) since it's deleted on relay\n",
                      repo->name, repo->id);



        seaf_repo_manager_del_repo (seaf->repo_mgr, repo);
    }
}
