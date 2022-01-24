#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct index_state {int dummy; } ;
typedef  scalar_t__ gint64 ;
typedef  void* gboolean ;
struct TYPE_13__ {int /*<<< orphan*/  q_lock; int /*<<< orphan*/  event_q; void* partial_commit; } ;
typedef  TYPE_1__ WTStatus ;
struct TYPE_14__ {int /*<<< orphan*/ * remain_files; int /*<<< orphan*/  path; } ;
typedef  TYPE_2__ WTEvent ;
struct TYPE_17__ {int /*<<< orphan*/  sync_mgr; } ;
struct TYPE_16__ {int /*<<< orphan*/  id; int /*<<< orphan*/  create_partial_commit; } ;
struct TYPE_15__ {void* end_multipart_upload; scalar_t__ total_bytes; void* multipart_upload; } ;
typedef  TYPE_3__ SyncInfo ;
typedef  int /*<<< orphan*/  SeafileCrypt ;
typedef  TYPE_4__ SeafRepo ;
typedef  int /*<<< orphan*/  LockedFileSet ;
typedef  int /*<<< orphan*/  GQueue ;
typedef  int /*<<< orphan*/  GList ;

/* Variables and functions */
 void* FALSE ; 
 scalar_t__ MAX_COMMIT_SIZE ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,struct index_state*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **,scalar_t__*,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,struct index_state*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_6__* seaf ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static gboolean
FUNC9 (SeafRepo *repo, struct index_state *istate,
                  SeafileCrypt *crypt, GList *ignore_list,
                  LockedFileSet *fset,
                  WTStatus *status, WTEvent *event,
                  GList **scanned_dirs, gint64 *total_size)
{
    SyncInfo *info;

    if (!repo->create_partial_commit) {
        /* XXX: We now use remain_files = NULL to signify not creating
         * partial commits. It's better to use total_size = NULL for
         * that purpose.
         */
        FUNC0 (repo, istate, crypt, event->path,
                           ignore_list, scanned_dirs,
                           total_size, NULL, NULL);
    } else if (!event->remain_files) {
        GQueue *remain_files = NULL;
        FUNC0 (repo, istate, crypt, event->path,
                           ignore_list, scanned_dirs,
                           total_size, &remain_files, fset);
        if (*total_size >= MAX_COMMIT_SIZE) {
            FUNC7 ("Creating partial commit after adding %s.\n",
                          event->path);

            status->partial_commit = TRUE;

            /* An event for a new folder may contain many files.
             * If the total_size become larger than 100MB after adding
             * some of these files, the remaining file paths will be
             * cached in remain files. This way we don't need to scan
             * the folder again next time.
             */
            if (remain_files) {
                if (FUNC3 (remain_files) == 0) {
                    FUNC2 (remain_files);
                    return TRUE;
                }

                FUNC7 ("Remain files for %s.\n", event->path);

                /* Cache remaining files in the event structure. */
                event->remain_files = remain_files;

                FUNC5 (&status->q_lock);
                FUNC4 (status->event_q, event);
                FUNC6 (&status->q_lock);

                info = FUNC8 (seaf->sync_mgr, repo->id);
                if (!info->multipart_upload) {
                    info->multipart_upload = TRUE;
                    info->total_bytes = *total_size;
                }
            }

            return TRUE;
        }
    } else {
        FUNC7 ("Adding remaining files for %s.\n", event->path);

        FUNC1 (repo, istate, crypt, event->remain_files,
                          ignore_list, total_size);
        if (FUNC3 (event->remain_files) != 0) {
            FUNC5 (&status->q_lock);
            FUNC4 (status->event_q, event);
            FUNC6 (&status->q_lock);
            return TRUE;
        } else {
            info = FUNC8 (seaf->sync_mgr, repo->id);
            info->end_multipart_upload = TRUE;
            return TRUE;
        }
        if (*total_size >= MAX_COMMIT_SIZE)
            return TRUE;
    }

    return FALSE;
}