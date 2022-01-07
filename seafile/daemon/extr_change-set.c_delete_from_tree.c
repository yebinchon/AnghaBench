
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int gboolean ;
struct TYPE_13__ {int fs_mgr; } ;
struct TYPE_12__ {char* repo_id; TYPE_2__* tree_root; } ;
struct TYPE_11__ {int dents; int version; } ;
struct TYPE_10__ {int mode; TYPE_2__* subdir; int id; } ;
typedef int SeafDir ;
typedef TYPE_1__ ChangeSetDirent ;
typedef TYPE_2__ ChangeSetDir ;
typedef TYPE_3__ ChangeSet ;


 int FALSE ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISREG (int ) ;
 int TRUE ;
 TYPE_1__* g_hash_table_lookup (int ,char*) ;
 scalar_t__ g_hash_table_size (int ) ;
 int g_strfreev (char**) ;
 char** g_strsplit (char const*,char*,int ) ;
 int g_strv_length (char**) ;
 int remove_dent_from_dir (TYPE_2__*,char*) ;
 TYPE_5__* seaf ;
 int seaf_dir_free (int *) ;
 TYPE_2__* seaf_dir_to_changeset_dir (int *) ;
 int * seaf_fs_manager_get_seafdir (int ,char*,int ,int ) ;
 int seaf_warning (char*,char*,int ) ;

__attribute__((used)) static ChangeSetDirent *
delete_from_tree (ChangeSet *changeset,
                  const char *path,
                  gboolean *parent_empty)
{
    char *repo_id = changeset->repo_id;
    ChangeSetDir *root = changeset->tree_root;
    char **parts, *dname;
    int n, i;
    ChangeSetDir *dir;
    ChangeSetDirent *dent, *ret = ((void*)0);
    SeafDir *seaf_dir;

    *parent_empty = FALSE;

    parts = g_strsplit (path, "/", 0);
    n = g_strv_length(parts);
    dir = root;
    for (i = 0; i < n; i++) {
        dname = parts[i];

        dent = g_hash_table_lookup (dir->dents, dname);
        if (!dent)
            break;

        if (S_ISDIR(dent->mode)) {
            if (i == (n-1)) {

                remove_dent_from_dir (dir, dname);
                if (g_hash_table_size (dir->dents) == 0)
                    *parent_empty = TRUE;
                ret = dent;
                break;
            }

            if (!dent->subdir) {
                seaf_dir = seaf_fs_manager_get_seafdir(seaf->fs_mgr,
                                                       repo_id,
                                                       root->version,
                                                       dent->id);
                if (!seaf_dir) {
                    seaf_warning ("Failed to load seafdir %s:%s\n",
                                  repo_id, dent->id);
                    break;
                }
                dent->subdir = seaf_dir_to_changeset_dir (seaf_dir);
                seaf_dir_free (seaf_dir);
            }
            dir = dent->subdir;
        } else if (S_ISREG(dent->mode)) {
            if (i == (n-1)) {

                remove_dent_from_dir (dir, dname);
                if (g_hash_table_size (dir->dents) == 0)
                    *parent_empty = TRUE;
                ret = dent;
                break;
            }
        }
    }

    g_strfreev (parts);
    return ret;
}
