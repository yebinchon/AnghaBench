#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  ngx_queue_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 

ngx_queue_t *
FUNC3(ngx_queue_t *queue)
{
    ngx_queue_t  *middle, *next;

    middle = FUNC0(queue);

    if (middle == FUNC1(queue)) {
        return middle;
    }

    next = FUNC0(queue);

    for ( ;; ) {
        middle = FUNC2(middle);

        next = FUNC2(next);

        if (next == FUNC1(queue)) {
            return middle;
        }

        next = FUNC2(next);

        if (next == FUNC1(queue)) {
            return middle;
        }
    }
}