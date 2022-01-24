#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int flags; scalar_t__ toplevel_fd; int /*<<< orphan*/ * path; scalar_t__ no_new_files; } ;
typedef  TYPE_1__ sd_journal ;

/* Variables and functions */
 int SD_JOURNAL_OS_ROOT ; 
 int FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC4(sd_journal *j) {
        FUNC3(j);

        if (j->no_new_files)
                return FUNC0(j);

        if (j->flags & SD_JOURNAL_OS_ROOT)
                return FUNC2(j);

        if (j->toplevel_fd >= 0)
                return FUNC1(j, NULL, false);

        if (j->path)
                return FUNC1(j, j->path, true);

        return FUNC2(j);
}