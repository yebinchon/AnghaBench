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
struct controller {int /*<<< orphan*/  receiver; int /*<<< orphan*/  queue; int /*<<< orphan*/  mutex; int /*<<< orphan*/  msg_cond; } ;
struct control_msg {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,struct control_msg*) ; 
 int /*<<< orphan*/  FUNC3 (struct control_msg*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5(struct controller *controller) {
    FUNC0(controller->msg_cond);
    FUNC1(controller->mutex);

    struct control_msg msg;
    while (FUNC2(&controller->queue, &msg)) {
        FUNC3(&msg);
    }

    FUNC4(&controller->receiver);
}