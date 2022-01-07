
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {int dummy; } ;
typedef int SeafStat ;


 int add_empty_dir_to_index_with_check (struct index_state*,char*,int *) ;
 char* g_build_filename (char const*,char*,int *) ;
 int g_free (char*) ;
 char* g_path_get_dirname (char const*) ;
 int * index_name_exists (struct index_state*,char const*,int ,int ) ;
 scalar_t__ seaf_stat (char*,int *) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlen (char const*) ;

__attribute__((used)) static void
try_add_empty_parent_dir_entry (const char *worktree,
                                struct index_state *istate,
                                const char *path)
{
    if (index_name_exists (istate, path, strlen(path), 0) != ((void*)0))
        return;

    char *parent_dir = g_path_get_dirname (path);


    if (strcmp (parent_dir, ".") == 0) {
        g_free (parent_dir);
        return;
    }

    char *full_dir = g_build_filename (worktree, parent_dir, ((void*)0));
    SeafStat st;
    if (seaf_stat (full_dir, &st) < 0) {
        goto out;
    }

    add_empty_dir_to_index_with_check (istate, parent_dir, &st);

out:
    g_free (parent_dir);
    g_free (full_dir);
}
