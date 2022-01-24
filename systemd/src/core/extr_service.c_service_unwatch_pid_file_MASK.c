#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  path; } ;
struct TYPE_8__ {TYPE_3__* pid_file_pathspec; } ;
typedef  TYPE_1__ Service ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC5(Service *s) {
        if (!s->pid_file_pathspec)
                return;

        FUNC1(FUNC0(s), "Stopping watch for PID file %s", s->pid_file_pathspec->path);
        FUNC4(s->pid_file_pathspec);
        FUNC3(s->pid_file_pathspec);
        s->pid_file_pathspec = FUNC2(s->pid_file_pathspec);
}