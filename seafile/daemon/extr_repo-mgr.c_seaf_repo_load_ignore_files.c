
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int st_mode; } ;
typedef TYPE_1__ SeafStat ;
typedef int GList ;
typedef int FILE ;


 int IGNORE_FILE ;
 int PATH_MAX ;
 int PATH_SEPERATOR ;
 int S_ISREG (int ) ;
 int fclose (int *) ;
 int * fgets (char*,int,int *) ;
 char* g_build_path (int ,char const*,int ,int *) ;
 int * g_fopen (char*,char*) ;
 int g_free (char*) ;
 int * g_list_prepend (int *,char*) ;
 char* g_strdup_printf (char*,char const*,char*) ;
 int g_strstrip (char*) ;
 scalar_t__ seaf_stat (char*,TYPE_1__*) ;
 int strlen (char*) ;

GList *seaf_repo_load_ignore_files (const char *worktree)
{
    GList *list = ((void*)0);
    SeafStat st;
    FILE *fp;
    char *full_path, *pattern;
    char path[PATH_MAX];

    full_path = g_build_path (PATH_SEPERATOR, worktree,
                              IGNORE_FILE, ((void*)0));
    if (seaf_stat (full_path, &st) < 0)
        goto error;
    if (!S_ISREG(st.st_mode))
        goto error;
    fp = g_fopen(full_path, "r");
    if (fp == ((void*)0))
        goto error;

    while (fgets(path, PATH_MAX, fp) != ((void*)0)) {

        g_strstrip (path);


        if (path[0] == '#' || path[0] == '\0')
            continue;


        if (path[strlen(path)-1] == '/')
            pattern = g_strdup_printf("%s/%s*", worktree, path);
        else
            pattern = g_strdup_printf("%s/%s", worktree, path);

        list = g_list_prepend(list, pattern);
    }

    fclose(fp);
    g_free (full_path);
    return list;

error:
    g_free (full_path);
    return ((void*)0);
}
