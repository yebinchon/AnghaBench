
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_9__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int gint64 ;
struct TYPE_14__ {int fs_mgr; int commit_mgr; } ;
struct TYPE_13__ {TYPE_1__* data; struct TYPE_13__* next; } ;
struct TYPE_12__ {int root_id; } ;
struct TYPE_11__ {TYPE_4__* entries; } ;
struct TYPE_10__ {char* name; char* modifier; int mtime; } ;
typedef TYPE_1__ SeafDirent ;
typedef TYPE_2__ SeafDir ;
typedef TYPE_3__ SeafCommit ;
typedef TYPE_4__ GList ;


 int g_free (char*) ;
 char* g_path_get_basename (char const*) ;
 char* g_path_get_dirname (char const*) ;
 char* g_strdup (char*) ;
 TYPE_9__* seaf ;
 TYPE_3__* seaf_commit_manager_get_commit (int ,char const*,int,char const*) ;
 int seaf_commit_unref (TYPE_3__*) ;
 int seaf_dir_free (TYPE_2__*) ;
 TYPE_2__* seaf_fs_manager_get_seafdir_by_path (int ,char const*,int,int ,char*,int *) ;
 int seaf_warning (char*,char const*,...) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int
get_file_modifier_mtime_v1 (const char *repo_id, const char *store_id, int version,
                            const char *head, const char *path,
                            char **modifier, gint64 *mtime)
{
    SeafCommit *commit = ((void*)0);
    SeafDir *dir = ((void*)0);
    SeafDirent *dent = ((void*)0);
    int ret = 0;

    commit = seaf_commit_manager_get_commit (seaf->commit_mgr,
                                             repo_id, version,
                                             head);
    if (!commit) {
        seaf_warning ("Failed to get commit %s.\n", head);
        return -1;
    }

    char *parent = g_path_get_dirname (path);
    if (strcmp(parent, ".") == 0) {
        g_free (parent);
        parent = g_strdup("");
    }
    char *filename = g_path_get_basename (path);

    dir = seaf_fs_manager_get_seafdir_by_path (seaf->fs_mgr,
                                               store_id, version,
                                               commit->root_id,
                                               parent, ((void*)0));
    if (!dir) {
        seaf_warning ("dir %s doesn't exist in repo %s.\n", parent, repo_id);
        ret = -1;
        goto out;
    }

    GList *p;
    for (p = dir->entries; p; p = p->next) {
        SeafDirent *d = p->data;
        if (strcmp (d->name, filename) == 0) {
            dent = d;
            break;
        }
    }

    if (!dent) {
        goto out;
    }

    *modifier = g_strdup(dent->modifier);
    *mtime = dent->mtime;

out:
    g_free (parent);
    g_free (filename);
    seaf_commit_unref (commit);
    seaf_dir_free (dir);

    return ret;
}
