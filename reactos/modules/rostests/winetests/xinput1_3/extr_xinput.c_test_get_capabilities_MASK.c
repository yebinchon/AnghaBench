#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  Gamepad; } ;
typedef  TYPE_1__ XINPUT_CAPABILITIES ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ ERROR_BAD_ARGUMENTS ; 
 scalar_t__ ERROR_DEVICE_NOT_CONNECTED ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  XINPUT_FLAG_GAMEPAD ; 
 scalar_t__ XUSER_MAX_COUNT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__) ; 

__attribute__((used)) static void FUNC5(void)
{
    XINPUT_CAPABILITIES capabilities;
    DWORD controllerNum;
    DWORD result;

    for(controllerNum = 0; controllerNum < XUSER_MAX_COUNT; controllerNum++)
    {
        FUNC0(&capabilities, sizeof(XINPUT_CAPABILITIES));

        result = FUNC3(controllerNum, XINPUT_FLAG_GAMEPAD, &capabilities);
        FUNC2(result == ERROR_SUCCESS || result == ERROR_DEVICE_NOT_CONNECTED, "XInputGetCapabilities failed with (%d)\n", result);

        if (ERROR_DEVICE_NOT_CONNECTED == result)
        {
            FUNC4("Controller %d is not connected\n", controllerNum);
            continue;
        }

        /* Important to show that the results changed between 1.3 and 1.4 XInput version */
        FUNC1(&capabilities.Gamepad);
    }

    FUNC0(&capabilities, sizeof(XINPUT_CAPABILITIES));
    result = FUNC3(XUSER_MAX_COUNT+1, XINPUT_FLAG_GAMEPAD, &capabilities);
    FUNC2(result == ERROR_BAD_ARGUMENTS, "XInputGetCapabilities returned (%d)\n", result);
}