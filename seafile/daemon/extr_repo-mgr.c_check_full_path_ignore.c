
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t guint ;
typedef int gboolean ;
typedef int GList ;


 int FALSE ;
 int TRUE ;
 char* g_build_path (char*,char const*,char const*,int *) ;
 int g_free (char*) ;
 int g_strfreev (char**) ;
 char** g_strsplit (char const*,char*,int ) ;
 size_t g_strv_length (char**) ;
 scalar_t__ seaf_repo_check_ignore_file (int *,char*) ;
 scalar_t__ should_ignore (int *,char*,int *) ;

__attribute__((used)) static gboolean
check_full_path_ignore (const char *worktree, const char *path, GList *ignore_list)
{
    char **tokens;
    guint i;
    guint n;
    gboolean ret = FALSE;

    tokens = g_strsplit (path, "/", 0);
    n = g_strv_length (tokens);
    for (i = 0; i < n; ++i) {

        if (should_ignore (((void*)0), tokens[i], ignore_list)) {
            ret = TRUE;
            goto out;
        }
    }

    char *full_path = g_build_path ("/", worktree, path, ((void*)0));
    if (seaf_repo_check_ignore_file (ignore_list, full_path))
        ret = TRUE;
    g_free (full_path);

out:
    g_strfreev (tokens);
    return ret;
}
