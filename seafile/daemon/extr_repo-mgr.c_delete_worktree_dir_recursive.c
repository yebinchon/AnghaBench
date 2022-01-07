
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct index_state {int dummy; } ;
struct TYPE_6__ {scalar_t__ sec; } ;
struct cache_entry {TYPE_1__ ce_mtime; } ;
typedef int gboolean ;
struct TYPE_8__ {int message; } ;
struct TYPE_7__ {scalar_t__ st_mtime; int st_mode; } ;
typedef TYPE_2__ SeafStat ;
typedef TYPE_3__ GError ;
typedef int GDir ;


 int FALSE ;
 int G_NORMALIZE_NFC ;
 scalar_t__ S_ISDIR (int ) ;
 int errno ;
 char* g_build_path (char*,char const*,char*,int *) ;
 int g_dir_close (int *) ;
 int * g_dir_open (char const*,int ,TYPE_3__**) ;
 char* g_dir_read_name (int *) ;
 int g_free (char*) ;
 scalar_t__ g_rmdir (char const*) ;
 char* g_utf8_normalize (char const*,int,int ) ;
 struct cache_entry* index_name_exists (struct index_state*,char*,int ,int ) ;
 int is_built_in_ignored_file (char*) ;
 scalar_t__ lstat (char*,TYPE_2__*) ;
 int seaf_message (char*,char*) ;
 scalar_t__ seaf_util_unlink (char*) ;
 int seaf_warning (char*,char const*,...) ;
 int strerror (int ) ;
 int strlen (char*) ;

__attribute__((used)) static int
delete_worktree_dir_recursive (struct index_state *istate,
                               const char *path,
                               const char *full_path)
{
    GDir *dir;
    const char *dname;
    char *dname_nfc;
    GError *error = ((void*)0);
    char *sub_path, *full_sub_path;
    SeafStat st;
    int ret = 0;
    gboolean builtin_ignored = FALSE;

    dir = g_dir_open (full_path, 0, &error);
    if (!dir) {
        seaf_warning ("Failed to open dir %s: %s.\n", full_path, error->message);
        return -1;
    }

    while ((dname = g_dir_read_name (dir)) != ((void*)0)) {
        dname_nfc = g_utf8_normalize (dname, -1, G_NORMALIZE_NFC);
        sub_path = g_build_path ("/", path, dname_nfc, ((void*)0));
        full_sub_path = g_build_path ("/", full_path, dname_nfc, ((void*)0));
        builtin_ignored = is_built_in_ignored_file (dname_nfc);
        g_free (dname_nfc);

        if (lstat (full_sub_path, &st) < 0) {
            seaf_warning ("Failed to stat %s.\n", full_sub_path);
            g_free (sub_path);
            g_free (full_sub_path);
            ret = -1;
            continue;
        }

        if (S_ISDIR(st.st_mode)) {
            if (delete_worktree_dir_recursive (istate, sub_path, full_sub_path) < 0)
                ret = -1;
        } else {
            struct cache_entry *ce;

            if (!builtin_ignored) {
                ce = index_name_exists (istate, sub_path, strlen(sub_path), 0);
                if (!ce || ce->ce_mtime.sec != st.st_mtime) {
                    seaf_message ("File %s is changed, skip deleting it.\n", full_sub_path);
                    g_free (sub_path);
                    g_free (full_sub_path);
                    ret = -1;
                    continue;
                }
            }


            if (seaf_util_unlink (full_sub_path) < 0) {
                seaf_warning ("Failed to delete file %s: %s.\n",
                              full_sub_path, strerror(errno));
                ret = -1;
            }
        }

        g_free (sub_path);
        g_free (full_sub_path);
    }

    g_dir_close (dir);

    if (ret < 0)
        return ret;

    if (g_rmdir (full_path) < 0) {
        seaf_warning ("Failed to delete dir %s: %s.\n", full_path, strerror(errno));
        ret = -1;
    }

    return ret;
}
