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
typedef  int /*<<< orphan*/  obj_data ;
struct TYPE_3__ {scalar_t__ uAppData; } ;
typedef  int /*<<< orphan*/  IDirectInputDevice8A ;
typedef  scalar_t__ HRESULT ;
typedef  scalar_t__ DWORD ;
typedef  TYPE_1__ DIDEVICEOBJECTDATA ;

/* Variables and functions */
 int /*<<< orphan*/  DIK_SPACE ; 
 scalar_t__ DI_BUFFEROVERFLOW ; 
 scalar_t__ DI_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int,TYPE_1__*,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ INPUT_KEYBOARD ; 
 scalar_t__ INPUT_MOUSE ; 
 int /*<<< orphan*/  KEYEVENTF_KEYUP ; 
 scalar_t__ MOUSEEVENTF_LEFTDOWN ; 
 scalar_t__ MOUSEEVENTF_LEFTUP ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ VK_SPACE ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static void FUNC10(IDirectInputDevice8A *lpdid, DWORD event_type, DWORD event, DWORD expected)
{
    HRESULT hr;
    DIDEVICEOBJECTDATA obj_data;
    DWORD data_size = 1;
    int i;

    hr = FUNC0(lpdid);
    FUNC8 (FUNC4(hr), "Failed to acquire device hr=%08x\n", hr);

    if (event_type == INPUT_KEYBOARD)
        FUNC6( event, DIK_SPACE, 0, 0);

    if (event_type == INPUT_MOUSE)
        FUNC7( event, 0, 0, 0, 0);

    FUNC5();
    FUNC2(lpdid);
    hr = FUNC1(lpdid, sizeof(obj_data), &obj_data, &data_size, 0);

    if (data_size != 1)
    {
        FUNC9("We're not able to inject input into Windows dinput8 with events\n");
        FUNC3(lpdid);
        return;
    }

    FUNC8 (obj_data.uAppData == expected, "Retrieval of action failed uAppData=%lu expected=%d\n", obj_data.uAppData, expected);

    /* Check for buffer overflow */
    for (i = 0; i < 17; i++)
        if (event_type == INPUT_KEYBOARD)
        {
            FUNC6( VK_SPACE, DIK_SPACE, 0, 0);
            FUNC6( VK_SPACE, DIK_SPACE, KEYEVENTF_KEYUP, 0);
        }
        else if (event_type == INPUT_MOUSE)
        {
            FUNC7(MOUSEEVENTF_LEFTDOWN, 1, 1, 0, 0);
            FUNC7(MOUSEEVENTF_LEFTUP, 1, 1, 0, 0);
        }

    FUNC5();
    FUNC2(lpdid);

    data_size = 1;
    hr = FUNC1(lpdid, sizeof(obj_data), &obj_data, &data_size, 0);
    FUNC8(hr == DI_BUFFEROVERFLOW, "GetDeviceData() failed: %08x\n", hr);
    data_size = 1;
    hr = FUNC1(lpdid, sizeof(obj_data), &obj_data, &data_size, 0);
    FUNC8(hr == DI_OK && data_size == 1, "GetDeviceData() failed: %08x cnt:%d\n", hr, data_size);

    FUNC3(lpdid);
}