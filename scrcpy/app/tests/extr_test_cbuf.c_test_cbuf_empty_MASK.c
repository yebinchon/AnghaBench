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
struct int_queue {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct int_queue*) ; 
 int FUNC2 (struct int_queue*) ; 
 int FUNC3 (struct int_queue*,int) ; 
 int FUNC4 (struct int_queue*,int*) ; 

__attribute__((used)) static void FUNC5(void) {
    struct int_queue queue;
    FUNC1(&queue);

    FUNC0(FUNC2(&queue));

    bool push_ok = FUNC3(&queue, 42);
    FUNC0(push_ok);
    FUNC0(!FUNC2(&queue));

    int item;
    bool take_ok = FUNC4(&queue, &item);
    FUNC0(take_ok);
    FUNC0(FUNC2(&queue));

    bool take_empty_ok = FUNC4(&queue, &item);
    FUNC0(!take_empty_ok); // the queue is empty
}