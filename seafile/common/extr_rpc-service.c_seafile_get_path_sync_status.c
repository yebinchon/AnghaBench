
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sync_mgr; } ;
typedef int GError ;


 int SEAFILE_DOMAIN ;
 int SEAF_ERR_BAD_ARGS ;
 int g_free (char*) ;
 int g_set_error (int **,int ,int ,char*) ;
 char* g_strdup (char const*) ;
 TYPE_1__* seaf ;
 char* seaf_sync_manager_get_path_sync_status (int ,char const*,char*,int) ;
 scalar_t__ strcmp (char const*,char*) ;
 int strlen (char*) ;

char *
seafile_get_path_sync_status (const char *repo_id,
                              const char *path,
                              int is_dir,
                              GError **error)
{
    char *canon_path = ((void*)0);
    int len;
    char *status;

    if (!repo_id || !path) {
        g_set_error (error, SEAFILE_DOMAIN, SEAF_ERR_BAD_ARGS, "Argument should not be null");
        return ((void*)0);
    }


    if (strcmp (path, "") != 0) {
        if (*path == '/')
            ++path;
        canon_path = g_strdup(path);
        len = strlen(canon_path);
        if (canon_path[len-1] == '/')
            canon_path[len-1] = 0;
    } else {
        canon_path = g_strdup(path);
    }

    status = seaf_sync_manager_get_path_sync_status (seaf->sync_mgr,
                                                     repo_id,
                                                     canon_path,
                                                     is_dir);
    g_free (canon_path);
    return status;
}
