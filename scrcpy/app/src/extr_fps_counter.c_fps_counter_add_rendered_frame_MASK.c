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
typedef  int /*<<< orphan*/  uint32_t ;
struct fps_counter {int /*<<< orphan*/  mutex; int /*<<< orphan*/  nr_rendered; int /*<<< orphan*/  started; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct fps_counter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void
FUNC5(struct fps_counter *counter) {
    if (!FUNC0(&counter->started)) {
        return;
    }

    FUNC3(counter->mutex);
    uint32_t now = FUNC1();
    FUNC2(counter, now);
    ++counter->nr_rendered;
    FUNC4(counter->mutex);
}