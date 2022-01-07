
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
ignore_xlsx_update (const char *src_path, const char *dst_path)
{
    GPatternSpec *pattern = g_pattern_spec_new ("*.xlsx");
    int ret = FALSE;

    if (!g_pattern_match_string(pattern, src_path) &&
        g_pattern_match_string(pattern, dst_path))
        ret = TRUE;

    g_pattern_spec_free (pattern);
    return ret;
}
