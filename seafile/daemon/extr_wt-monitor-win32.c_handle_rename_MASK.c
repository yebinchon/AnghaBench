#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  gboolean ;
typedef  int /*<<< orphan*/  WTStatus ;
struct TYPE_10__ {scalar_t__ Action; } ;
struct TYPE_9__ {int /*<<< orphan*/  old_path; int /*<<< orphan*/  processing; } ;
struct TYPE_8__ {TYPE_2__* rename_info; int /*<<< orphan*/ * status; } ;
typedef  TYPE_1__ RepoWatchInfo ;
typedef  TYPE_2__ RenameInfo ;
typedef  TYPE_3__* PFILE_NOTIFY_INFORMATION ;

/* Variables and functions */
 scalar_t__ FILE_ACTION_RENAMED_NEW_NAME ; 
 scalar_t__ FILE_ACTION_RENAMED_OLD_NAME ; 
 int /*<<< orphan*/  WT_EVENT_RENAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC4 (RepoWatchInfo *info,
               PFILE_NOTIFY_INFORMATION event,
               const char *worktree,
               const char *filename,
               gboolean last_event)
{
    WTStatus *status = info->status;
    RenameInfo *rename_info = info->rename_info;

    if (event->Action == FILE_ACTION_RENAMED_OLD_NAME)
        FUNC1 ("Move %s ->\n", filename);
    else if (event->Action == FILE_ACTION_RENAMED_NEW_NAME)
        FUNC1 ("Move -> %s.\n", filename);

    if (!rename_info->processing) {
        if (event->Action == FILE_ACTION_RENAMED_OLD_NAME) {
            if (!last_event) {
                FUNC2 (rename_info, filename);
            } else {
                /* RENAMED_OLD_NAME should not be the last event,
                   just ignore it.
                */
            }
        }
    } else {
        if (event->Action == FILE_ACTION_RENAMED_NEW_NAME) {
            /* Rename pair detected. */
            FUNC0 (status, WT_EVENT_RENAME,
                                rename_info->old_path, filename);
            FUNC3 (rename_info);
        }
    }
}