
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;
typedef struct TYPE_23__ TYPE_11__ ;


struct index_state {int dummy; } ;
typedef int gint64 ;
typedef void* gboolean ;
struct TYPE_24__ {void* partial_commit; int q_lock; int event_q; } ;
typedef TYPE_1__ WTStatus ;
struct TYPE_25__ {int ev_type; int path; } ;
typedef TYPE_2__ WTEvent ;
struct TYPE_26__ {int id; int worktree; int is_readonly; int changeset; int name; } ;
struct TYPE_23__ {int filelock_mgr; int sync_mgr; int wt_monitor; } ;
typedef int SeafileCrypt ;
typedef TYPE_3__ SeafRepo ;
typedef int LockedFileSet ;
typedef int GList ;


 int DIFF_STATUS_DELETED ;
 void* FALSE ;
 int SYNC_ERROR_ID_UPDATE_TO_READ_ONLY_REPO ;






 int check_full_path_ignore (int ,int ,int *) ;
 int check_locked_file_before_remove (int *,int ) ;
 int g_free (char*) ;
 int g_list_free_full (int *,int (*) (char*)) ;
 TYPE_2__* g_queue_peek_head (int ) ;
 TYPE_2__* g_queue_peek_tail (int ) ;
 TYPE_2__* g_queue_pop_head (int ) ;
 int handle_add_files (TYPE_3__*,struct index_state*,int *,int *,int *,TYPE_1__*,TYPE_2__*,int **,int *) ;
 int handle_rename (TYPE_3__*,struct index_state*,int *,int *,int *,TYPE_2__*,int **,int *) ;
 int is_office_lock_file (int ,int ,char**) ;
 int is_path_writable (int ,int ,int ) ;
 int lock_office_file_on_server (TYPE_3__*,char*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int remove_from_changeset (int ,int ,int ,void*,int *) ;
 int remove_from_index_with_prefix (struct index_state*,int ,void**) ;
 int scan_subtree_for_deletion (int ,struct index_state*,int ,int ,int *,int *,int ,int **,int ) ;
 int scan_worktree_for_changes (struct index_state*,TYPE_3__*,int *,int *,int *) ;
 TYPE_11__* seaf ;
 int seaf_debug (char*,int ) ;
 int seaf_filelock_manager_is_file_locked (int ,int ,int ) ;
 int seaf_message (char*,int ) ;
 int seaf_sync_manager_delete_active_path (int ,int ,int ) ;
 int seaf_warning (char*,...) ;
 TYPE_1__* seaf_wt_monitor_get_worktree_status (int ,int ) ;
 int send_file_sync_error_notification (int ,int ,int ,int ) ;
 int strcmp (int ,int ) ;
 int string_list_free (int *) ;
 int try_add_empty_parent_dir_entry_from_wt (int ,struct index_state*,int *,int ) ;
 int unlock_office_file_on_server (TYPE_3__*,char*) ;
 int update_attributes (TYPE_3__*,struct index_state*,int ,int ) ;
 int update_path_sync_status (TYPE_3__*,TYPE_1__*,struct index_state*,int *) ;
 int wt_event_free (TYPE_2__*) ;
 int wt_status_unref (TYPE_1__*) ;

__attribute__((used)) static int
apply_worktree_changes_to_index (SeafRepo *repo, struct index_state *istate,
                                 SeafileCrypt *crypt, GList *ignore_list,
                                 LockedFileSet *fset)
{
    WTStatus *status;
    WTEvent *event, *next_event;
    gboolean not_found;




    status = seaf_wt_monitor_get_worktree_status (seaf->wt_monitor, repo->id);
    if (!status) {
        seaf_warning ("Can't find worktree status for repo %s(%.8s).\n",
                      repo->name, repo->id);
        return -1;
    }

    update_path_sync_status (repo, status, istate, ignore_list);

    GList *scanned_dirs = ((void*)0), *scanned_del_dirs = ((void*)0);

    WTEvent *last_event;

    pthread_mutex_lock (&status->q_lock);
    last_event = g_queue_peek_tail (status->event_q);
    pthread_mutex_unlock (&status->q_lock);

    if (!last_event) {
        seaf_message ("All events are processed for repo %s.\n", repo->id);
        status->partial_commit = FALSE;
        goto out;
    }

    gint64 total_size = 0;

    while (1) {
        pthread_mutex_lock (&status->q_lock);
        event = g_queue_pop_head (status->event_q);
        next_event = g_queue_peek_head (status->event_q);
        pthread_mutex_unlock (&status->q_lock);
        if (!event)
            break;
        if (event->ev_type != 132) {
            g_list_free_full (scanned_dirs, g_free);
            scanned_dirs = ((void*)0);
        }

        switch (event->ev_type) {
        case 132:



            if (next_event &&
                next_event->ev_type == event->ev_type &&
                strcmp (next_event->path, event->path) == 0)
                break;





            if (!is_path_writable(repo->id,
                                  repo->is_readonly, event->path)) {
                send_file_sync_error_notification (repo->id, repo->name, event->path,
                                                   SYNC_ERROR_ID_UPDATE_TO_READ_ONLY_REPO);
                seaf_debug ("%s is not writable, ignore.\n", event->path);
                break;
            }
            if (handle_add_files (repo, istate, crypt, ignore_list,
                                  fset,
                                  status, event,
                                  &scanned_dirs, &total_size))
                goto out;

            break;
        case 128:
            if (handle_add_files (repo, istate, crypt, ignore_list,
                                  fset,
                                  status, event,
                                  &scanned_dirs, &total_size))
                goto out;

            break;
        case 131:
            seaf_sync_manager_delete_active_path (seaf->sync_mgr,
                                                  repo->id,
                                                  event->path);
            if (check_full_path_ignore(repo->worktree, event->path, ignore_list))
                break;

            if (!is_path_writable(repo->id,
                                  repo->is_readonly, event->path)) {
                seaf_debug ("%s is not writable, ignore.\n", event->path);
                break;
            }

            if (seaf_filelock_manager_is_file_locked (seaf->filelock_mgr,
                                                      repo->id, event->path)) {
                seaf_debug ("Delete: %s is locked on server, ignore.\n", event->path);


                break;
            }

            if (check_locked_file_before_remove (fset, event->path)) {
                not_found = FALSE;
                remove_from_index_with_prefix (istate, event->path, &not_found);
                if (not_found)
                    scan_subtree_for_deletion (repo->id,
                                               istate,
                                               repo->worktree, event->path,
                                               ignore_list, fset,
                                               repo->is_readonly,
                                               &scanned_del_dirs,
                                               repo->changeset);

                remove_from_changeset (repo->changeset,
                                       DIFF_STATUS_DELETED,
                                       event->path,
                                       FALSE,
                                       ((void*)0));

                try_add_empty_parent_dir_entry_from_wt (repo->worktree,
                                                        istate,
                                                        ignore_list,
                                                        event->path);
            }
            break;
        case 129:
            handle_rename (repo, istate, crypt, ignore_list, fset, event, &scanned_del_dirs, &total_size);
            break;
        case 133:
            if (!is_path_writable(repo->id,
                                  repo->is_readonly, event->path)) {
                seaf_debug ("%s is not writable, ignore.\n", event->path);
                break;
            }
            update_attributes (repo, istate, repo->worktree, event->path);
            break;
        case 130:
            seaf_warning ("Kernel event queue overflowed, fall back to scan.\n");
            scan_worktree_for_changes (istate, repo, crypt, ignore_list, fset);
            break;
        }

        if (event == last_event) {
            wt_event_free (event);
            seaf_message ("All events are processed for repo %s.\n", repo->id);
            status->partial_commit = FALSE;
            break;
        } else
            wt_event_free (event);
    }

out:
    wt_status_unref (status);
    string_list_free (scanned_dirs);
    string_list_free (scanned_del_dirs);

    return 0;
}
