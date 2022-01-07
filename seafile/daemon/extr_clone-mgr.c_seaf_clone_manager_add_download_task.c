
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int json_t ;
struct TYPE_8__ {int text; } ;
typedef TYPE_1__ json_error_t ;
struct TYPE_11__ {int repo_mgr; int sync_mgr; int started; } ;
struct TYPE_10__ {int * head; } ;
struct TYPE_9__ {scalar_t__ in_sync; } ;
typedef TYPE_2__ SyncInfo ;
typedef TYPE_3__ SeafRepo ;
typedef int SeafCloneManager ;
typedef scalar_t__ IgnoreReason ;
typedef int GError ;


 int FALSE ;
 scalar_t__ IGNORE_REASON_END_SPACE_PERIOD ;
 int SEAFILE_DOMAIN ;
 int SEAF_ERR_BAD_ARGS ;
 int SEAF_ERR_GENERAL ;
 int TRUE ;
 char* add_task_common (int *,char const*,int,char const*,char const*,char const*,char const*,int,char const*,char*,char const*,char const*,char const*,char const*,int ,int **) ;
 int check_encryption_args (char const*,int,char const*,char*,int **) ;
 char* g_build_filename (char const*,char const*,int *) ;
 int g_free (char*) ;
 int g_set_error (int **,int ,int ,char*) ;
 char* g_strdup (int ) ;
 scalar_t__ is_duplicate_task (int *,char const*) ;
 int json_decref (int *) ;
 int * json_loads (char const*,int ,TYPE_1__*) ;
 int * json_object_get (int *,char*) ;
 int json_string_value (int *) ;
 char* make_worktree_for_download (int *,char*,int **) ;
 TYPE_6__* seaf ;
 int seaf_message (char*) ;
 TYPE_3__* seaf_repo_manager_get_repo (int ,char const*) ;
 int seaf_repo_manager_remove_garbage_repo (int ,char const*) ;
 int seaf_repo_manager_remove_repo_ondisk (int ,char const*,int ) ;
 TYPE_2__* seaf_sync_manager_get_sync_info (int ,char const*) ;
 int seaf_warning (char*,...) ;
 scalar_t__ seafile_verify_repo_passwd (char const*,char const*,char const*,int,char*) ;
 scalar_t__ should_ignore_on_checkout (char const*,scalar_t__*) ;

char *
seaf_clone_manager_add_download_task (SeafCloneManager *mgr,
                                      const char *repo_id,
                                      int repo_version,
                                      const char *peer_id,
                                      const char *repo_name,
                                      const char *token,
                                      const char *passwd,
                                      const char *magic,
                                      int enc_version,
                                      const char *random_key,
                                      const char *wt_parent,
                                      const char *peer_addr,
                                      const char *peer_port,
                                      const char *email,
                                      const char *more_info,
                                      GError **error)
{
    SeafRepo *repo = ((void*)0);
    char *wt_tmp = ((void*)0);
    char *worktree = ((void*)0);
    char *ret = ((void*)0);
    char *repo_salt = ((void*)0);

    if (!seaf->started) {
        seaf_message ("System not started, skip adding clone task.\n");
        goto out;
    }
    if (more_info) {
         json_error_t jerror;
         json_t *object;

         object = json_loads (more_info, 0, &jerror);
         if (!object) {
             seaf_warning ("Failed to load more sync info from json: %s.\n", jerror.text);
             goto out;
         }
         json_t *string = json_object_get (object, "repo_salt");
         if (string)
             repo_salt = g_strdup (json_string_value (string));
         json_decref (object);
     }

    if (passwd &&
        !check_encryption_args (magic, enc_version, random_key, repo_salt, error)) {
        goto out;
    }





    SyncInfo *sync_info = seaf_sync_manager_get_sync_info (seaf->sync_mgr,
                                                           repo_id);
    if (sync_info && sync_info->in_sync) {
        g_set_error (error, SEAFILE_DOMAIN, SEAF_ERR_GENERAL,
                     "Repo already exists");
        goto out;
    }

    repo = seaf_repo_manager_get_repo (seaf->repo_mgr, repo_id);

    if (repo != ((void*)0) && repo->head != ((void*)0)) {
        g_set_error (error, SEAFILE_DOMAIN, SEAF_ERR_GENERAL,
                     "Repo already exists");
        goto out;
    }

    if (is_duplicate_task (mgr, repo_id)) {
        g_set_error (error, SEAFILE_DOMAIN, SEAF_ERR_GENERAL,
                     "Task is already in progress");
        goto out;
    }

    if (passwd &&
        seafile_verify_repo_passwd(repo_id, passwd, magic, enc_version, repo_salt) < 0) {
        g_set_error (error, SEAFILE_DOMAIN, SEAF_ERR_GENERAL,
                     "Incorrect password");
        goto out;
    }

    IgnoreReason reason;
    if (should_ignore_on_checkout (repo_name, &reason)) {
        if (reason == IGNORE_REASON_END_SPACE_PERIOD)
            g_set_error (error, SEAFILE_DOMAIN, SEAF_ERR_BAD_ARGS,
                         "Library name ends with space or period character");
        else
            g_set_error (error, SEAFILE_DOMAIN, SEAF_ERR_BAD_ARGS,
                         "Library name contains invalid characters such as ':', '*', '|', '?'");
        goto out;
    }

    wt_tmp = g_build_filename (wt_parent, repo_name, ((void*)0));

    worktree = make_worktree_for_download (mgr, wt_tmp, error);
    if (!worktree) {
        goto out;
    }





    if (repo_version > 0)
        seaf_repo_manager_remove_garbage_repo (seaf->repo_mgr, repo_id);


    if (!repo)
        seaf_repo_manager_remove_repo_ondisk (seaf->repo_mgr, repo_id, FALSE);

    ret = add_task_common (mgr, repo_id, repo_version,
                           peer_id, repo_name, token, passwd,
                           enc_version, random_key,
                           worktree, peer_addr, peer_port,
                           email, more_info, TRUE, error);

out:
    g_free (worktree);
    g_free (wt_tmp);
    g_free (repo_salt);

    return ret;
}
