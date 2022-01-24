#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct position {int /*<<< orphan*/  point; int /*<<< orphan*/  screen_size; } ;
struct input_manager {int /*<<< orphan*/  controller; TYPE_1__* screen; } ;
struct control_msg {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  frame_size; } ;
typedef  int /*<<< orphan*/  SDL_MouseWheelEvent ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct control_msg*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*,struct position,struct control_msg*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

void
FUNC4(struct input_manager *input_manager,
                                  const SDL_MouseWheelEvent *event) {
    struct position position = {
        .screen_size = input_manager->screen->frame_size,
        .point = FUNC3(input_manager->screen),
    };
    struct control_msg msg;
    if (FUNC2(event, position, &msg)) {
        if (!FUNC1(input_manager->controller, &msg)) {
            FUNC0("Could not request 'inject mouse wheel event'");
        }
    }
}