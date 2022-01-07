
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int guint32 ;
struct TYPE_9__ {TYPE_1__* data; struct TYPE_9__* next; } ;
struct TYPE_8__ {TYPE_3__* entries; } ;
struct TYPE_7__ {char const* id; int mode; int name; } ;
typedef int SeafFSManager ;
typedef TYPE_1__ SeafDirent ;
typedef TYPE_2__ SeafDir ;
typedef TYPE_3__ GList ;
typedef int GError ;


 int SEAFILE_DOMAIN ;
 int SEAF_ERR_GENERAL ;
 int SEAF_ERR_PATH_NO_EXIST ;
 int S_IFDIR ;
 int g_error_matches (int *,int ,int ) ;
 int g_free (char*) ;
 int g_propagate_error (int **,int *) ;
 int g_set_error (int **,int ,int ,char*) ;
 char* g_strdup (char const*) ;
 int is_object_id_valid (char const*) ;
 int seaf_dir_free (TYPE_2__*) ;
 TYPE_2__* seaf_fs_manager_get_seafdir (int *,char const*,int,char const*) ;
 TYPE_2__* seaf_fs_manager_get_seafdir_by_path (int *,char const*,int,char const*,char*,int **) ;
 int seaf_warning (char*,char const*) ;
 scalar_t__ strcmp (int ,char*) ;
 int strlen (char*) ;
 char* strrchr (char*,char) ;

char *
seaf_fs_manager_path_to_obj_id (SeafFSManager *mgr,
                                const char *repo_id,
                                int version,
                                const char *root_id,
                                const char *path,
                                guint32 *mode,
                                GError **error)
{
    char *copy = g_strdup (path);
    int off = strlen(copy) - 1;
    char *slash, *name;
    SeafDir *base_dir = ((void*)0);
    SeafDirent *dent;
    GList *p;
    char *obj_id = ((void*)0);

    while (off >= 0 && copy[off] == '/')
        copy[off--] = 0;

    if (strlen(copy) == 0) {

        if (mode) {
            *mode = S_IFDIR;
        }
        obj_id = g_strdup(root_id);
        goto out;
    }

    slash = strrchr (copy, '/');
    if (!slash) {
        base_dir = seaf_fs_manager_get_seafdir (mgr, repo_id, version, root_id);
        if (!base_dir) {
            seaf_warning ("Failed to find root dir %s.\n", root_id);
            g_set_error (error, SEAFILE_DOMAIN, SEAF_ERR_GENERAL, " ");
            goto out;
        }
        name = copy;
    } else {
        *slash = 0;
        name = slash + 1;
        GError *tmp_error = ((void*)0);
        base_dir = seaf_fs_manager_get_seafdir_by_path (mgr,
                                                        repo_id,
                                                        version,
                                                        root_id,
                                                        copy,
                                                        &tmp_error);
        if (tmp_error &&
            !g_error_matches(tmp_error,
                             SEAFILE_DOMAIN,
                             SEAF_ERR_PATH_NO_EXIST)) {
            seaf_warning ("Failed to get dir for %s.\n", copy);
            g_propagate_error (error, tmp_error);
            goto out;
        }


        if (!base_dir) {
            g_propagate_error (error, tmp_error);
            goto out;
        }
    }

    for (p = base_dir->entries; p != ((void*)0); p = p->next) {
        dent = p->data;

        if (!is_object_id_valid (dent->id))
            continue;

        if (strcmp (dent->name, name) == 0) {
            obj_id = g_strdup (dent->id);
            if (mode) {
                *mode = dent->mode;
            }
            break;
        }
    }

out:
    if (base_dir)
        seaf_dir_free (base_dir);
    g_free (copy);
    return obj_id;
}
