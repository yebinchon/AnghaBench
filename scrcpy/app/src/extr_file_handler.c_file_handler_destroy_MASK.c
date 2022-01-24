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
struct file_handler_request {int dummy; } ;
struct file_handler {int /*<<< orphan*/  queue; int /*<<< orphan*/  serial; int /*<<< orphan*/  mutex; int /*<<< orphan*/  event_cond; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,struct file_handler_request*) ; 
 int /*<<< orphan*/  FUNC4 (struct file_handler_request*) ; 

void
FUNC5(struct file_handler *file_handler) {
    FUNC0(file_handler->event_cond);
    FUNC1(file_handler->mutex);
    FUNC2(file_handler->serial);

    struct file_handler_request req;
    while (FUNC3(&file_handler->queue, &req)) {
        FUNC4(&req);
    }
}