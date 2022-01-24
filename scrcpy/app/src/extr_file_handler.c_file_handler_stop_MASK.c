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
struct file_handler {int stopped; scalar_t__ current_process; int /*<<< orphan*/  mutex; int /*<<< orphan*/  event_cond; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ PROCESS_NONE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void
FUNC6(struct file_handler *file_handler) {
    FUNC4(file_handler->mutex);
    file_handler->stopped = true;
    FUNC3(file_handler->event_cond);
    if (file_handler->current_process != PROCESS_NONE) {
        if (!FUNC2(file_handler->current_process)) {
            FUNC0("Could not terminate install process");
        }
        FUNC1(file_handler->current_process, NULL);
        file_handler->current_process = PROCESS_NONE;
    }
    FUNC5(file_handler->mutex);
}