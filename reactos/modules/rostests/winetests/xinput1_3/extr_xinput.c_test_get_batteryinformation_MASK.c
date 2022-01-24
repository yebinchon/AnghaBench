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
struct TYPE_4__ {scalar_t__ BatteryLevel; } ;
typedef  TYPE_1__ XINPUT_BATTERY_INFORMATION ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  BATTERY_DEVTYPE_GAMEPAD ; 
 scalar_t__ BATTERY_TYPE_DISCONNECTED ; 
 scalar_t__ ERROR_BAD_ARGUMENTS ; 
 scalar_t__ ERROR_DEVICE_NOT_CONNECTED ; 
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ XUSER_MAX_COUNT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__) ; 

__attribute__((used)) static void FUNC4(void)
{
    DWORD controllerNum;
    DWORD result;
    XINPUT_BATTERY_INFORMATION batteryInfo;

    for(controllerNum = 0; controllerNum < XUSER_MAX_COUNT; controllerNum++)
    {
        FUNC0(&batteryInfo, sizeof(XINPUT_BATTERY_INFORMATION));

        result = FUNC2(controllerNum, BATTERY_DEVTYPE_GAMEPAD, &batteryInfo);
        FUNC1(result == ERROR_SUCCESS || result == ERROR_DEVICE_NOT_CONNECTED, "XInputGetBatteryInformation failed with (%d)\n", result);

        if (ERROR_DEVICE_NOT_CONNECTED == result)
        {
            FUNC1(batteryInfo.BatteryLevel == BATTERY_TYPE_DISCONNECTED, "Failed to report device as being disconnected.\n");
            FUNC3("Controller %d is not connected\n", controllerNum);
        }
    }

    result = FUNC2(XUSER_MAX_COUNT+1, BATTERY_DEVTYPE_GAMEPAD, &batteryInfo);
    FUNC1(result == ERROR_BAD_ARGUMENTS, "XInputGetBatteryInformation returned (%d)\n", result);
}