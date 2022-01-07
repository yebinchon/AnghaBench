
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ gint64 ;
struct TYPE_3__ {scalar_t__ st_mtime; int st_mode; } ;
typedef TYPE_1__ SeafStat ;


 int SEAF_PATH_MAX ;
 int S_ISDIR (unsigned int) ;
 int S_ISREG (int ) ;
 int errno ;
 int is_eml_file (char const*) ;
 scalar_t__ seaf_remove_empty_dir (char*) ;
 scalar_t__ seaf_stat (char*,TYPE_1__*) ;
 scalar_t__ seaf_util_unlink (char*) ;
 int seaf_warning (char*,...) ;
 int snprintf (char*,int,char*,char const*,char const*) ;
 int strerror (int ) ;
 int strlen (char const*) ;

int
delete_path (const char *worktree, const char *name,
             unsigned int mode, gint64 old_mtime)
{
    char path[SEAF_PATH_MAX];
    SeafStat st;
    int len = strlen(name);

    if (!len) {
        seaf_warning ("entry name should not be empty.\n");
        return -1;
    }

    snprintf (path, SEAF_PATH_MAX, "%s/%s", worktree, name);

    if (!S_ISDIR(mode)) {

        if (seaf_stat (path, &st) < 0 || !S_ISREG(st.st_mode)) {
            return 0;
        }


        if (!is_eml_file (name) && (old_mtime != st.st_mtime)) {
            seaf_warning ("File %s is changed. Skip removing the file.\n", path);
            return -1;
        }


        if (seaf_util_unlink (path) < 0) {
            seaf_warning ("Failed to remove %s: %s.\n", path, strerror(errno));
            return -1;
        }
    } else {
        if (seaf_remove_empty_dir (path) < 0) {
            seaf_warning ("Failed to remove dir %s: %s.\n", path, strerror(errno));
            return -1;
        }
    }
    return 0;
}
