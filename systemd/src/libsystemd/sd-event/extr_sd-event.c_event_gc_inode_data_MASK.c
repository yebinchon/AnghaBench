#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct inotify_data {int /*<<< orphan*/  inodes; } ;
struct inode_data {struct inotify_data* inotify_data; scalar_t__ event_sources; } ;
typedef  int /*<<< orphan*/  sd_event ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct inode_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct inotify_data*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(
                sd_event *e,
                struct inode_data *d) {

        struct inotify_data *inotify_data;

        FUNC0(e);

        if (!d)
                return;

        if (d->event_sources)
                return;

        inotify_data = d->inotify_data;
        FUNC1(e, d);

        if (inotify_data && FUNC3(inotify_data->inodes))
                FUNC2(e, inotify_data);
}