
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int gboolean ;
struct TYPE_3__ {int is_readonly; } ;
typedef int SeafRepoManager ;
typedef TYPE_1__ SeafRepo ;


 int FALSE ;
 int is_path_writable (char const*,int ,char const*) ;
 TYPE_1__* seaf_repo_manager_get_repo (int *,char const*) ;
 int seaf_warning (char*,char const*) ;

gboolean
seaf_repo_manager_is_path_writable (SeafRepoManager *mgr,
                                    const char *repo_id,
                                    const char *path)
{
    SeafRepo *repo = seaf_repo_manager_get_repo (mgr, repo_id);
    if (!repo) {
        seaf_warning ("Failed to get repo %s.\n", repo_id);
        return FALSE;
    }

    return is_path_writable (repo_id, repo->is_readonly, path);
}
