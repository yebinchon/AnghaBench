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
 int /*<<< orphan*/  FUNC2 (struct int_queue*) ; 
 int FUNC3 (struct int_queue*,int) ; 
 int FUNC4 (struct int_queue*,int*) ; 

__attribute__((used)) static void FUNC5(void) {
    struct int_queue queue;
    FUNC1(&queue);

    FUNC0(!FUNC2(&queue));

    // fill the queue
    for (int i = 0; i < 32; ++i) {
        bool ok = FUNC3(&queue, i);
        FUNC0(ok);
    }
    bool ok = FUNC3(&queue, 42);
    FUNC0(!ok); // the queue if full

    int item;
    bool take_ok = FUNC4(&queue, &item);
    FUNC0(take_ok);
    FUNC0(!FUNC2(&queue));
}