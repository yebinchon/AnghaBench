#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;
typedef  struct TYPE_23__   TYPE_11__ ;

/* Type definitions */
struct index_state {int dummy; } ;
typedef  int /*<<< orphan*/  gint64 ;
typedef  void* gboolean ;
struct TYPE_24__ {void* partial_commit; int /*<<< orphan*/  q_lock; int /*<<< orphan*/  event_q; } ;
typedef  TYPE_1__ WTStatus ;
struct TYPE_25__ {int ev_type; int /*<<< orphan*/  path; } ;
typedef  TYPE_2__ WTEvent ;
struct TYPE_26__ {int /*<<< orphan*/  id; int /*<<< orphan*/  worktree; int /*<<< orphan*/  is_readonly; int /*<<< orphan*/  changeset; int /*<<< orphan*/  name; } ;
struct TYPE_23__ {int /*<<< orphan*/  filelock_mgr; int /*<<< orphan*/  sync_mgr; int /*<<< orphan*/  wt_monitor; } ;
typedef  int /*<<< orphan*/  SeafileCrypt ;
typedef  TYPE_3__ SeafRepo ;
typedef  int /*<<< orphan*/  LockedFileSet ;
typedef  int /*<<< orphan*/  GList ;

/* Variables and functions */
 int /*<<< orphan*/  DIFF_STATUS_DELETED ; 
 void* FALSE ; 
 int /*<<< orphan*/  SYNC_ERROR_ID_UPDATE_TO_READ_ONLY_REPO ; 
