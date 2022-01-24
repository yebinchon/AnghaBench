#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  gint ;
typedef  int gboolean ;
struct TYPE_13__ {int /*<<< orphan*/  last_changed; } ;
typedef  TYPE_1__ WTStatus ;
struct TYPE_16__ {scalar_t__ Action; int /*<<< orphan*/  FileNameLength; int /*<<< orphan*/  FileName; } ;
struct TYPE_15__ {TYPE_1__* status; } ;
struct TYPE_14__ {int /*<<< orphan*/  st_mode; } ;
typedef  TYPE_2__ SeafStat ;
typedef  TYPE_3__ RepoWatchInfo ;
typedef  TYPE_4__* PFILE_NOTIFY_INFORMATION ;

/* Variables and functions */
 int FALSE ; 
 scalar_t__ FILE_ACTION_ADDED ; 
 scalar_t__ FILE_ACTION_MODIFIED ; 
 scalar_t__ FILE_ACTION_REMOVED ; 
 scalar_t__ FILE_ACTION_RENAMED_OLD_NAME ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int TRUE ; 
 int /*<<< orphan*/  WT_EVENT_CREATE_OR_UPDATE ; 
 int /*<<< orphan*/  WT_EVENT_DELETE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 char* FUNC2 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC4 (char const*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,TYPE_4__*,char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int FUNC9 (char*,TYPE_2__*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC11 (RepoWatchInfo *info,
                   const char *worktree,
                   PFILE_NOTIFY_INFORMATION event,
                   gboolean last_event)
{
    WTStatus *status = info->status;
    char *filename;
    gboolean add_to_queue = TRUE;

#if 0
    if (handle_consecutive_duplicate_event (info, event))
        add_to_queue = FALSE;
#endif

    gboolean convert_long_path = !(event->Action == FILE_ACTION_RENAMED_OLD_NAME ||
                                   event->Action == FILE_ACTION_REMOVED);
    filename = FUNC2 (worktree, event->FileName, event->FileNameLength,
                                     convert_long_path);
    if (!filename)
        goto out;

    FUNC7 (info, event, worktree, filename, last_event);

    if (event->Action == FILE_ACTION_MODIFIED) {
        FUNC8 ("Modified %s.\n", filename);

        /* Ignore modified event for directories. */
        char *full_path = FUNC4 (worktree, filename, NULL);
        SeafStat st;
        int rc = FUNC9 (full_path, &st);
        if (rc < 0 || FUNC0(st.st_mode)) {
            FUNC5 (full_path);
            goto out;
        }
        FUNC5 (full_path);

        if (add_to_queue)
            FUNC1 (status, WT_EVENT_CREATE_OR_UPDATE, filename, NULL);
    } else if (event->Action == FILE_ACTION_ADDED) {
        FUNC8 ("Created %s.\n", filename);
        FUNC1 (status, WT_EVENT_CREATE_OR_UPDATE, filename, NULL);
    } else if (event->Action == FILE_ACTION_REMOVED) {
        FUNC8 ("Deleted %s.\n", filename);
        FUNC1 (status, WT_EVENT_DELETE, filename, NULL);
    }

out:
    FUNC5 (filename);
    FUNC3 (&info->status->last_changed, (gint)FUNC10(NULL));

}