#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  sThumbRY; int /*<<< orphan*/  sThumbRX; int /*<<< orphan*/  sThumbLY; int /*<<< orphan*/  sThumbLX; int /*<<< orphan*/  bRightTrigger; int /*<<< orphan*/  bLeftTrigger; int /*<<< orphan*/  wButtons; } ;
typedef  TYPE_1__ XINPUT_GAMEPAD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void FUNC1(XINPUT_GAMEPAD *data)
{
    FUNC0("-- Gamepad Variables --\n");
    FUNC0("Gamepad.wButtons: %#x\n", data->wButtons);
    FUNC0("Gamepad.bLeftTrigger: %d\n", data->bLeftTrigger);
    FUNC0("Gamepad.bRightTrigger: %d\n", data->bRightTrigger);
    FUNC0("Gamepad.sThumbLX: %d\n", data->sThumbLX);
    FUNC0("Gamepad.sThumbLY: %d\n", data->sThumbLY);
    FUNC0("Gamepad.sThumbRX: %d\n", data->sThumbRX);
    FUNC0("Gamepad.sThumbRY: %d\n\n", data->sThumbRY);
}