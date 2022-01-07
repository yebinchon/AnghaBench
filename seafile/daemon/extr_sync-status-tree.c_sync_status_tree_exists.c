
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t guint ;
struct TYPE_8__ {int dirents; } ;
struct TYPE_7__ {TYPE_3__* subdir; int mode; } ;
struct TYPE_6__ {TYPE_3__* root; } ;
typedef TYPE_1__ SyncStatusTree ;
typedef TYPE_2__ SyncStatusDirent ;
typedef TYPE_3__ SyncStatusDir ;


 scalar_t__ S_ISDIR (int ) ;
 TYPE_2__* g_hash_table_lookup (int ,char*) ;
 int g_strfreev (char**) ;
 char** g_strsplit (char const*,char*,int ) ;
 size_t g_strv_length (char**) ;

int
sync_status_tree_exists (SyncStatusTree *tree,
                         const char *path)
{
    char **dnames = ((void*)0);
    guint n, i;
    char *dname;
    SyncStatusDir *dir = tree->root;
    SyncStatusDirent *dirent;
    int ret = 0;

    dnames = g_strsplit (path, "/", 0);
    if (!dnames)
        return ret;
    n = g_strv_length (dnames);

    for (i = 0; i < n; i++) {
        dname = dnames[i];
        dirent = g_hash_table_lookup (dir->dirents, dname);
        if (dirent) {
            if (S_ISDIR(dirent->mode)) {
                if (i == (n-1)) {
                    ret = 1;
                    goto out;
                } else {
                    dir = dirent->subdir;
                }
            } else {
                if (i == (n-1)) {
                    ret = 1;
                    goto out;
                } else {
                    goto out;
                }
            }
        } else {
            goto out;
        }
    }

out:
    g_strfreev (dnames);
    return ret;
}
