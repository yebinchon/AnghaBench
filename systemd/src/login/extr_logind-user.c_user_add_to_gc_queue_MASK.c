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
struct TYPE_7__ {int in_gc_queue; TYPE_1__* manager; } ;
typedef  TYPE_2__ User ;
struct TYPE_6__ {int /*<<< orphan*/  user_gc_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  gc_queue ; 

void FUNC2(User *u) {
        FUNC1(u);

        if (u->in_gc_queue)
                return;

        FUNC0(gc_queue, u->manager->user_gc_queue, u);
        u->in_gc_queue = true;
}