#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  path; } ;
struct TYPE_7__ {TYPE_5__* pid_file_pathspec; } ;
typedef  TYPE_1__ Service ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  service_dispatch_inotify_io ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC6(Service *s) {
        int r;

        FUNC1(FUNC0(s), "Setting watch for PID file %s", s->pid_file_pathspec->path);

        r = FUNC3(s->pid_file_pathspec, service_dispatch_inotify_io);
        if (r < 0)
                goto fail;

        /* the pidfile might have appeared just before we set the watch */
        FUNC1(FUNC0(s), "Trying to read PID file %s in case it changed", s->pid_file_pathspec->path);
        FUNC4(s);

        return 0;
fail:
        FUNC2(FUNC0(s), r, "Failed to set a watch for PID file %s: %m", s->pid_file_pathspec->path);
        FUNC5(s);
        return r;
}