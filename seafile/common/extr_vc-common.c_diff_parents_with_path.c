
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int fs_mgr; int commit_mgr; } ;
struct TYPE_6__ {char const* root_id; int commit_id; scalar_t__ second_parent_id; int version; int repo_id; scalar_t__ parent_id; } ;
typedef TYPE_1__ SeafCommit ;
typedef int GError ;


 char* EMPTY_SHA1 ;
 int SEAFILE_DOMAIN ;
 int SEAF_ERR_GENERAL ;
 int g_free (char*) ;
 int g_set_error (int **,int ,int ,char*) ;
 int g_warning (char*,scalar_t__) ;
 int memcpy (char*,int ,int) ;
 TYPE_4__* seaf ;
 TYPE_1__* seaf_commit_manager_get_commit (int ,int ,int ,scalar_t__) ;
 int seaf_commit_unref (TYPE_1__*) ;
 char* seaf_fs_manager_path_to_obj_id (int ,char const*,int,char const*,char const*,int *,int **) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int
diff_parents_with_path (SeafCommit *commit,
                        const char *repo_id,
                        const char *store_id,
                        int version,
                        const char *path,
                        const char *file_id,
                        char *parent,
                        GError **error)
{
    SeafCommit *p1 = ((void*)0), *p2 = ((void*)0);
    char *file_id_p1 = ((void*)0), *file_id_p2 = ((void*)0);
    int ret = 0;

    p1 = seaf_commit_manager_get_commit (seaf->commit_mgr,
                                         commit->repo_id,
                                         commit->version,
                                         commit->parent_id);
    if (!p1) {
        g_warning ("Failed to find commit %s.\n", commit->parent_id);
        g_set_error (error, SEAFILE_DOMAIN, SEAF_ERR_GENERAL, " ");
        return 0;
    }

    if (strcmp (p1->root_id, EMPTY_SHA1) == 0) {
        seaf_commit_unref (p1);
        return 1;
    }

    if (commit->second_parent_id) {
        p2 = seaf_commit_manager_get_commit (seaf->commit_mgr,
                                             commit->repo_id,
                                             commit->version,
                                             commit->second_parent_id);
        if (!p2) {
            g_warning ("Failed to find commit %s.\n", commit->second_parent_id);
            seaf_commit_unref (p1);
            g_set_error (error, SEAFILE_DOMAIN, SEAF_ERR_GENERAL, " ");
            return 0;
        }
    }

    if (!p2) {
        file_id_p1 = seaf_fs_manager_path_to_obj_id (seaf->fs_mgr,
                                                     store_id,
                                                     version,
                                                     p1->root_id, path,
                                                     ((void*)0),
                                                     error);
        if (*error)
            goto out;
        if (!file_id_p1 || strcmp (file_id, file_id_p1) != 0)
            ret = 1;
        else
            memcpy (parent, p1->commit_id, 41);
    } else {
        file_id_p1 = seaf_fs_manager_path_to_obj_id (seaf->fs_mgr,
                                                     store_id,
                                                     version,
                                                     p1->root_id, path,
                                                     ((void*)0), error);
        if (*error)
            goto out;
        file_id_p2 = seaf_fs_manager_path_to_obj_id (seaf->fs_mgr,
                                                     store_id,
                                                     version,
                                                     p2->root_id, path,
                                                     ((void*)0), error);
        if (*error)
            goto out;

        if (file_id_p1 && file_id_p2) {
            if (strcmp(file_id, file_id_p1) != 0 &&
                strcmp(file_id, file_id_p2) != 0)
                ret = 1;
            else if (strcmp(file_id, file_id_p1) == 0)
                memcpy (parent, p1->commit_id, 41);
            else
                memcpy (parent, p2->commit_id, 41);
        } else if (file_id_p1 && !file_id_p2) {
            if (strcmp(file_id, file_id_p1) != 0)
                ret = 1;
            else
                memcpy (parent, p1->commit_id, 41);
        } else if (!file_id_p1 && file_id_p2) {
            if (strcmp(file_id, file_id_p2) != 0)
                ret = 1;
            else
                memcpy (parent, p2->commit_id, 41);
        } else {
            ret = 1;
        }
    }

out:
    g_free (file_id_p1);
    g_free (file_id_p2);

    if (p1)
        seaf_commit_unref (p1);
    if (p2)
        seaf_commit_unref (p2);

    return ret;
}
