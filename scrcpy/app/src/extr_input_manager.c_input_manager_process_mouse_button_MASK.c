#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct input_manager {int /*<<< orphan*/  controller; TYPE_2__* screen; } ;
struct control_msg {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  frame_size; } ;
struct TYPE_5__ {scalar_t__ type; scalar_t__ button; int clicks; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
typedef  TYPE_1__ SDL_MouseButtonEvent ;

/* Variables and functions */
 int ACTION_DOWN ; 
 int ACTION_UP ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ SDL_BUTTON_LEFT ; 
 scalar_t__ SDL_BUTTON_MIDDLE ; 
 scalar_t__ SDL_BUTTON_RIGHT ; 
 scalar_t__ SDL_MOUSEBUTTONDOWN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct control_msg*) ; 
 scalar_t__ FUNC3 (TYPE_1__ const*,int /*<<< orphan*/ ,struct control_msg*) ; 
 int FUNC4 (struct input_manager*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 

void
FUNC7(struct input_manager *input_manager,
                                   const SDL_MouseButtonEvent *event,
                                   bool control) {
    if (event->type == SDL_MOUSEBUTTONDOWN) {
        if (control && event->button == SDL_BUTTON_RIGHT) {
            FUNC5(input_manager->controller);
            return;
        }
        if (control && event->button == SDL_BUTTON_MIDDLE) {
            FUNC1(input_manager->controller, ACTION_DOWN | ACTION_UP);
            return;
        }
        // double-click on black borders resize to fit the device screen
        if (event->button == SDL_BUTTON_LEFT && event->clicks == 2) {
            bool outside =
                FUNC4(input_manager, event->x, event->y);
            if (outside) {
                FUNC6(input_manager->screen);
                return;
            }
        }
        // otherwise, send the click event to the device
    }

    if (!control) {
        return;
    }

    struct control_msg msg;
    if (FUNC3(event, input_manager->screen->frame_size, &msg)) {
        if (!FUNC2(input_manager->controller, &msg)) {
            FUNC0("Could not request 'inject mouse button event'");
        }
    }
}