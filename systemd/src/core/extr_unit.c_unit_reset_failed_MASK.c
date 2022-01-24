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
struct TYPE_7__ {int start_limit_hit; int /*<<< orphan*/  start_ratelimit; } ;
typedef  TYPE_1__ Unit ;
struct TYPE_8__ {int /*<<< orphan*/  (* reset_failed ) (TYPE_1__*) ;} ;

/* Variables and functions */
 TYPE_5__* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

void FUNC4(Unit *u) {
        FUNC1(u);

        if (FUNC0(u)->reset_failed)
                FUNC0(u)->reset_failed(u);

        FUNC2(&u->start_ratelimit);
        u->start_limit_hit = false;
}