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
struct TYPE_5__ {int /*<<< orphan*/ * dependencies; } ;
typedef  TYPE_1__ Unit ;

/* Variables and functions */
 size_t UNIT_TRIGGERS ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline Unit* FUNC1(Unit *u) {
        return FUNC0(u->dependencies[UNIT_TRIGGERS]);
}