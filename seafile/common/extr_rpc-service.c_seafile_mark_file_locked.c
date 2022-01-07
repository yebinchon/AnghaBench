
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int filelock_mgr; } ;
typedef int GError ;


 int FALSE ;
 int SEAFILE_DOMAIN ;
 int SEAF_ERR_BAD_ARGS ;
 int g_free (char*) ;
 int g_set_error (int **,int ,int ,char*) ;
 char* g_strdup (char const*) ;
 TYPE_1__* seaf ;
 int seaf_filelock_manager_mark_file_locked (int ,char const*,char const*,int ) ;
 int strlen (char*) ;

int
seafile_mark_file_locked (const char *repo_id, const char *path, GError **error)
{
    char *canon_path = ((void*)0);
    int len;
    int ret;

    if (!repo_id || !path) {
        g_set_error (error, SEAFILE_DOMAIN, SEAF_ERR_BAD_ARGS, "Argument should not be null");
        return -1;
    }

    if (*path == '/')
        ++path;

    if (path[0] == 0) {
        g_set_error (error, SEAFILE_DOMAIN, SEAF_ERR_BAD_ARGS, "Invalid path");
        return -1;
    }

    canon_path = g_strdup(path);
    len = strlen(canon_path);
    if (canon_path[len-1] == '/')
        canon_path[len-1] = 0;

    ret = seaf_filelock_manager_mark_file_locked (seaf->filelock_mgr,
                                                  repo_id, path, FALSE);

    g_free (canon_path);
    return ret;
}
