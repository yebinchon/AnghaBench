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
struct ucred {int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; } ;
struct TYPE_5__ {int /*<<< orphan*/  gid; int /*<<< orphan*/  pid; int /*<<< orphan*/  uid; } ;
typedef  TYPE_1__ ClientContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(ClientContext *c, const struct ucred *ucred) {
        FUNC0(c);
        FUNC0(FUNC4(c->pid));

        /* The ucred data passed in is always the most current and accurate, if we have any. Use it. */
        if (ucred && FUNC5(ucred->uid))
                c->uid = ucred->uid;
        else
                (void) FUNC2(c->pid, &c->uid);

        if (ucred && FUNC3(ucred->gid))
                c->gid = ucred->gid;
        else
                (void) FUNC1(c->pid, &c->gid);
}