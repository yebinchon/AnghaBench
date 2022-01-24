#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Unit ;
struct TYPE_5__ {scalar_t__ stdin_fd; scalar_t__ stdout_fd; scalar_t__ stderr_fd; int /*<<< orphan*/  fd_store; } ;
typedef  TYPE_1__ Service ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC5(Unit *u) {
        Service *s = FUNC0(u);

        FUNC1(s);

        if (!s->fd_store && s->stdin_fd < 0 && s->stdout_fd < 0 && s->stderr_fd < 0)
                return;

        FUNC2(u, "Releasing resources.");

        s->stdin_fd = FUNC3(s->stdin_fd);
        s->stdout_fd = FUNC3(s->stdout_fd);
        s->stderr_fd = FUNC3(s->stderr_fd);

        FUNC4(s);
}