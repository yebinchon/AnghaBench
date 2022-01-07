
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gboolean ;
typedef int GPatternSpec ;


 int FALSE ;
 int TRUE ;
 scalar_t__ g_pattern_match_string (int *,char const*) ;
 int ** ignore_patterns ;

gboolean
seaf_repo_manager_is_ignored_hidden_file (const char *filename)
{
    GPatternSpec **spec = ignore_patterns;

    while (*spec) {
        if (g_pattern_match_string(*spec, filename))
            return TRUE;
        spec++;
    }

    return FALSE;
}
