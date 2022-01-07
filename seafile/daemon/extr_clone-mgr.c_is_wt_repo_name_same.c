
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gboolean ;


 int FALSE ;
 int g_free (char*) ;
 char* g_path_get_basename (char const*) ;
 scalar_t__ strcmp (char*,char const*) ;

__attribute__((used)) static gboolean
is_wt_repo_name_same (const char *worktree, const char *repo_name)
{
    char *basename = g_path_get_basename (worktree);
    gboolean ret = FALSE;
    ret = (strcmp (basename, repo_name) == 0);
    g_free (basename);
    return ret;
}
