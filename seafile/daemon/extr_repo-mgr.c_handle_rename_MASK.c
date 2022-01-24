#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct index_state {int dummy; } ;
typedef  int /*<<< orphan*/  options ;
typedef  int /*<<< orphan*/  gint64 ;
typedef  scalar_t__ gboolean ;
struct TYPE_9__ {int /*<<< orphan*/  new_path; int /*<<< orphan*/  path; } ;
typedef  TYPE_1__ WTEvent ;
struct TYPE_12__ {int /*<<< orphan*/  filelock_mgr; int /*<<< orphan*/  sync_mgr; } ;
struct TYPE_11__ {int /*<<< orphan*/  changeset; int /*<<< orphan*/  is_repo_ro; int /*<<< orphan*/ * fset; } ;
struct TYPE_10__ {int /*<<< orphan*/  worktree; int /*<<< orphan*/  email; int /*<<< orphan*/  version; int /*<<< orphan*/  id; int /*<<< orphan*/  changeset; int /*<<< orphan*/  is_readonly; } ;
typedef  int /*<<< orphan*/  SeafileCrypt ;
typedef  TYPE_2__ SeafRepo ;
typedef  int /*<<< orphan*/  LockedFileSet ;
typedef  int /*<<< orphan*/  GList ;
typedef  TYPE_3__ AddOptions ;

/* Variables and functions */
 int /*<<< orphan*/  DIFF_STATUS_DELETED ; 
 int /*<<< orphan*/  DIFF_STATUS_RENAMED ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct index_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct index_state*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC10 (struct index_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct index_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 TYPE_4__* seaf ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,struct index_state*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC16 (SeafRepo *repo, struct index_state *istate,
               SeafileCrypt *crypt, GList *ignore_list,
               LockedFileSet *fset,
               WTEvent *event, GList **scanned_del_dirs,
               gint64 *total_size)
{
    gboolean not_found, src_ignored, dst_ignored;

    FUNC14 (seaf->sync_mgr, repo->id, event->path);

    if (!FUNC5(repo->id,
                          repo->is_readonly, event->path) ||
        !FUNC5(repo->id,
                          repo->is_readonly, event->new_path)) {
        FUNC12 ("Rename: %s or %s is not writable, ignore.\n",
                    event->path, event->new_path);
        return;
    }

    if (FUNC13 (seaf->filelock_mgr,
                                              repo->id, event->path)) {
        FUNC12 ("Rename: %s is locked on server, ignore.\n", event->path);
        /* send_sync_error_notification (repo->id, NULL, event->path, */
        /*                               SYNC_ERROR_ID_FILE_LOCKED); */
        return;
    }

    if (FUNC13 (seaf->filelock_mgr,
                                              repo->id, event->new_path)) {
        FUNC12 ("Rename: %s is locked on server, ignore.\n", event->new_path);
        /* send_sync_error_notification (repo->id, NULL, event->new_path, */
        /*                               SYNC_ERROR_ID_FILE_LOCKED); */
        return;
    }

    src_ignored = FUNC2(repo->worktree, event->path, ignore_list);
    dst_ignored = FUNC2(repo->worktree, event->new_path, ignore_list);

    /* If the destination path is ignored, just remove the source path. */
    if (dst_ignored) {
        if (!src_ignored &&
            !FUNC6 (event->new_path) &&
            FUNC3 (fset, event->path)) {
            not_found = FALSE;
            FUNC9 (istate, event->path, &not_found);
            if (not_found)
                FUNC11 (repo->id,
                                           istate,
                                           repo->worktree, event->path,
                                           ignore_list, fset,
                                           repo->is_readonly,
                                           scanned_del_dirs,
                                           repo->changeset);

            FUNC8 (repo->changeset,
                                   DIFF_STATUS_DELETED,
                                   event->path,
                                   FALSE,
                                   NULL);
        }
        return;
    }

    /* Now the destination path is not ignored. */

    if (!src_ignored && !FUNC4 (event->path, event->new_path) &&
        FUNC3 (fset, event->path)) {
        not_found = FALSE;
        FUNC10 (istate, event->path, event->new_path, &not_found,
                              NULL, NULL);
        if (not_found)
            FUNC11 (repo->id,
                                       istate,
                                       repo->worktree, event->path,
                                       ignore_list, fset,
                                       repo->is_readonly,
                                       scanned_del_dirs,
                                       repo->changeset);

        /* Moving files out of a dir may make it empty. */
        FUNC15 (repo->worktree,
                                                istate,
                                                ignore_list,
                                                event->path);

        FUNC1 (repo->changeset,
                          DIFF_STATUS_RENAMED,
                          NULL,
                          NULL,
                          NULL,
                          event->path,
                          event->new_path);
    }

    AddOptions options;
    FUNC7 (&options, 0, sizeof(options));
    options.fset = fset;
    options.is_repo_ro = repo->is_readonly;
    options.changeset = repo->changeset;

    /* We should always scan the destination to compare with the renamed
     * index entries. For example, in the following case:
     * 1. file a.txt is updated;
     * 2. a.txt is moved to test/a.txt;
     * If the two operations are executed in a batch, the updated content
     * of a.txt won't be committed if we don't scan the destination, because
     * when we process the update event, a.txt is already not in its original
     * place.
     */
    FUNC0 (repo->id, repo->version, repo->email,
                   istate, repo->worktree, event->new_path,
                   crypt, FALSE, ignore_list,
                   total_size, NULL, &options);
}