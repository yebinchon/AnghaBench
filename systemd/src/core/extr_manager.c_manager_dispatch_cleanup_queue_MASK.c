#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_2__* in_cleanup_queue; } ;
typedef  TYPE_1__ Unit ;
struct TYPE_7__ {TYPE_1__* cleanup_queue; } ;
typedef  TYPE_2__ Manager ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static unsigned FUNC2(Manager *m) {
        Unit *u;
        unsigned n = 0;

        FUNC0(m);

        while ((u = m->cleanup_queue)) {
                FUNC0(u->in_cleanup_queue);

                FUNC1(u);
                n++;
        }

        return n;
}