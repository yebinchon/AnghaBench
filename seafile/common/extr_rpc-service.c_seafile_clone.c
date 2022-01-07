
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int clone_mgr; } ;
typedef int GError ;


 int SEAFILE_DOMAIN ;
 int SEAF_ERR_BAD_ARGS ;
 int g_set_error (int **,int ,int ,char*) ;
 TYPE_1__* seaf ;
 char* seaf_clone_manager_add_task (int ,char const*,int,char const*,char const*,char const*,char const*,char const*,int,char const*,char const*,char const*,char const*,char const*,char const*,int **) ;
 int strlen (char const*) ;

char *
seafile_clone (const char *repo_id,
               int repo_version,
               const char *relay_id,
               const char *repo_name,
               const char *worktree,
               const char *token,
               const char *passwd,
               const char *magic,
               const char *peer_addr,
               const char *peer_port,
               const char *email,
               const char *random_key,
               int enc_version,
               const char *more_info,
               GError **error)
{
    if (!repo_id || strlen(repo_id) != 36) {
        g_set_error (error, SEAFILE_DOMAIN, SEAF_ERR_BAD_ARGS, "Invalid repo id");
        return ((void*)0);
    }

    if (!relay_id || strlen(relay_id) != 40) {
        g_set_error (error, SEAFILE_DOMAIN, SEAF_ERR_BAD_ARGS, "Invalid peer id");
        return ((void*)0);
    }

    if (!worktree) {
        g_set_error (error, SEAFILE_DOMAIN, SEAF_ERR_BAD_ARGS,
                     "Worktre must be specified");
        return ((void*)0);
    }

    if (!token || !peer_addr || !peer_port || !email ) {
        g_set_error (error, SEAFILE_DOMAIN, SEAF_ERR_BAD_ARGS,
                     "Argument can't be NULL");
        return ((void*)0);
    }

    return seaf_clone_manager_add_task (seaf->clone_mgr,
                                        repo_id, repo_version,
                                        relay_id,
                                        repo_name, token,
                                        passwd, magic,
                                        enc_version,
                                        random_key,
                                        worktree,
                                        peer_addr, peer_port,
                                        email, more_info,
                                        error);
}
