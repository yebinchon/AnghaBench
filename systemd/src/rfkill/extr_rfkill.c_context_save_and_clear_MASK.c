#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct write_queue_item {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  rfkill_fd; struct write_queue_item* write_queue; } ;
typedef  TYPE_1__ Context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct write_queue_item*,struct write_queue_item*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  queue ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct write_queue_item*) ; 
 int /*<<< orphan*/  FUNC4 (struct write_queue_item*) ; 

__attribute__((used)) static void FUNC5(Context *c) {
        struct write_queue_item *i;

        FUNC1(c);

        while ((i = c->write_queue)) {
                FUNC0(queue, c->write_queue, i);
                (void) FUNC3(i);
                FUNC4(i);
        }

        FUNC2(c->rfkill_fd);
}