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

/* Variables and functions */
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  HANDLE_ACTION ; 
 int /*<<< orphan*/  INHIBIT_MODE ; 
 int /*<<< orphan*/  KILL_WHO ; 
 int /*<<< orphan*/  SESSION_CLASS ; 
 int /*<<< orphan*/  SESSION_STATE ; 
 int /*<<< orphan*/  SESSION_TYPE ; 
 int /*<<< orphan*/  USER_STATE ; 
 int /*<<< orphan*/  handle_action ; 
 int /*<<< orphan*/  inhibit_mode ; 
 int /*<<< orphan*/  kill_who ; 
 int /*<<< orphan*/  session_class ; 
 int /*<<< orphan*/  session_state ; 
 int /*<<< orphan*/  session_type ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  user_state ; 

int FUNC1(int argc, char **argv) {
        FUNC0(handle_action, HANDLE_ACTION);
        FUNC0(inhibit_mode, INHIBIT_MODE);
        FUNC0(kill_who, KILL_WHO);
        FUNC0(session_class, SESSION_CLASS);
        FUNC0(session_state, SESSION_STATE);
        FUNC0(session_type, SESSION_TYPE);
        FUNC0(user_state, USER_STATE);

        return EXIT_SUCCESS;
}