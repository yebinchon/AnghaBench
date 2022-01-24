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
typedef  int /*<<< orphan*/  XINPUT_KEYSTROKE ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ ERROR_BAD_ARGUMENTS ; 
 scalar_t__ ERROR_DEVICE_NOT_CONNECTED ; 
 scalar_t__ ERROR_EMPTY ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  XINPUT_FLAG_GAMEPAD ; 
 scalar_t__ XUSER_MAX_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__) ; 

__attribute__((used)) static void FUNC4(void)
{
    XINPUT_KEYSTROKE keystroke;
    DWORD controllerNum;
    DWORD result;

    for(controllerNum = 0; controllerNum < XUSER_MAX_COUNT; controllerNum++)
    {
        FUNC0(&keystroke, sizeof(XINPUT_KEYSTROKE));

        result = FUNC2(controllerNum, XINPUT_FLAG_GAMEPAD, &keystroke);
        FUNC1(result == ERROR_EMPTY || result == ERROR_SUCCESS || result == ERROR_DEVICE_NOT_CONNECTED,
           "XInputGetKeystroke failed with (%d)\n", result);

        if (ERROR_DEVICE_NOT_CONNECTED == result)
        {
            FUNC3("Controller %d is not connected\n", controllerNum);
        }
    }

    FUNC0(&keystroke, sizeof(XINPUT_KEYSTROKE));
    result = FUNC2(XUSER_MAX_COUNT+1, XINPUT_FLAG_GAMEPAD, &keystroke);
    FUNC1(result == ERROR_BAD_ARGUMENTS, "XInputGetKeystroke returned (%d)\n", result);
}