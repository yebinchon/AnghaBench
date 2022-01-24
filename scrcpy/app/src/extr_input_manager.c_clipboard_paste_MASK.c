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
struct controller {int dummy; } ;
struct TYPE_2__ {char* text; } ;
struct control_msg {TYPE_1__ inject_text; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONTROL_MSG_TYPE_INJECT_TEXT ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 char* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct controller*,struct control_msg*) ; 

__attribute__((used)) static void
FUNC5(struct controller *controller) {
    char *text = FUNC1();
    if (!text) {
        FUNC0("Could not get clipboard text: %s", FUNC2());
        return;
    }
    if (!*text) {
        // empty text
        FUNC3(text);
        return;
    }

    struct control_msg msg;
    msg.type = CONTROL_MSG_TYPE_INJECT_TEXT;
    msg.inject_text.text = text;
    if (!FUNC4(controller, &msg)) {
        FUNC3(text);
        FUNC0("Could not request 'paste clipboard'");
    }
}