
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Gamepad; } ;
typedef TYPE_1__ XINPUT_CAPABILITIES ;
typedef scalar_t__ DWORD ;


 scalar_t__ ERROR_BAD_ARGUMENTS ;
 scalar_t__ ERROR_DEVICE_NOT_CONNECTED ;
 scalar_t__ ERROR_SUCCESS ;
 int XINPUT_FLAG_GAMEPAD ;
 scalar_t__ XUSER_MAX_COUNT ;
 int ZeroMemory (TYPE_1__*,int) ;
 int dump_gamepad (int *) ;
 int ok (int,char*,scalar_t__) ;
 scalar_t__ pXInputGetCapabilities (scalar_t__,int ,TYPE_1__*) ;
 int skip (char*,scalar_t__) ;

__attribute__((used)) static void test_get_capabilities(void)
{
    XINPUT_CAPABILITIES capabilities;
    DWORD controllerNum;
    DWORD result;

    for(controllerNum = 0; controllerNum < XUSER_MAX_COUNT; controllerNum++)
    {
        ZeroMemory(&capabilities, sizeof(XINPUT_CAPABILITIES));

        result = pXInputGetCapabilities(controllerNum, XINPUT_FLAG_GAMEPAD, &capabilities);
        ok(result == ERROR_SUCCESS || result == ERROR_DEVICE_NOT_CONNECTED, "XInputGetCapabilities failed with (%d)\n", result);

        if (ERROR_DEVICE_NOT_CONNECTED == result)
        {
            skip("Controller %d is not connected\n", controllerNum);
            continue;
        }


        dump_gamepad(&capabilities.Gamepad);
    }

    ZeroMemory(&capabilities, sizeof(XINPUT_CAPABILITIES));
    result = pXInputGetCapabilities(XUSER_MAX_COUNT+1, XINPUT_FLAG_GAMEPAD, &capabilities);
    ok(result == ERROR_BAD_ARGUMENTS, "XInputGetCapabilities returned (%d)\n", result);
}
