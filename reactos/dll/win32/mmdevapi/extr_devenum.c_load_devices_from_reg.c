
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_4__ {int pwszVal; } ;
struct TYPE_5__ {scalar_t__ vt; TYPE_1__ u; int member_0; } ;
typedef TYPE_2__ PROPVARIANT ;
typedef int PROPERTYKEY ;
typedef scalar_t__ LONG ;
typedef int HRESULT ;
typedef int * HKEY ;
typedef int GUID ;
typedef int DWORD ;


 int ARRAY_SIZE (int *) ;
 int CLSIDFromString (int *,int *) ;
 int CoTaskMemFree (int ) ;
 int DEVICE_STATE_NOTPRESENT ;
 int DEVPKEY_Device_FriendlyName ;
 scalar_t__ ERROR_NO_MORE_ITEMS ;
 scalar_t__ ERROR_SUCCESS ;
 int E_FAIL ;
 int FALSE ;
 int GetProcessHeap () ;
 int * HKEY_LOCAL_MACHINE ;
 int * HeapAlloc (int ,int ,int) ;
 int KEY_READ ;
 int KEY_WOW64_64KEY ;
 int KEY_WRITE ;
 int MMDevice_Create (int *,int *,int,int ,int ) ;
 int MMDevice_GetPropValue (int *,int,int const*,TYPE_2__*) ;
 int RegCloseKey (int *) ;
 scalar_t__ RegCreateKeyExW (int *,int ,int ,int *,int ,int,int *,int **,int *) ;
 scalar_t__ RegEnumKeyExW (int *,int ,int *,int*,int *,int *,int *,int *) ;
 scalar_t__ SUCCEEDED (int ) ;
 int S_OK ;
 int VT_EMPTY ;
 scalar_t__ VT_LPWSTR ;
 int WARN (char*,scalar_t__) ;
 int eCapture ;
 int eRender ;
 int * key_capture ;
 int * key_render ;
 int lstrlenW (int ) ;
 int memcpy (int *,int ,int) ;
 int reg_capture ;
 int reg_render ;
 int software_mmdevapi ;

__attribute__((used)) static HRESULT load_devices_from_reg(void)
{
    DWORD i = 0;
    HKEY root, cur;
    LONG ret;
    DWORD curflow;

    ret = RegCreateKeyExW(HKEY_LOCAL_MACHINE, software_mmdevapi, 0, ((void*)0), 0, KEY_WRITE|KEY_READ|KEY_WOW64_64KEY, ((void*)0), &root, ((void*)0));
    if (ret == ERROR_SUCCESS)
        ret = RegCreateKeyExW(root, reg_capture, 0, ((void*)0), 0, KEY_READ|KEY_WRITE|KEY_WOW64_64KEY, ((void*)0), &key_capture, ((void*)0));
    if (ret == ERROR_SUCCESS)
        ret = RegCreateKeyExW(root, reg_render, 0, ((void*)0), 0, KEY_READ|KEY_WRITE|KEY_WOW64_64KEY, ((void*)0), &key_render, ((void*)0));
    RegCloseKey(root);
    cur = key_capture;
    curflow = eCapture;
    if (ret != ERROR_SUCCESS)
    {
        RegCloseKey(key_capture);
        key_render = key_capture = ((void*)0);
        WARN("Couldn't create key: %u\n", ret);
        return E_FAIL;
    }

    do {
        WCHAR guidvalue[39];
        GUID guid;
        DWORD len;
        PROPVARIANT pv = { VT_EMPTY };

        len = ARRAY_SIZE(guidvalue);
        ret = RegEnumKeyExW(cur, i++, guidvalue, &len, ((void*)0), ((void*)0), ((void*)0), ((void*)0));
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
        if (SUCCEEDED(CLSIDFromString(guidvalue, &guid))
            && SUCCEEDED(MMDevice_GetPropValue(&guid, curflow, (const PROPERTYKEY*)&DEVPKEY_Device_FriendlyName, &pv))
            && pv.vt == VT_LPWSTR)
        {
            DWORD size_bytes = (lstrlenW(pv.u.pwszVal) + 1) * sizeof(WCHAR);
            WCHAR *name = HeapAlloc(GetProcessHeap(), 0, size_bytes);
            memcpy(name, pv.u.pwszVal, size_bytes);
            MMDevice_Create(name, &guid, curflow,
                    DEVICE_STATE_NOTPRESENT, FALSE);
            CoTaskMemFree(pv.u.pwszVal);
        }
    } while (1);

    return S_OK;
}
