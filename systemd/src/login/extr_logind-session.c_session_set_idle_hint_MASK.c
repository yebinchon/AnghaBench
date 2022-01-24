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
struct TYPE_5__ {int idle_hint; int /*<<< orphan*/  manager; int /*<<< orphan*/  user; scalar_t__ seat; int /*<<< orphan*/  idle_hint_timestamp; } ;
typedef  TYPE_1__ Session ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,char*,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*,char*,int /*<<< orphan*/ *) ; 

void FUNC6(Session *s, bool b) {
        FUNC0(s);

        if (s->idle_hint == b)
                return;

        s->idle_hint = b;
        FUNC1(&s->idle_hint_timestamp);

        FUNC4(s, "IdleHint", "IdleSinceHint", "IdleSinceHintMonotonic", NULL);

        if (s->seat)
                FUNC3(s->seat, "IdleHint", "IdleSinceHint", "IdleSinceHintMonotonic", NULL);

        FUNC5(s->user, "IdleHint", "IdleSinceHint", "IdleSinceHintMonotonic", NULL);
        FUNC2(s->manager, "IdleHint", "IdleSinceHint", "IdleSinceHintMonotonic", NULL);
}