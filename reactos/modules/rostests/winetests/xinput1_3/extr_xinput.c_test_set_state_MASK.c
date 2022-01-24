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
struct TYPE_4__ {int wLeftMotorSpeed; int wRightMotorSpeed; } ;
typedef  TYPE_1__ XINPUT_VIBRATION ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ ERROR_BAD_ARGUMENTS ; 
 scalar_t__ ERROR_DEVICE_NOT_CONNECTED ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ XUSER_MAX_COUNT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (scalar_t__,TYPE_1__*) ; 

__attribute__((used)) static void FUNC5(void)
{
    XINPUT_VIBRATION vibrator;
    DWORD controllerNum;
    DWORD result;

    for(controllerNum = 0; controllerNum < XUSER_MAX_COUNT; controllerNum++)
    {
        FUNC1(&vibrator, sizeof(XINPUT_VIBRATION));

        vibrator.wLeftMotorSpeed = 32767;
        vibrator.wRightMotorSpeed = 32767;
        result = FUNC4(controllerNum, &vibrator);
        if (result == ERROR_DEVICE_NOT_CONNECTED) continue;

        FUNC0(250);
        vibrator.wLeftMotorSpeed = 0;
        vibrator.wRightMotorSpeed = 0;
        result = FUNC4(controllerNum, &vibrator);
        FUNC2(result == ERROR_SUCCESS, "XInputSetState failed with (%d)\n", result);

        /* Disabling XInput here, queueing a vibration and then re-enabling XInput
         * is used to prove that vibrations are auto enabled when resuming XInput.
         * If XInputEnable(1) is removed below the vibration will never play. */
        if (&pXInputEnable) FUNC3(0);

        FUNC0(250);
        vibrator.wLeftMotorSpeed = 65535;
        vibrator.wRightMotorSpeed = 65535;
        result = FUNC4(controllerNum, &vibrator);
        FUNC2(result == ERROR_SUCCESS, "XInputSetState failed with (%d)\n", result);

        if (&pXInputEnable) FUNC3(1);
        FUNC0(250);

        vibrator.wLeftMotorSpeed = 0;
        vibrator.wRightMotorSpeed = 0;
        result = FUNC4(controllerNum, &vibrator);
        FUNC2(result == ERROR_SUCCESS, "XInputSetState failed with (%d)\n", result);
    }

    result = FUNC4(XUSER_MAX_COUNT+1, &vibrator);
    FUNC2(result == ERROR_BAD_ARGUMENTS, "XInputSetState returned (%d)\n", result);
}