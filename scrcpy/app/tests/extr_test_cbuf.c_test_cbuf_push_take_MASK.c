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
 int FUNC2 (struct int_queue*,int) ; 
 int FUNC3 (struct int_queue*,int*) ; 

__attribute__((used)) static void FUNC4(void) {
    struct int_queue queue;
    FUNC1(&queue);

    bool push1_ok = FUNC2(&queue, 42);
    FUNC0(push1_ok);

    bool push2_ok = FUNC2(&queue, 35);
    FUNC0(push2_ok);

    int item;

    bool take1_ok = FUNC3(&queue, &item);
    FUNC0(take1_ok);
    FUNC0(item == 42);

    bool take2_ok = FUNC3(&queue, &item);
    FUNC0(take2_ok);
    FUNC0(item == 35);
}