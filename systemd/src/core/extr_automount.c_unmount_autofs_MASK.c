#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_1__* manager; } ;
struct TYPE_9__ {scalar_t__ pipe_fd; scalar_t__ where; int /*<<< orphan*/  expire_tokens; int /*<<< orphan*/  tokens; int /*<<< orphan*/  pipe_event_source; } ;
struct TYPE_8__ {int /*<<< orphan*/  objective; } ;
typedef  TYPE_2__ Automount ;

/* Variables and functions */
 int /*<<< orphan*/  EHOSTDOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MANAGER_REEXECUTE ; 
 int /*<<< orphan*/  MANAGER_RELOAD ; 
 int /*<<< orphan*/  MNT_DETACH ; 
 TYPE_6__* FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(Automount *a) {
        int r;

        FUNC2(a);

        if (a->pipe_fd < 0)
                return;

        a->pipe_event_source = FUNC7(a->pipe_event_source);
        a->pipe_fd = FUNC6(a->pipe_fd);

        /* If we reload/reexecute things we keep the mount point around */
        if (!FUNC0(FUNC1(a)->manager->objective, MANAGER_RELOAD, MANAGER_REEXECUTE)) {

                FUNC3(a, a->tokens, -EHOSTDOWN);
                FUNC3(a, a->expire_tokens, -EHOSTDOWN);

                if (a->where) {
                        r = FUNC5(a->where, MNT_DETACH);
                        if (r < 0)
                                FUNC4(r, "Failed to unmount: %m");
                }
        }
}