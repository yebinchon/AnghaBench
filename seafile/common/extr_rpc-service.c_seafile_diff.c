
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_14__ {int repo_mgr; } ;
struct TYPE_13__ {int new_name; int name; int status; } ;
struct TYPE_12__ {TYPE_2__* data; struct TYPE_12__* next; } ;
typedef int SeafileDiffEntry ;
typedef int SeafRepo ;
typedef TYPE_1__ GList ;
typedef int GError ;
typedef TYPE_2__ DiffEntry ;


 int SEAFILE_DOMAIN ;
 int SEAFILE_TYPE_DIFF_ENTRY ;
 int SEAF_ERR_BAD_ARGS ;
 int diff_entry_free (TYPE_2__*) ;
 int g_free (char*) ;
 int g_list_free (TYPE_1__*) ;
 TYPE_1__* g_list_prepend (TYPE_1__*,int *) ;
 TYPE_1__* g_list_reverse (TYPE_1__*) ;
 int * g_object_new (int ,char*,int ,char*,int ,char*,int ,int *) ;
 int g_set_error (int **,int ,int,char*,...) ;
 int get_diff_status_str (int ) ;
 int is_object_id_valid (char const*) ;
 int is_uuid_valid (char const*) ;
 TYPE_5__* seaf ;
 TYPE_1__* seaf_repo_diff (int *,char const*,char const*,int,char**) ;
 int * seaf_repo_manager_get_repo (int ,char const*) ;

GList *
seafile_diff (const char *repo_id, const char *arg1, const char *arg2, int fold_dir_diff, GError **error)
{
    SeafRepo *repo;
    char *err_msgs = ((void*)0);
    GList *diff_entries, *p;
    GList *ret = ((void*)0);

    if (!repo_id || !arg1 || !arg2) {
        g_set_error (error, SEAFILE_DOMAIN, SEAF_ERR_BAD_ARGS, "Argument should not be null");
        return ((void*)0);
    }

    if (!is_uuid_valid (repo_id)) {
        g_set_error (error, SEAFILE_DOMAIN, SEAF_ERR_BAD_ARGS, "Invalid repo id");
        return ((void*)0);
    }

    if ((arg1[0] != 0 && !is_object_id_valid (arg1)) || !is_object_id_valid(arg2)) {
        g_set_error (error, SEAFILE_DOMAIN, SEAF_ERR_BAD_ARGS, "Invalid commit id");
        return ((void*)0);
    }

    repo = seaf_repo_manager_get_repo (seaf->repo_mgr, repo_id);
    if (!repo) {
        g_set_error (error, SEAFILE_DOMAIN, SEAF_ERR_BAD_ARGS, "No such repository");
        return ((void*)0);
    }

    diff_entries = seaf_repo_diff (repo, arg1, arg2, fold_dir_diff, &err_msgs);
    if (err_msgs) {
        g_set_error (error, SEAFILE_DOMAIN, -1, "%s", err_msgs);
        g_free (err_msgs);
        return ((void*)0);
    }

    for (p = diff_entries; p != ((void*)0); p = p->next) {
        DiffEntry *de = p->data;
        SeafileDiffEntry *entry = g_object_new (
            SEAFILE_TYPE_DIFF_ENTRY,
            "status", get_diff_status_str(de->status),
            "name", de->name,
            "new_name", de->new_name,
            ((void*)0));
        ret = g_list_prepend (ret, entry);
    }

    for (p = diff_entries; p != ((void*)0); p = p->next) {
        DiffEntry *de = p->data;
        diff_entry_free (de);
    }
    g_list_free (diff_entries);

    return g_list_reverse (ret);
}
