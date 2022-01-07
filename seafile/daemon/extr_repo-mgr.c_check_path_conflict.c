
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ gboolean ;
typedef int GError ;


 scalar_t__ FALSE ;
 int conflict_pattern ;
 scalar_t__ g_regex_match (int ,char const*,int ,int *) ;
 char* g_regex_replace_literal (int ,char const*,int,int ,char*,int ,int **) ;

__attribute__((used)) static gboolean
check_path_conflict (const char *path, char **orig_path)
{
    gboolean is_conflict = FALSE;
    GError *error = ((void*)0);

    is_conflict = g_regex_match (conflict_pattern, path, 0, ((void*)0));
    if (is_conflict) {
        *orig_path = g_regex_replace_literal (conflict_pattern, path, -1,
                                              0, "", 0, &error);
        if (!*orig_path)
            is_conflict = FALSE;
    }

    return is_conflict;
}
