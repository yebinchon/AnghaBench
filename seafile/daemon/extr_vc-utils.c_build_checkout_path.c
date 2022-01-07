
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int st_mode; } ;
typedef TYPE_1__ SeafStat ;


 int SEAF_PATH_MAX ;
 scalar_t__ S_ISDIR (int ) ;
 char* g_strdup (char*) ;
 scalar_t__ seaf_stat (char*,TYPE_1__*) ;
 scalar_t__ seaf_util_mkdir (char*,int) ;
 int seaf_warning (char*,...) ;
 int snprintf (char*,int,char*,char const*) ;
 int strlen (char const*) ;

char *
build_checkout_path (const char *worktree, const char *ce_name, int len)
{
    int base_len = strlen(worktree);
    int full_len;
    char path[SEAF_PATH_MAX];
    int offset;
    SeafStat st;

    if (!len) {
        seaf_warning ("entry name should not be empty.\n");
        return ((void*)0);
    }

    snprintf (path, SEAF_PATH_MAX, "%s/", worktree);


    full_len = base_len + len + 1;
    offset = base_len + 1;
    while (offset < full_len) {
        do {
            path[offset] = ce_name[offset-base_len-1];
            offset++;
        } while (offset < full_len && ce_name[offset-base_len-1] != '/');
        if (offset >= full_len)
            break;
        path[offset] = 0;

        if (seaf_stat (path, &st) == 0 && S_ISDIR(st.st_mode))
            continue;

        if (seaf_util_mkdir (path, 0777) < 0) {
            seaf_warning ("Failed to create directory %s.\n", path);
            return ((void*)0);
        }
    }
    path[offset] = 0;

    return g_strdup(path);
}
