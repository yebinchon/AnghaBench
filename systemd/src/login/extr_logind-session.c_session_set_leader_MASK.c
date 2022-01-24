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
typedef  scalar_t__ pid_t ;
struct TYPE_8__ {scalar_t__ leader; int /*<<< orphan*/  audit_id; TYPE_1__* manager; } ;
struct TYPE_7__ {int /*<<< orphan*/  sessions_by_leader; } ;
typedef  TYPE_2__ Session ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 

int FUNC6(Session *s, pid_t pid) {
        int r;

        FUNC1(s);

        if (!FUNC5(pid))
                return -EINVAL;

        if (s->leader == pid)
                return 0;

        r = FUNC3(s->manager->sessions_by_leader, FUNC0(pid), s);
        if (r < 0)
                return r;

        if (FUNC5(s->leader))
                (void) FUNC4(s->manager->sessions_by_leader, FUNC0(s->leader), s);

        s->leader = pid;
        (void) FUNC2(pid, &s->audit_id);

        return 1;
}