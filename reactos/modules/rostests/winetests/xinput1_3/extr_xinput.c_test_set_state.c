
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int wLeftMotorSpeed; int wRightMotorSpeed; } ;
typedef TYPE_1__ XINPUT_VIBRATION ;
typedef scalar_t__ DWORD ;


 scalar_t__ ERROR_BAD_ARGUMENTS ;
 scalar_t__ ERROR_DEVICE_NOT_CONNECTED ;
 scalar_t__ ERROR_SUCCESS ;
 int Sleep (int) ;
 scalar_t__ XUSER_MAX_COUNT ;
 int ZeroMemory (TYPE_1__*,int) ;
 int ok (int,char*,scalar_t__) ;
 int pXInputEnable (int) ;
 scalar_t__ pXInputSetState (scalar_t__,TYPE_1__*) ;

__attribute__((used)) static void test_set_state(void)
{
    XINPUT_VIBRATION vibrator;
    DWORD controllerNum;
    DWORD result;

    for(controllerNum = 0; controllerNum < XUSER_MAX_COUNT; controllerNum++)
    {
        ZeroMemory(&vibrator, sizeof(XINPUT_VIBRATION));

        vibrator.wLeftMotorSpeed = 32767;
        vibrator.wRightMotorSpeed = 32767;
        result = pXInputSetState(controllerNum, &vibrator);
        if (result == ERROR_DEVICE_NOT_CONNECTED) continue;

        Sleep(250);
        vibrator.wLeftMotorSpeed = 0;
        vibrator.wRightMotorSpeed = 0;
        result = pXInputSetState(controllerNum, &vibrator);
        ok(result == ERROR_SUCCESS, "XInputSetState failed with (%d)\n", result);




        if (pXInputEnable) pXInputEnable(0);

        Sleep(250);
        vibrator.wLeftMotorSpeed = 65535;
        vibrator.wRightMotorSpeed = 65535;
        result = pXInputSetState(controllerNum, &vibrator);
        ok(result == ERROR_SUCCESS, "XInputSetState failed with (%d)\n", result);

        if (pXInputEnable) pXInputEnable(1);
        Sleep(250);

        vibrator.wLeftMotorSpeed = 0;
        vibrator.wRightMotorSpeed = 0;
        result = pXInputSetState(controllerNum, &vibrator);
        ok(result == ERROR_SUCCESS, "XInputSetState failed with (%d)\n", result);
    }

    result = pXInputSetState(XUSER_MAX_COUNT+1, &vibrator);
    ok(result == ERROR_BAD_ARGUMENTS, "XInputSetState returned (%d)\n", result);
}
