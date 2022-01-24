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
struct controller {int /*<<< orphan*/  mutex; int /*<<< orphan*/  queue; scalar_t__ stopped; int /*<<< orphan*/  msg_cond; } ;
struct control_msg {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct control_msg*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct control_msg*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (struct controller*,struct control_msg*) ; 

__attribute__((used)) static int
FUNC9(void *data) {
    struct controller *controller = data;

    for (;;) {
        FUNC6(controller->mutex);
        while (!controller->stopped && FUNC2(&controller->queue)) {
            FUNC4(controller->msg_cond, controller->mutex);
        }
        if (controller->stopped) {
            // stop immediately, do not process further msgs
            FUNC7(controller->mutex);
            break;
        }
        struct control_msg msg;
        bool non_empty = FUNC3(&controller->queue, &msg);
        FUNC1(non_empty);
        FUNC7(controller->mutex);

        bool ok = FUNC8(controller, &msg);
        FUNC5(&msg);
        if (!ok) {
            FUNC0("Could not write msg to socket");
            break;
        }
    }
    return 0;
}