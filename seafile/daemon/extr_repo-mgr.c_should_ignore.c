
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int gboolean ;
struct TYPE_2__ {int sync_extra_temp_file; } ;
typedef int GPatternSpec ;
typedef int GList ;


 int FALSE ;
 scalar_t__ SEAF_DIR_NAME_LEN ;
 int TRUE ;
 char* g_build_path (char*,char const*,char const*,int *) ;
 int g_free (char*) ;
 scalar_t__ g_pattern_match_string (int *,char const*) ;
 int g_utf8_validate (char const*,int,int *) ;
 int ** ignore_patterns ;
 int ** office_temp_ignore_patterns ;
 TYPE_1__* seaf ;
 scalar_t__ seaf_repo_check_ignore_file (int *,char*) ;
 int seaf_warning (char*,char const*) ;
 scalar_t__ strchr (char const*,char) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static gboolean
should_ignore(const char *basepath, const char *filename, void *data)
{
    GPatternSpec **spec = ignore_patterns;
    GList *ignore_list = (GList *)data;

    if (!g_utf8_validate (filename, -1, ((void*)0))) {
        seaf_warning ("File name %s contains non-UTF8 characters, skip.\n", filename);
        return TRUE;
    }


    if (strlen(filename) >= SEAF_DIR_NAME_LEN)
        return TRUE;

    if (strchr (filename, '/'))
        return TRUE;

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

    if (basepath) {
        char *fullpath = g_build_path ("/", basepath, filename, ((void*)0));
        if (seaf_repo_check_ignore_file (ignore_list, fullpath)) {
            g_free (fullpath);
            return TRUE;
        }
        g_free (fullpath);
    }

    return FALSE;
}
