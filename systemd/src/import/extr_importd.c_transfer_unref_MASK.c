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
struct TYPE_8__ {scalar_t__ pid; int /*<<< orphan*/  stdout_fd; int /*<<< orphan*/  stdin_fd; int /*<<< orphan*/  log_fd; int /*<<< orphan*/  object_path; int /*<<< orphan*/  format; int /*<<< orphan*/  local; int /*<<< orphan*/  remote; int /*<<< orphan*/  log_event_source; int /*<<< orphan*/  pid_event_source; int /*<<< orphan*/  id; TYPE_1__* manager; } ;
typedef  TYPE_2__ Transfer ;
struct TYPE_7__ {int /*<<< orphan*/  transfers; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIGKILL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static Transfer *FUNC8(Transfer *t) {
        if (!t)
                return NULL;

        if (t->manager)
                FUNC2(t->manager->transfers, FUNC0(t->id));

        FUNC6(t->pid_event_source);
        FUNC6(t->log_event_source);

        FUNC1(t->remote);
        FUNC1(t->local);
        FUNC1(t->format);
        FUNC1(t->object_path);

        if (t->pid > 0) {
                (void) FUNC3(t->pid, SIGKILL);
                (void) FUNC7(t->pid, NULL);
        }

        FUNC5(t->log_fd);
        FUNC5(t->stdin_fd);
        FUNC5(t->stdout_fd);

        return FUNC4(t);
}