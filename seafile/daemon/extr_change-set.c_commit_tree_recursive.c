
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef TYPE_1__* gpointer ;
typedef int gint64 ;
struct TYPE_16__ {int fs_mgr; } ;
struct TYPE_15__ {int version; int dir_id; int dents; } ;
struct TYPE_14__ {char* dir_id; } ;
struct TYPE_13__ {int mtime; int id; TYPE_4__* subdir; } ;
typedef TYPE_2__ SeafDir ;
typedef int GHashTableIter ;
typedef TYPE_1__ ChangeSetDirent ;
typedef TYPE_4__ ChangeSetDir ;


 TYPE_2__* changeset_dir_to_seaf_dir (TYPE_4__*) ;
 int g_free (char*) ;
 int g_hash_table_iter_init (int *,int ) ;
 scalar_t__ g_hash_table_iter_next (int *,TYPE_1__**,TYPE_1__**) ;
 char* g_strdup (char*) ;
 int memcpy (int ,char*,int) ;
 TYPE_7__* seaf ;
 int seaf_dir_free (TYPE_2__*) ;
 scalar_t__ seaf_dir_save (int ,char const*,int ,TYPE_2__*) ;
 int seaf_fs_manager_object_exists (int ,char const*,int ,char*) ;
 int seaf_warning (char*,char*,char const*) ;

__attribute__((used)) static char *
commit_tree_recursive (const char *repo_id, ChangeSetDir *dir, gint64 *new_mtime)
{
    ChangeSetDirent *dent;
    GHashTableIter iter;
    gpointer key, value;
    char *new_id;
    gint64 subdir_new_mtime;
    gint64 dir_mtime = 0;
    SeafDir *seaf_dir;
    char *ret = ((void*)0);

    g_hash_table_iter_init (&iter, dir->dents);
    while (g_hash_table_iter_next (&iter, &key, &value)) {
        dent = value;
        if (dent->subdir) {
            new_id = commit_tree_recursive (repo_id, dent->subdir, &subdir_new_mtime);
            if (!new_id)
                return ((void*)0);

            memcpy (dent->id, new_id, 40);
            dent->mtime = subdir_new_mtime;
            g_free (new_id);
        }
        if (dir_mtime < dent->mtime)
            dir_mtime = dent->mtime;
    }

    seaf_dir = changeset_dir_to_seaf_dir (dir);

    memcpy (dir->dir_id, seaf_dir->dir_id, 40);

    if (!seaf_fs_manager_object_exists (seaf->fs_mgr,
                                        repo_id, dir->version,
                                        seaf_dir->dir_id)) {
        if (seaf_dir_save (seaf->fs_mgr, repo_id, dir->version, seaf_dir) < 0) {
            seaf_warning ("Failed to save dir object %s to repo %s.\n",
                          seaf_dir->dir_id, repo_id);
            goto out;
        }
    }

    ret = g_strdup(seaf_dir->dir_id);

out:
    if (ret != ((void*)0))
        *new_mtime = dir_mtime;

    seaf_dir_free (seaf_dir);
    return ret;
}
