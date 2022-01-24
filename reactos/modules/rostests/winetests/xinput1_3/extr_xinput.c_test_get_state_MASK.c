#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  state ;
struct TYPE_8__ {int /*<<< orphan*/  sThumbRY; int /*<<< orphan*/  sThumbRX; int /*<<< orphan*/  sThumbLY; int /*<<< orphan*/  sThumbLX; int /*<<< orphan*/  bRightTrigger; int /*<<< orphan*/  bLeftTrigger; int /*<<< orphan*/  wButtons; } ;
struct TYPE_7__ {int dwPacketNumber; TYPE_2__ Gamepad; } ;
typedef  TYPE_1__ XINPUT_STATE ;
typedef  TYPE_2__ XINPUT_GAMEPAD ;
typedef  int DWORD ;

/* Variables and functions */
 int ERROR_BAD_ARGUMENTS ; 
 int ERROR_DEVICE_NOT_CONNECTED ; 
 int ERROR_SUCCESS ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int XUSER_MAX_COUNT ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 
 int FUNC5 (int,TYPE_1__*) ; 
 int FUNC6 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 scalar_t__ winetest_interactive ; 

__attribute__((used)) static void FUNC9(void)
{
    XINPUT_STATE state;
    DWORD controllerNum, i, result, good = XUSER_MAX_COUNT;

    for (i = 0; i < (&pXInputGetStateEx ? 2 : 1); i++)
    {
        for (controllerNum = 0; controllerNum < XUSER_MAX_COUNT; controllerNum++)
        {
            FUNC2(&state, sizeof(state));

            if (i == 0)
                result = FUNC5(controllerNum, &state);
            else
                result = FUNC6(controllerNum, &state);
            FUNC4(result == ERROR_SUCCESS || result == ERROR_DEVICE_NOT_CONNECTED,
               "%s failed with (%d)\n", i == 0 ? "XInputGetState" : "XInputGetStateEx", result);

            if (ERROR_DEVICE_NOT_CONNECTED == result)
            {
                FUNC7("Controller %d is not connected\n", controllerNum);
                continue;
            }

            FUNC8("-- Results for controller %d --\n", controllerNum);
            if (i == 0)
            {
                good = controllerNum;
                FUNC8("XInputGetState: %d\n", result);
            }
            else
                FUNC8("XInputGetStateEx: %d\n", result);
            FUNC8("State->dwPacketNumber: %d\n", state.dwPacketNumber);
            FUNC3(&state.Gamepad);
        }
    }

    result = FUNC5(XUSER_MAX_COUNT, &state);
    FUNC4(result == ERROR_BAD_ARGUMENTS, "XInputGetState returned (%d)\n", result);

    result = FUNC5(XUSER_MAX_COUNT+1, &state);
    FUNC4(result == ERROR_BAD_ARGUMENTS, "XInputGetState returned (%d)\n", result);
    if (&pXInputGetStateEx)
    {
        result = FUNC6(XUSER_MAX_COUNT, &state);
        FUNC4(result == ERROR_BAD_ARGUMENTS, "XInputGetState returned (%d)\n", result);

        result = FUNC6(XUSER_MAX_COUNT+1, &state);
        FUNC4(result == ERROR_BAD_ARGUMENTS, "XInputGetState returned (%d)\n", result);
    }

    if (winetest_interactive && good < XUSER_MAX_COUNT)
    {
        DWORD now = FUNC0(), packet = 0;
        XINPUT_GAMEPAD *game = &state.Gamepad;

        FUNC8("You have 20 seconds to test the joystick freely\n");
        do
        {
            FUNC1(100);
            FUNC5(good, &state);
            if (state.dwPacketNumber == packet)
                continue;

            packet = state.dwPacketNumber;
            FUNC8("Buttons 0x%04X Triggers %3d/%3d LT %6d/%6d RT %6d/%6d\n",
                  game->wButtons, game->bLeftTrigger, game->bRightTrigger,
                  game->sThumbLX, game->sThumbLY, game->sThumbRX, game->sThumbRY);
        }
        while(FUNC0() - now < 20000);
        FUNC8("Test over...\n");
    }
}