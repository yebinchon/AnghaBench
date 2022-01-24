#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_4__ {int /*<<< orphan*/  pwszVal; } ;
struct TYPE_5__ {scalar_t__ vt; TYPE_1__ u; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ PROPVARIANT ;
typedef  int /*<<< orphan*/  PROPERTYKEY ;
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/ * HKEY ;
typedef  int /*<<< orphan*/  GUID ;
typedef  int DWORD ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DEVICE_STATE_NOTPRESENT ; 
 int /*<<< orphan*/  DEVPKEY_Device_FriendlyName ; 
 scalar_t__ ERROR_NO_MORE_ITEMS ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  E_FAIL ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/ * HKEY_LOCAL_MACHINE ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int KEY_READ ; 
 int KEY_WOW64_64KEY ; 
 int KEY_WRITE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/  const*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  VT_EMPTY ; 
 scalar_t__ VT_LPWSTR ; 
 int /*<<< orphan*/  FUNC11 (char*,scalar_t__) ; 
 int eCapture ; 
 int eRender ; 
 int /*<<< orphan*/ * key_capture ; 
 int /*<<< orphan*/ * key_render ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  reg_capture ; 
 int /*<<< orphan*/  reg_render ; 
 int /*<<< orphan*/  software_mmdevapi ; 

__attribute__((used)) static HRESULT FUNC14(void)
{
    DWORD i = 0;
    HKEY root, cur;
    LONG ret;
    DWORD curflow;

    ret = FUNC8(HKEY_LOCAL_MACHINE, software_mmdevapi, 0, NULL, 0, KEY_WRITE|KEY_READ|KEY_WOW64_64KEY, NULL, &root, NULL);
    if (ret == ERROR_SUCCESS)
        ret = FUNC8(root, reg_capture, 0, NULL, 0, KEY_READ|KEY_WRITE|KEY_WOW64_64KEY, NULL, &key_capture, NULL);
    if (ret == ERROR_SUCCESS)
        ret = FUNC8(root, reg_render, 0, NULL, 0, KEY_READ|KEY_WRITE|KEY_WOW64_64KEY, NULL, &key_render, NULL);
    FUNC7(root);
    cur = key_capture;
    curflow = eCapture;
    if (ret != ERROR_SUCCESS)
    {
        FUNC7(key_capture);
        key_render = key_capture = NULL;
        FUNC11("Couldn't create key: %u\n", ret);
        return E_FAIL;
    }

    do {
        WCHAR guidvalue[39];
        GUID guid;
        DWORD len;
        PROPVARIANT pv = { VT_EMPTY };

        len = FUNC0(guidvalue);
        ret = FUNC9(cur, i++, guidvalue, &len, NULL, NULL, NULL, NULL);
        if (ret == ERROR_NO_MORE_ITEMS)
        {
            if (cur == key_capture)
            {
                cur = key_render;
                curflow = eRender;
                i = 0;
                continue;
            }
            break;
        }
        if (ret != ERROR_SUCCESS)
            continue;
        if (FUNC10(FUNC1(guidvalue, &guid))
            && FUNC10(FUNC6(&guid, curflow, (const PROPERTYKEY*)&DEVPKEY_Device_FriendlyName, &pv))
            && pv.vt == VT_LPWSTR)
        {
            DWORD size_bytes = (FUNC12(pv.u.pwszVal) + 1) * sizeof(WCHAR);
            WCHAR *name = FUNC4(FUNC3(), 0, size_bytes);
            FUNC13(name, pv.u.pwszVal, size_bytes);
            FUNC5(name, &guid, curflow,
                    DEVICE_STATE_NOTPRESENT, FALSE);
            FUNC2(pv.u.pwszVal);
        }
    } while (1);

    return S_OK;
}