#define  WT_EVENT_ATTRIB 133 
#define  WT_EVENT_CREATE_OR_UPDATE 132 
#define  WT_EVENT_DELETE 131 
#define  WT_EVENT_OVERFLOW 130 
#define  WT_EVENT_RENAME 129 
#define  WT_EVENT_SCAN_DIR 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (char*)) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,struct index_state*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,struct index_state*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct index_state*,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,struct index_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct index_state*,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_11__* seaf ; 
 int /*<<< orphan*/  FUNC18 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (char*,...) ; 
 TYPE_1__* FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,struct index_state*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC29 (TYPE_3__*,struct index_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (TYPE_3__*,TYPE_1__*,struct index_state*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC31 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC32 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC33 (SeafRepo *repo, struct index_state *istate,
                                 SeafileCrypt *crypt, GList *ignore_list,
                                 LockedFileSet *fset)
{
    WTStatus *status;
    WTEvent *event, *next_event;
    gboolean not_found;
#if defined WIN32 || defined __APPLE__
    char *office_path = NULL;
#endif

    status = FUNC23 (seaf->wt_monitor, repo->id);
    if (!status) {
        FUNC22 ("Can't find worktree status for repo %s(%.8s).\n",
                      repo->name, repo->id);
        return -1;
    }

    FUNC30 (repo, status, istate, ignore_list);

    GList *scanned_dirs = NULL, *scanned_del_dirs = NULL;

    WTEvent *last_event;

    FUNC12 (&status->q_lock);
    last_event = FUNC5 (status->event_q);
    FUNC13 (&status->q_lock);

    if (!last_event) {
        FUNC20 ("All events are processed for repo %s.\n", repo->id);
        status->partial_commit = FALSE;
        goto out;
    }

    gint64 total_size = 0;

    while (1) {
        FUNC12 (&status->q_lock);
        event = FUNC6 (status->event_q);
        next_event = FUNC4 (status->event_q);
        FUNC13 (&status->q_lock);
        if (!event)
            break;

        /* Scanned dirs list is used to avoid redundant scan of consecutive
           CREATE_OR_UPDATE events. When we see other events, we should
           clear the list. Otherwise in some cases we'll get wrong result.
           For example, the following sequence (run with a script):
           1. Add a dir with files
           2. Delete the dir with files
           3. Add back the same dir again.
        */
        if (event->ev_type != WT_EVENT_CREATE_OR_UPDATE) {
            FUNC3 (scanned_dirs, g_free);
            scanned_dirs = NULL;
        }

        switch (event->ev_type) {
        case WT_EVENT_CREATE_OR_UPDATE:
            /* If consecutive CREATE_OR_UPDATE events present
               in the event queue, only process the last one.
            */
            if (next_event &&
                next_event->ev_type == event->ev_type &&
                FUNC25 (next_event->path, event->path) == 0)
                break;

            /* CREATE_OR_UPDATE event tells us the exact path of changed file/dir.
             * If the event path is not writable, we don't need to check the paths
             * under the event path.
             */
            if (!FUNC10(repo->id,
                                  repo->is_readonly, event->path)) {
                FUNC24 (repo->id, repo->name, event->path,
                                                   SYNC_ERROR_ID_UPDATE_TO_READ_ONLY_REPO);
                FUNC18 ("%s is not writable, ignore.\n", event->path);
                break;
            }

#if defined WIN32 || defined __APPLE__
            office_path = NULL;
            if (is_office_lock_file (repo->worktree, event->path, &office_path))
                lock_office_file_on_server (repo, office_path);
            g_free (office_path);
#endif

            if (FUNC7 (repo, istate, crypt, ignore_list,
                                  fset,
                                  status, event,
                                  &scanned_dirs, &total_size))
                goto out;

            break;
        case WT_EVENT_SCAN_DIR:
            if (FUNC7 (repo, istate, crypt, ignore_list,
                                  fset,
                                  status, event,
                                  &scanned_dirs, &total_size))
                goto out;

            break;
        case WT_EVENT_DELETE:
            FUNC21 (seaf->sync_mgr,
                                                  repo->id,
                                                  event->path);

#if defined WIN32 || defined __APPLE__
            office_path = NULL;
            if (is_office_lock_file (repo->worktree, event->path, &office_path))
                unlock_office_file_on_server (repo, office_path);
            g_free (office_path);
#endif

            if (FUNC0(repo->worktree, event->path, ignore_list))
                break;

            if (!FUNC10(repo->id,
                                  repo->is_readonly, event->path)) {
                FUNC18 ("%s is not writable, ignore.\n", event->path);
                break;
            }

            if (FUNC19 (seaf->filelock_mgr,
                                                      repo->id, event->path)) {
                FUNC18 ("Delete: %s is locked on server, ignore.\n", event->path);
                /* send_sync_error_notification (repo->id, NULL, event->path, */
                /*                               SYNC_ERROR_ID_FILE_LOCKED); */
                break;
            }

            if (FUNC1 (fset, event->path)) {
                not_found = FALSE;
                FUNC15 (istate, event->path, &not_found);
                if (not_found)
                    FUNC16 (repo->id,
                                               istate,
                                               repo->worktree, event->path,
                                               ignore_list, fset,
                                               repo->is_readonly,
                                               &scanned_del_dirs,
                                               repo->changeset);

                FUNC14 (repo->changeset,
                                       DIFF_STATUS_DELETED,
                                       event->path,
                                       FALSE,
                                       NULL);

                FUNC27 (repo->worktree,
                                                        istate,
                                                        ignore_list,
                                                        event->path);
            }
            break;
        case WT_EVENT_RENAME:
            FUNC8 (repo, istate, crypt, ignore_list, fset, event, &scanned_del_dirs, &total_size);
            break;
        case WT_EVENT_ATTRIB:
            if (!FUNC10(repo->id,
                                  repo->is_readonly, event->path)) {
                FUNC18 ("%s is not writable, ignore.\n", event->path);
                break;
            }
            FUNC29 (repo, istate, repo->worktree, event->path);
            break;
        case WT_EVENT_OVERFLOW:
            FUNC22 ("Kernel event queue overflowed, fall back to scan.\n");
            FUNC17 (istate, repo, crypt, ignore_list, fset);
            break;
        }

        if (event == last_event) {
            FUNC31 (event);
            FUNC20 ("All events are processed for repo %s.\n", repo->id);
            status->partial_commit = FALSE;
            break;
        } else
            FUNC31 (event);
    }

out:
    FUNC32 (status);
    FUNC26 (scanned_dirs);
    FUNC26 (scanned_del_dirs);

    return 0;
}