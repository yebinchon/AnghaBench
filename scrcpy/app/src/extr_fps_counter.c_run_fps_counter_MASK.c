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
typedef  scalar_t__ uint32_t ;
struct fps_counter {scalar_t__ next_timestamp; int /*<<< orphan*/  mutex; int /*<<< orphan*/  state_cond; int /*<<< orphan*/  started; int /*<<< orphan*/  interrupted; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct fps_counter*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(void *data) {
    struct fps_counter *counter = data;

    FUNC6(counter->mutex);
    while (!counter->interrupted) {
        while (!counter->interrupted && !FUNC0(&counter->started)) {
            FUNC4(counter->state_cond, counter->mutex);
        }
        while (!counter->interrupted && FUNC0(&counter->started)) {
            uint32_t now = FUNC1();
            FUNC3(counter, now);

            FUNC2(counter->next_timestamp > now);
            uint32_t remaining = counter->next_timestamp - now;

            // ignore the reason (timeout or signaled), we just loop anyway
            FUNC5(counter->state_cond, counter->mutex, remaining);
        }
    }
    FUNC7(counter->mutex);
    return 0;
}