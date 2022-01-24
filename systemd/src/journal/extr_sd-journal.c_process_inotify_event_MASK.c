#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct inotify_event {int mask; scalar_t__ len; int /*<<< orphan*/  name; int /*<<< orphan*/  wd; int /*<<< orphan*/  directories_by_wd; } ;
typedef  struct inotify_event sd_journal ;
struct TYPE_4__ {int /*<<< orphan*/  path; scalar_t__ is_root; } ;
typedef  TYPE_1__ Directory ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int IN_ATTRIB ; 
 int IN_CREATE ; 
 int IN_DELETE ; 
 int IN_DELETE_SELF ; 
 int IN_IGNORED ; 
 int IN_ISDIR ; 
 int IN_MODIFY ; 
 int IN_MOVED_FROM ; 
 int IN_MOVED_TO ; 
 int IN_MOVE_SELF ; 
 int IN_Q_OVERFLOW ; 
 int IN_UNMOUNT ; 
 int /*<<< orphan*/  FUNC1 (struct inotify_event*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inotify_event*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct inotify_event*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (struct inotify_event*) ; 
 int /*<<< orphan*/  FUNC9 (struct inotify_event*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (struct inotify_event*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(sd_journal *j, struct inotify_event *e) {
        Directory *d;

        FUNC3(j);
        FUNC3(e);

        if (e->mask & IN_Q_OVERFLOW) {
                FUNC8(j);
                return;
        }

        /* Is this a subdirectory we watch? */
        d = FUNC5(j->directories_by_wd, FUNC0(e->wd));
        if (d) {
                if (!(e->mask & IN_ISDIR) && e->len > 0 &&
                    (FUNC4(e->name, ".journal") ||
                     FUNC4(e->name, ".journal~"))) {

                        /* Event for a journal file */

                        if (e->mask & (IN_CREATE|IN_MOVED_TO|IN_MODIFY|IN_ATTRIB))
                                (void) FUNC2(j, d->path, e->name);
                        else if (e->mask & (IN_DELETE|IN_MOVED_FROM|IN_UNMOUNT))
                                FUNC10(j, d->path, e->name);

                } else if (!d->is_root && e->len == 0) {

                        /* Event for a subdirectory */

                        if (e->mask & (IN_DELETE_SELF|IN_MOVE_SELF|IN_UNMOUNT))
                                FUNC9(j, d);

                } else if (d->is_root && (e->mask & IN_ISDIR) && e->len > 0 && FUNC6(e->name)) {

                        /* Event for root directory */

                        if (e->mask & (IN_CREATE|IN_MOVED_TO|IN_MODIFY|IN_ATTRIB))
                                (void) FUNC1(j, d->path, e->name);
                }

                return;
        }

        if (e->mask & IN_IGNORED)
                return;

        FUNC7("Unexpected inotify event.");
}