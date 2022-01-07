
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SeafCloneManager ;


 int TRUE ;
 char* g_build_filename (char const*,char const*,int *) ;
 int g_free (char*) ;
 char* make_worktree (int *,char*,int ,int *) ;

char *
seaf_clone_manager_gen_default_worktree (SeafCloneManager *mgr,
                                         const char *worktree_parent,
                                         const char *repo_name)
{
    char *wt = g_build_filename (worktree_parent, repo_name, ((void*)0));
    char *worktree;

    worktree = make_worktree (mgr, wt, TRUE, ((void*)0));
    if (!worktree)
        return wt;

    g_free (wt);
    return worktree;
}
