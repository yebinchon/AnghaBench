#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ inotify_fd; int /*<<< orphan*/  directories_by_path; int /*<<< orphan*/  directories_by_wd; } ;
typedef  TYPE_1__ sd_journal ;
struct TYPE_11__ {scalar_t__ wd; struct TYPE_11__* path; scalar_t__ is_root; } ;
typedef  TYPE_2__ Directory ;

/* Variables and functions */
 TYPE_2__* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*,TYPE_2__*) ; 

__attribute__((used)) static void FUNC6(sd_journal *j, Directory *d) {
        FUNC1(j);

        if (d->wd > 0) {
                FUNC3(j->directories_by_wd, FUNC0(d->wd));

                if (j->inotify_fd >= 0)
                        (void) FUNC4(j->inotify_fd, d->wd);
        }

        FUNC3(j->directories_by_path, d->path);

        if (d->is_root)
                FUNC5("Root directory %s removed.", d->path);
        else
                FUNC5("Directory %s removed.", d->path);

        FUNC2(d->path);
        FUNC2(d);
}