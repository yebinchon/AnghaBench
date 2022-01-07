
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int obj_data ;
struct TYPE_3__ {scalar_t__ uAppData; } ;
typedef int IDirectInputDevice8A ;
typedef scalar_t__ HRESULT ;
typedef scalar_t__ DWORD ;
typedef TYPE_1__ DIDEVICEOBJECTDATA ;


 int DIK_SPACE ;
 scalar_t__ DI_BUFFEROVERFLOW ;
 scalar_t__ DI_OK ;
 scalar_t__ IDirectInputDevice8_Acquire (int *) ;
 scalar_t__ IDirectInputDevice8_GetDeviceData (int *,int,TYPE_1__*,scalar_t__*,int ) ;
 int IDirectInputDevice8_Poll (int *) ;
 int IDirectInputDevice_Unacquire (int *) ;
 scalar_t__ INPUT_KEYBOARD ;
 scalar_t__ INPUT_MOUSE ;
 int KEYEVENTF_KEYUP ;
 scalar_t__ MOUSEEVENTF_LEFTDOWN ;
 scalar_t__ MOUSEEVENTF_LEFTUP ;
 int SUCCEEDED (scalar_t__) ;
 scalar_t__ VK_SPACE ;
 int flush_events () ;
 int keybd_event (scalar_t__,int ,int ,int ) ;
 int mouse_event (scalar_t__,int,int,int ,int ) ;
 int ok (int,char*,scalar_t__,...) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_device_input(IDirectInputDevice8A *lpdid, DWORD event_type, DWORD event, DWORD expected)
{
    HRESULT hr;
    DIDEVICEOBJECTDATA obj_data;
    DWORD data_size = 1;
    int i;

    hr = IDirectInputDevice8_Acquire(lpdid);
    ok (SUCCEEDED(hr), "Failed to acquire device hr=%08x\n", hr);

    if (event_type == INPUT_KEYBOARD)
        keybd_event( event, DIK_SPACE, 0, 0);

    if (event_type == INPUT_MOUSE)
        mouse_event( event, 0, 0, 0, 0);

    flush_events();
    IDirectInputDevice8_Poll(lpdid);
    hr = IDirectInputDevice8_GetDeviceData(lpdid, sizeof(obj_data), &obj_data, &data_size, 0);

    if (data_size != 1)
    {
        win_skip("We're not able to inject input into Windows dinput8 with events\n");
        IDirectInputDevice_Unacquire(lpdid);
        return;
    }

    ok (obj_data.uAppData == expected, "Retrieval of action failed uAppData=%lu expected=%d\n", obj_data.uAppData, expected);


    for (i = 0; i < 17; i++)
        if (event_type == INPUT_KEYBOARD)
        {
            keybd_event( VK_SPACE, DIK_SPACE, 0, 0);
            keybd_event( VK_SPACE, DIK_SPACE, KEYEVENTF_KEYUP, 0);
        }
        else if (event_type == INPUT_MOUSE)
        {
            mouse_event(MOUSEEVENTF_LEFTDOWN, 1, 1, 0, 0);
            mouse_event(MOUSEEVENTF_LEFTUP, 1, 1, 0, 0);
        }

    flush_events();
    IDirectInputDevice8_Poll(lpdid);

    data_size = 1;
    hr = IDirectInputDevice8_GetDeviceData(lpdid, sizeof(obj_data), &obj_data, &data_size, 0);
    ok(hr == DI_BUFFEROVERFLOW, "GetDeviceData() failed: %08x\n", hr);
    data_size = 1;
    hr = IDirectInputDevice8_GetDeviceData(lpdid, sizeof(obj_data), &obj_data, &data_size, 0);
    ok(hr == DI_OK && data_size == 1, "GetDeviceData() failed: %08x cnt:%d\n", hr, data_size);

    IDirectInputDevice_Unacquire(lpdid);
}
