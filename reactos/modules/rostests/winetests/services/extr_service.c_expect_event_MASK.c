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
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ WAIT_OBJECT_0 ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__* current_event ; 
 int /*<<< orphan*/  event_cs ; 
 int /*<<< orphan*/  event_handle ; 
 int /*<<< orphan*/  FUNC3 (int,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 

__attribute__((used)) static void FUNC7(const char *event_name)
{
    char evt[32];
    DWORD res;

    FUNC6("waiting for %s\n", event_name);

    res = FUNC2(event_handle, 30000);
    FUNC3(res == WAIT_OBJECT_0, "WaitForSingleObject failed: %u\n", res);
    if(res != WAIT_OBJECT_0)
        return;

    FUNC0(&event_cs);
    FUNC5(evt, current_event);
    *current_event = 0;
    FUNC1(&event_cs);

    FUNC3(!FUNC4(evt, event_name), "Unexpected event: %s, expected %s\n", evt, event_name);
}