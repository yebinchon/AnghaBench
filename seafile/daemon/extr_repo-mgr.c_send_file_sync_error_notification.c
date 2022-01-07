
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int json_t ;
struct TYPE_5__ {int mq_mgr; int sync_mgr; int repo_mgr; } ;
struct TYPE_4__ {char* name; } ;
typedef TYPE_1__ SeafRepo ;


 int free (char*) ;
 int json_decref (int *) ;
 char* json_dumps (int *,int ) ;
 int json_integer (int) ;
 int * json_object () ;
 int json_object_set_new (int *,char*,int ) ;
 int json_string (char const*) ;
 TYPE_3__* seaf ;
 int seaf_mq_manager_publish_notification (int ,char*,char*) ;
 TYPE_1__* seaf_repo_manager_get_repo (int ,char const*) ;
 int seaf_repo_manager_record_sync_error (char const*,char const*,char const*,int) ;
 int seaf_sync_manager_set_task_error_code (int ,char const*,int) ;

void
send_file_sync_error_notification (const char *repo_id,
                                   const char *repo_name,
                                   const char *path,
                                   int err_id)
{
    if (!repo_name) {
        SeafRepo *repo = seaf_repo_manager_get_repo (seaf->repo_mgr, repo_id);
        if (!repo)
            return;
        repo_name = repo->name;
    }

    seaf_repo_manager_record_sync_error (repo_id, repo_name, path, err_id);

    seaf_sync_manager_set_task_error_code (seaf->sync_mgr, repo_id, err_id);

    json_t *object;
    char *str;

    object = json_object ();
    json_object_set_new (object, "repo_id", json_string(repo_id));
    json_object_set_new (object, "repo_name", json_string(repo_name));
    json_object_set_new (object, "path", json_string(path));
    json_object_set_new (object, "err_id", json_integer(err_id));

    str = json_dumps (object, 0);

    seaf_mq_manager_publish_notification (seaf->mq_mgr,
                                          "sync.error",
                                          str);

    free (str);
    json_decref (object);
}
