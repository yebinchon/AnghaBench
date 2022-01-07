
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct index_state {int dummy; } ;
typedef int options ;
typedef int gint64 ;
typedef scalar_t__ gboolean ;
struct TYPE_9__ {int new_path; int path; } ;
typedef TYPE_1__ WTEvent ;
struct TYPE_12__ {int filelock_mgr; int sync_mgr; } ;
struct TYPE_11__ {int changeset; int is_repo_ro; int * fset; } ;
struct TYPE_10__ {int worktree; int email; int version; int id; int changeset; int is_readonly; } ;
typedef int SeafileCrypt ;
typedef TYPE_2__ SeafRepo ;
typedef int LockedFileSet ;
typedef int GList ;
typedef TYPE_3__ AddOptions ;


 int DIFF_STATUS_DELETED ;
 int DIFF_STATUS_RENAMED ;
 scalar_t__ FALSE ;
 int add_recursive (int ,int ,int ,struct index_state*,int ,int ,int *,scalar_t__,int *,int *,int *,TYPE_3__*) ;
 int add_to_changeset (int ,int ,int *,int *,int *,int ,int ) ;
 scalar_t__ check_full_path_ignore (int ,int ,int *) ;
 scalar_t__ check_locked_file_before_remove (int *,int ) ;
 int ignore_xlsx_update (int ,int ) ;
 int is_path_writable (int ,int ,int ) ;
 int is_seafile_backup_file (int ) ;
 int memset (TYPE_3__*,int ,int) ;
 int remove_from_changeset (int ,int ,int ,scalar_t__,int *) ;
 int remove_from_index_with_prefix (struct index_state*,int ,scalar_t__*) ;
 int rename_index_entries (struct index_state*,int ,int ,scalar_t__*,int *,int *) ;
 int scan_subtree_for_deletion (int ,struct index_state*,int ,int ,int *,int *,int ,int **,int ) ;
 TYPE_4__* seaf ;
 int seaf_debug (char*,int ,...) ;
 scalar_t__ seaf_filelock_manager_is_file_locked (int ,int ,int ) ;
 int seaf_sync_manager_delete_active_path (int ,int ,int ) ;
 int try_add_empty_parent_dir_entry_from_wt (int ,struct index_state*,int *,int ) ;

__attribute__((used)) static void
handle_rename (SeafRepo *repo, struct index_state *istate,
               SeafileCrypt *crypt, GList *ignore_list,
               LockedFileSet *fset,
               WTEvent *event, GList **scanned_del_dirs,
               gint64 *total_size)
{
    gboolean not_found, src_ignored, dst_ignored;

    seaf_sync_manager_delete_active_path (seaf->sync_mgr, repo->id, event->path);

    if (!is_path_writable(repo->id,
                          repo->is_readonly, event->path) ||
        !is_path_writable(repo->id,
                          repo->is_readonly, event->new_path)) {
        seaf_debug ("Rename: %s or %s is not writable, ignore.\n",
                    event->path, event->new_path);
        return;
    }

    if (seaf_filelock_manager_is_file_locked (seaf->filelock_mgr,
                                              repo->id, event->path)) {
        seaf_debug ("Rename: %s is locked on server, ignore.\n", event->path);


        return;
    }

    if (seaf_filelock_manager_is_file_locked (seaf->filelock_mgr,
                                              repo->id, event->new_path)) {
        seaf_debug ("Rename: %s is locked on server, ignore.\n", event->new_path);


        return;
    }

    src_ignored = check_full_path_ignore(repo->worktree, event->path, ignore_list);
    dst_ignored = check_full_path_ignore(repo->worktree, event->new_path, ignore_list);


    if (dst_ignored) {
        if (!src_ignored &&
            !is_seafile_backup_file (event->new_path) &&
            check_locked_file_before_remove (fset, event->path)) {
            not_found = FALSE;
            remove_from_index_with_prefix (istate, event->path, &not_found);
            if (not_found)
                scan_subtree_for_deletion (repo->id,
                                           istate,
                                           repo->worktree, event->path,
                                           ignore_list, fset,
                                           repo->is_readonly,
                                           scanned_del_dirs,
                                           repo->changeset);

            remove_from_changeset (repo->changeset,
                                   DIFF_STATUS_DELETED,
                                   event->path,
                                   FALSE,
                                   ((void*)0));
        }
        return;
    }



    if (!src_ignored && !ignore_xlsx_update (event->path, event->new_path) &&
        check_locked_file_before_remove (fset, event->path)) {
        not_found = FALSE;
        rename_index_entries (istate, event->path, event->new_path, &not_found,
                              ((void*)0), ((void*)0));
        if (not_found)
            scan_subtree_for_deletion (repo->id,
                                       istate,
                                       repo->worktree, event->path,
                                       ignore_list, fset,
                                       repo->is_readonly,
                                       scanned_del_dirs,
                                       repo->changeset);


        try_add_empty_parent_dir_entry_from_wt (repo->worktree,
                                                istate,
                                                ignore_list,
                                                event->path);

        add_to_changeset (repo->changeset,
                          DIFF_STATUS_RENAMED,
                          ((void*)0),
                          ((void*)0),
                          ((void*)0),
                          event->path,
                          event->new_path);
    }

    AddOptions options;
    memset (&options, 0, sizeof(options));
    options.fset = fset;
    options.is_repo_ro = repo->is_readonly;
    options.changeset = repo->changeset;
    add_recursive (repo->id, repo->version, repo->email,
                   istate, repo->worktree, event->new_path,
                   crypt, FALSE, ignore_list,
                   total_size, ((void*)0), &options);
}
