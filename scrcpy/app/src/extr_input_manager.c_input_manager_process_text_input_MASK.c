#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct input_manager {int /*<<< orphan*/  controller; } ;
struct TYPE_4__ {int /*<<< orphan*/  text; } ;
struct control_msg {TYPE_1__ inject_text; int /*<<< orphan*/  type; } ;
struct TYPE_5__ {char* text; } ;
typedef  TYPE_2__ SDL_TextInputEvent ;

/* Variables and functions */
 int /*<<< orphan*/  CONTROL_MSG_TYPE_INJECT_TEXT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct control_msg*) ; 
 scalar_t__ FUNC5 (char) ; 

void
FUNC6(struct input_manager *input_manager,
                                 const SDL_TextInputEvent *event) {
    char c = event->text[0];
    if (FUNC5(c) || c == ' ') {
        FUNC1(event->text[1] == '\0');
        // letters and space are handled as raw key event
        return;
    }
    struct control_msg msg;
    msg.type = CONTROL_MSG_TYPE_INJECT_TEXT;
    msg.inject_text.text = FUNC3(event->text);
    if (!msg.inject_text.text) {
        FUNC0("Could not strdup input text");
        return;
    }
    if (!FUNC4(input_manager->controller, &msg)) {
        FUNC2(msg.inject_text.text);
        FUNC0("Could not request 'inject text'");
    }
}