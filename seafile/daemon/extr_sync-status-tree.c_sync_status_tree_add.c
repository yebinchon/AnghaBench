
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef size_t guint ;
struct TYPE_17__ {int sync_mgr; } ;
struct TYPE_16__ {int str; } ;
struct TYPE_15__ {int dirents; } ;
struct TYPE_14__ {TYPE_3__* subdir; int mode; } ;
struct TYPE_13__ {char* worktree; TYPE_3__* root; } ;
typedef TYPE_1__ SyncStatusTree ;
typedef TYPE_2__ SyncStatusDirent ;
typedef TYPE_3__ SyncStatusDir ;
typedef TYPE_4__ GString ;


 int S_IFDIR ;
 scalar_t__ S_ISDIR (int ) ;
 int TRUE ;
 int g_hash_table_insert (int ,int ,TYPE_2__*) ;
 TYPE_2__* g_hash_table_lookup (int ,char*) ;
 int g_strdup (char*) ;
 int g_strfreev (char**) ;
 int g_string_append (TYPE_4__*,char*) ;
 int g_string_free (TYPE_4__*,int ) ;
 TYPE_4__* g_string_new (char*) ;
 char** g_strsplit (char const*,char*,int ) ;
 size_t g_strv_length (char**) ;
 TYPE_7__* seaf ;
 int seaf_sync_manager_add_refresh_path (int ,int ) ;
 TYPE_2__* sync_status_dirent_new (char*,int) ;

void
sync_status_tree_add (SyncStatusTree *tree,
                      const char *path,
                      int mode)
{
    char **dnames = ((void*)0);
    guint n, i;
    char *dname;
    SyncStatusDir *dir = tree->root;
    SyncStatusDirent *dirent;
    GString *buf;

    dnames = g_strsplit (path, "/", 0);
    if (!dnames)
        return;
    n = g_strv_length (dnames);

    buf = g_string_new ("");
    g_string_append (buf, tree->worktree);

    for (i = 0; i < n; i++) {
        dname = dnames[i];
        dirent = g_hash_table_lookup (dir->dirents, dname);
        g_string_append (buf, "/");
        g_string_append (buf, dname);
        if (dirent) {
            if (S_ISDIR(dirent->mode)) {
                if (i == (n-1)) {
                    goto out;
                } else {
                    dir = dirent->subdir;
                }
            } else {
                goto out;
            }
        } else {
            if (i == (n-1)) {
                dirent = sync_status_dirent_new (dname, mode);
                g_hash_table_insert (dir->dirents, g_strdup(dname), dirent);
            } else {
                dirent = sync_status_dirent_new (dname, S_IFDIR);
                g_hash_table_insert (dir->dirents, g_strdup(dname), dirent);
                dir = dirent->subdir;
            }



        }
    }

out:
    g_string_free (buf, TRUE);
    g_strfreev (dnames);
}
