
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int gboolean ;
struct TYPE_6__ {scalar_t__ data; struct TYPE_6__* next; } ;
struct TYPE_5__ {int st_mode; } ;
typedef TYPE_1__ SeafStat ;
typedef int GPatternSpec ;
typedef TYPE_2__ GList ;


 int FALSE ;
 scalar_t__ S_ISDIR (int ) ;
 int TRUE ;
 int g_free (char*) ;
 scalar_t__ g_pattern_match_string (int *,char*) ;
 int g_pattern_spec_free (int *) ;
 int * g_pattern_spec_new (char*) ;
 char* g_strconcat (char const*,char*,int *) ;
 char* g_strdup (char const*) ;
 int seaf_stat (char*,TYPE_1__*) ;

gboolean
seaf_repo_check_ignore_file (GList *ignore_list, const char *fullpath)
{
    char *str;
    SeafStat st;
    GPatternSpec *ignore_spec;
    GList *p;

    str = g_strdup(fullpath);

    int rc = seaf_stat(str, &st);
    if (rc == 0 && S_ISDIR(st.st_mode)) {
        g_free (str);
        str = g_strconcat (fullpath, "/", ((void*)0));
    }

    for (p = ignore_list; p != ((void*)0); p = p->next) {
        char *pattern = (char *)p->data;

        ignore_spec = g_pattern_spec_new(pattern);
        if (g_pattern_match_string(ignore_spec, str)) {
            g_free (str);
            g_pattern_spec_free(ignore_spec);
            return TRUE;
        }
        g_pattern_spec_free(ignore_spec);
    }

    g_free (str);
    return FALSE;
}
