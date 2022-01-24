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
struct stat {int /*<<< orphan*/  st_mode; } ;
struct inotify_event {int mask; char* name; } ;
typedef  int /*<<< orphan*/  gint ;
typedef  scalar_t__ gboolean ;
struct TYPE_7__ {int /*<<< orphan*/  last_changed; } ;
typedef  TYPE_1__ WTStatus ;
struct TYPE_8__ {TYPE_1__* status; } ;
typedef  TYPE_2__ RepoWatchInfo ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int IN_ATTRIB ; 
 int IN_CLOSE_WRITE ; 
 int IN_CREATE ; 
 int IN_DELETE ; 
 int IN_IGNORED ; 
 int IN_MODIFY ; 
 int IN_Q_OVERFLOW ; 
 int IN_UNMOUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  WT_EVENT_ATTRIB ; 
 int /*<<< orphan*/  WT_EVENT_CREATE_OR_UPDATE ; 
 int /*<<< orphan*/  WT_EVENT_DELETE ; 
 int /*<<< orphan*/  WT_EVENT_OVERFLOW ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int,char const*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC5 (char const*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int,TYPE_2__*,struct inotify_event*,char const*,char*,scalar_t__) ; 
 scalar_t__ FUNC8 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC11 (int in_fd,
                   RepoWatchInfo *info,
                   const char *worktree,
                   const char *parent,
                   struct inotify_event *event,
                   gboolean last_event)
{
    WTStatus *status = info->status;
    char *filename;
    gboolean update_last_changed = TRUE;
    gboolean add_to_queue = TRUE;

    /* An inotfy watch has been removed, we don't care about this for now. */
    if ((event->mask & IN_IGNORED) || (event->mask & IN_UNMOUNT))
        return;

    /* Kernel event queue was overflowed, some events may lost. */
    if (event->mask & IN_Q_OVERFLOW) {
        FUNC2 (status, WT_EVENT_OVERFLOW, NULL, NULL);
        return;
    }

    /* if (handle_consecutive_duplicate_event (info, event)) */
    /*     add_to_queue = FALSE; */

    filename = FUNC5 (parent, event->name, NULL);

    FUNC7 (in_fd, info, event, worktree, filename, last_event);

    if (event->mask & IN_MODIFY) {
        FUNC9 ("Modified %s.\n", filename);
        if (add_to_queue)
            FUNC2 (status, WT_EVENT_CREATE_OR_UPDATE, filename, NULL);
    } else if (event->mask & IN_CREATE) {
        FUNC9 ("Created %s.\n", filename);

        /* Nautilus's file copy operation doesn't trigger write events.
         * If the user copy a large file into the repo, only a create
         * event and a close_write event will be received. If we process
         * the create event, we'll certainly try to index a file when it's
         * still being copied. So we'll ignore create event for files.
         * Since write and close_write events will always be triggered,
         * we don't need to worry about missing this file.
         */
        char *fullpath = FUNC5 (worktree, filename, NULL);
        struct stat st;
        if (FUNC8 (fullpath, &st) < 0 ||
            (!FUNC0(st.st_mode) && !FUNC1(st.st_mode))) {
            FUNC6 (fullpath);
            update_last_changed = FALSE;
            goto out;
        }
        FUNC6 (fullpath);

        /* We now know it's a directory or a symlink. */

        /* Files or dirs could have been added under this dir before we
         * watch it. So it's safer to scan this dir. At most time we don't
         * have to scan recursively and very few new files will be found.
         */
        FUNC2 (status, WT_EVENT_CREATE_OR_UPDATE, filename, NULL);
        FUNC3 (info, in_fd, worktree, filename, FALSE);
    } else if (event->mask & IN_DELETE) {
        FUNC9 ("Deleted %s.\n", filename);
        FUNC2 (status, WT_EVENT_DELETE, filename, NULL);
    } else if (event->mask & IN_CLOSE_WRITE) {
        FUNC9 ("Close write %s.\n", filename);
        if (add_to_queue)
            FUNC2 (status, WT_EVENT_CREATE_OR_UPDATE, filename, NULL);
    } else if (event->mask & IN_ATTRIB) {
        FUNC9 ("Attribute changed %s.\n", filename);
        FUNC2 (status, WT_EVENT_ATTRIB, filename, NULL);
    }

out:
    FUNC6 (filename);
    if (update_last_changed)
        FUNC4 (&info->status->last_changed, (gint)FUNC10(NULL));
}