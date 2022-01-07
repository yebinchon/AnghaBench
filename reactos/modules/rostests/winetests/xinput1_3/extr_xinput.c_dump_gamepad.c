
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sThumbRY; int sThumbRX; int sThumbLY; int sThumbLX; int bRightTrigger; int bLeftTrigger; int wButtons; } ;
typedef TYPE_1__ XINPUT_GAMEPAD ;


 int trace (char*,...) ;

__attribute__((used)) static void dump_gamepad(XINPUT_GAMEPAD *data)
{
    trace("-- Gamepad Variables --\n");
    trace("Gamepad.wButtons: %#x\n", data->wButtons);
    trace("Gamepad.bLeftTrigger: %d\n", data->bLeftTrigger);
    trace("Gamepad.bRightTrigger: %d\n", data->bRightTrigger);
    trace("Gamepad.sThumbLX: %d\n", data->sThumbLX);
    trace("Gamepad.sThumbLY: %d\n", data->sThumbLY);
    trace("Gamepad.sThumbRX: %d\n", data->sThumbRX);
    trace("Gamepad.sThumbRY: %d\n\n", data->sThumbRY);
}
