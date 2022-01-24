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
struct fps_counter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (struct fps_counter*) ; 
 scalar_t__ FUNC3 (struct fps_counter*) ; 
 int /*<<< orphan*/  FUNC4 (struct fps_counter*) ; 

__attribute__((used)) static void
FUNC5(struct fps_counter *fps_counter) {
    // the started state can only be written from the current thread, so there
    // is no ToCToU issue
    if (FUNC2(fps_counter)) {
        FUNC4(fps_counter);
        FUNC1("FPS counter stopped");
    } else {
        if (FUNC3(fps_counter)) {
            FUNC1("FPS counter started");
        } else {
            FUNC0("FPS counter starting failed");
        }
    }
}