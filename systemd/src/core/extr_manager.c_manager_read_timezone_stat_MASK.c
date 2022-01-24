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
typedef  scalar_t__ usec_t ;
struct stat {int /*<<< orphan*/  st_mtim; } ;
struct TYPE_4__ {int etc_localtime_accessible; scalar_t__ etc_localtime_mtime; } ;
typedef  TYPE_1__ Manager ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (char*,struct stat*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(Manager *m) {
        struct stat st;
        bool changed;

        FUNC0(m);

        /* Read the current stat() data of /etc/localtime so that we detect changes */
        if (FUNC2("/etc/localtime", &st) < 0) {
                FUNC1(errno, "Failed to stat /etc/localtime, ignoring: %m");
                changed = m->etc_localtime_accessible;
                m->etc_localtime_accessible = false;
        } else {
                usec_t k;

                k = FUNC3(&st.st_mtim);
                changed = !m->etc_localtime_accessible || k != m->etc_localtime_mtime;

                m->etc_localtime_mtime = k;
                m->etc_localtime_accessible = true;
        }

        return changed;
}