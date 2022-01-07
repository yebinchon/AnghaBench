
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int gboolean ;
struct TYPE_2__ {int sync_extra_temp_file; } ;
typedef int GPatternSpec ;


 int FALSE ;
 int TRUE ;
 scalar_t__ g_pattern_match_string (int *,char const*) ;
 int ** ignore_patterns ;
 int ** office_temp_ignore_patterns ;
 TYPE_1__* seaf ;

__attribute__((used)) static gboolean
is_built_in_ignored_file (const char *filename)
{
    GPatternSpec **spec = ignore_patterns;

    while (*spec) {
        if (g_pattern_match_string(*spec, filename))
            return TRUE;
        spec++;
    }

    if (!seaf->sync_extra_temp_file) {
        spec = office_temp_ignore_patterns;
        while (*spec) {
            if (g_pattern_match_string(*spec, filename))
                return TRUE;
            spec++;
        }
    }

    return FALSE;
}
