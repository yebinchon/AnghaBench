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
struct TYPE_5__ {int /*<<< orphan*/  pending_switch; } ;
typedef  int /*<<< orphan*/  Session ;
typedef  TYPE_1__ Seat ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 

void FUNC3(Seat *s) {
        Session *session;

        FUNC1(s);

        /* if no session-switch is pending or if it got canceled, do nothing */
        if (!s->pending_switch)
                return;

        session = FUNC0(s->pending_switch);

        FUNC2(s, session);
}