#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct inotify_event {int mask; scalar_t__ cookie; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  gboolean ;
typedef  int /*<<< orphan*/  WTStatus ;
struct TYPE_8__ {char const* old_path; scalar_t__ last_cookie; int /*<<< orphan*/  processing; } ;
struct TYPE_7__ {TYPE_2__* rename_info; int /*<<< orphan*/ * status; } ;
typedef  TYPE_1__ RepoWatchInfo ;
typedef  TYPE_2__ RenameInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int IN_MOVED_FROM ; 
 int IN_MOVED_TO ; 
 int /*<<< orphan*/  WT_EVENT_CREATE_OR_UPDATE ; 
 int /*<<< orphan*/  WT_EVENT_DELETE ; 
 int /*<<< orphan*/  WT_EVENT_RENAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,char const*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 char const* FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,scalar_t__,char const*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC7 (int in_fd,
               RepoWatchInfo *info,
               struct inotify_event *event,
               const char *worktree,
               const char *filename,
               gboolean last_event)
{
    WTStatus *status = info->status;
    RenameInfo *rename_info = info->rename_info;

    if (event->mask & IN_MOVED_FROM)
        FUNC4 ("(%d) Move %s ->\n", event->cookie, event->name);
    else if (event->mask & IN_MOVED_TO)
        FUNC4 ("(%d) Move -> %s.\n", event->cookie, event->name);

    if (!rename_info->processing) {
        if (event->mask & IN_MOVED_FROM) {
            if (!last_event) {
                FUNC5 (rename_info, event->cookie, filename);
            } else {
                /* Rename event pair should be in one batch of events.
                 * If a MOVED_FROM event is the last event in a batch,
                 * the path should be moved out of the repo.
                 */
                FUNC0 (status, WT_EVENT_DELETE, filename, NULL);
            }
        } else if (event->mask & IN_MOVED_TO) {
            /* A file/dir was moved into this repo. */
            /* Add watch and produce events. */
            FUNC0 (status, WT_EVENT_CREATE_OR_UPDATE, filename, NULL);
            FUNC1 (info, in_fd, worktree, filename, FALSE);
        }
    } else {
        if (event->mask & IN_MOVED_FROM) {
            /* A file/dir was moved out of this repo.
             * Output the last MOVED_FROM event as DELETE event
             */
            FUNC0 (status, WT_EVENT_DELETE, rename_info->old_path, NULL);

            if (!last_event) {
                /* Stay in processing state. */
                rename_info->last_cookie = event->cookie;
                FUNC2 (rename_info->old_path);
                rename_info->old_path = FUNC3(filename);
            } else {
                /* Another file/dir was moved out of this repo. */
                FUNC0 (status, WT_EVENT_DELETE, filename, NULL);
                FUNC6 (rename_info);
            }
        } else if (event->mask & IN_MOVED_TO) {
            if (event->cookie == rename_info->last_cookie) {
                /* Rename pair detected. */
                FUNC0 (status, WT_EVENT_RENAME,
                                    rename_info->old_path, filename);
            } else {
                /* A file/dir was moved out of the repo, followed by
                 * aother file/dir was moved into this repo.
                 */
                FUNC0 (status, WT_EVENT_DELETE,
                                    rename_info->old_path, NULL);
                FUNC0 (status, WT_EVENT_CREATE_OR_UPDATE,
                                    filename, NULL);
            }
            /* Need to update wd -> path mapping. */
            FUNC1 (info, in_fd, worktree, filename, FALSE);
            FUNC6 (rename_info);
        } else {
            /* A file/dir was moved out of this repo, followed by another
             * file operations.
             */
            FUNC0 (status, WT_EVENT_DELETE, rename_info->old_path, NULL);
            FUNC6 (rename_info);
        }
    }
}