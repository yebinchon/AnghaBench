
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gboolean ;
typedef int GPatternSpec ;


 int FALSE ;
 int TRUE ;
 scalar_t__ g_pattern_match_string (int *,char const*) ;
 int g_pattern_spec_free (int *) ;
 int * g_pattern_spec_new (char*) ;

__attribute__((used)) static gboolean
is_seafile_backup_file (const char *path)
{
    GPatternSpec *pattern = g_pattern_spec_new ("*.sbak");
    int ret = FALSE;

    if (g_pattern_match_string(pattern, path))
        ret = TRUE;

    g_pattern_spec_free (pattern);
    return ret;
}
