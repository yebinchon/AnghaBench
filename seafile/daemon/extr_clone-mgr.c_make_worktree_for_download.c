
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SeafCloneManager ;
typedef int GError ;


 int F_OK ;
 scalar_t__ g_access (char const*,int ) ;
 int g_free (char*) ;
 char* g_strdup (char const*) ;
 int seaf_clone_manager_check_worktree_path (int *,char*,int **) ;
 char* try_worktree (char const*) ;

__attribute__((used)) static char *
make_worktree_for_download (SeafCloneManager *mgr,
                            const char *wt_tmp,
                            GError **error)
{
    char *worktree;

    if (g_access (wt_tmp, F_OK) == 0) {
        worktree = try_worktree (wt_tmp);
    } else {
        worktree = g_strdup(wt_tmp);
    }

    if (!seaf_clone_manager_check_worktree_path (mgr, worktree, error)) {
        g_free (worktree);
        return ((void*)0);
    }

    return worktree;
}
