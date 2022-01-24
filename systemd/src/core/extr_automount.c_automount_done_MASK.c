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
struct TYPE_5__ {int /*<<< orphan*/  expire_event_source; void* expire_tokens; void* tokens; int /*<<< orphan*/  where; } ;
typedef  TYPE_1__ Automount ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC6(Unit *u) {
        Automount *a = FUNC0(u);

        FUNC1(a);

        FUNC5(a);

        a->where = FUNC2(a->where);

        a->tokens = FUNC4(a->tokens);
        a->expire_tokens = FUNC4(a->expire_tokens);

        a->expire_event_source = FUNC3(a->expire_event_source);
}