
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int regval ;
typedef char WCHAR ;
struct TYPE_13__ {int member_0; int member_1; int member_2; int member_3; int member_4; int member_5; int member_6; int member_7; } ;
struct TYPE_12__ {int member_0; int member_1; int member_2; TYPE_2__ member_3; } ;
struct TYPE_16__ {int member_1; TYPE_1__ member_0; } ;
struct TYPE_14__ {char* pwszVal; int ulVal; } ;
struct TYPE_15__ {TYPE_3__ u; int vt; } ;
typedef TYPE_4__ PROPVARIANT ;
typedef TYPE_5__ PROPERTYKEY ;
typedef int LPBYTE ;
typedef int LONG ;
typedef int IPropertyStore ;
typedef scalar_t__ HRESULT ;
typedef int HKEY ;
typedef int DWORD ;


 int CoTaskMemFree (char*) ;
 int ERROR_FILE_NOT_FOUND ;
 int ERROR_SUCCESS ;
 scalar_t__ E_ACCESSDENIED ;
 int HKEY_LOCAL_MACHINE ;
 scalar_t__ IPropertyStore_GetValue (int *,TYPE_5__ const*,TYPE_4__*) ;
 scalar_t__ IPropertyStore_SetValue (int *,TYPE_5__ const*,TYPE_4__*) ;
 int KEY_READ ;
 int KEY_WOW64_64KEY ;
 TYPE_5__ const PKEY_AudioEndpoint_GUID ;
 int PropVariantInit (TYPE_4__*) ;
 int REG_DWORD ;
 int RegCloseKey (int ) ;
 int RegOpenKeyExW (int ,char*,int ,int,int *) ;
 int RegQueryValueExW (int ,char const*,int *,int*,int ,int*) ;
 scalar_t__ S_OK ;
 int VT_EMPTY ;
 int VT_UI4 ;
 int ok (int,char*,int) ;
 char* propertiesW ;
 char* software_renderW ;
 int win_skip (char*) ;

__attribute__((used)) static void test_setvalue_on_wow64(IPropertyStore *store)
{
    PROPVARIANT pv;
    HRESULT hr;
    LONG ret;
    WCHAR *guidW;
    HKEY root, props, devkey;
    DWORD type, regval, size;

    static const PROPERTYKEY PKEY_Bogus = {
        {0x1da5d803, 0xd492, 0x4edd, {0x8c, 0x23, 0xe0, 0xc0, 0xff, 0xee, 0x7f, 0x00}}, 0x7f
    };
    static const WCHAR bogusW[] = {'{','1','D','A','5','D','8','0','3','-','D','4','9','2','-','4','E','D','D','-','8','C','2','3','-','E','0','C','0','F','F','E','E','7','F','0','0','}',',','1','2','7',0};

    PropVariantInit(&pv);

    pv.vt = VT_EMPTY;
    hr = IPropertyStore_GetValue(store, &PKEY_AudioEndpoint_GUID, &pv);
    ok(hr == S_OK, "Failed to get Endpoint GUID: %08x\n", hr);

    guidW = pv.u.pwszVal;

    pv.vt = VT_UI4;
    pv.u.ulVal = 0xAB;

    hr = IPropertyStore_SetValue(store, &PKEY_Bogus, &pv);
    ok(hr == S_OK || hr == E_ACCESSDENIED, "SetValue failed: %08x\n", hr);
    if (hr != S_OK)
    {
        win_skip("Missing permission to write to registry\n");
        return;
    }

    pv.u.ulVal = 0x00;

    hr = IPropertyStore_GetValue(store, &PKEY_Bogus, &pv);
    ok(hr == S_OK, "GetValue failed: %08x\n", hr);
    ok(pv.u.ulVal == 0xAB, "Got wrong value: 0x%x\n", pv.u.ulVal);


    ret = RegOpenKeyExW(HKEY_LOCAL_MACHINE, software_renderW, 0, KEY_READ|KEY_WOW64_64KEY, &root);
    ok(ret == ERROR_SUCCESS, "Couldn't open mmdevices Render key: %u\n", ret);

    ret = RegOpenKeyExW(root, guidW, 0, KEY_READ|KEY_WOW64_64KEY, &devkey);
    ok(ret == ERROR_SUCCESS, "Couldn't open mmdevice guid key: %u\n", ret);

    ret = RegOpenKeyExW(devkey, propertiesW, 0, KEY_READ|KEY_WOW64_64KEY, &props);
    ok(ret == ERROR_SUCCESS, "Couldn't open mmdevice property key: %u\n", ret);


    size = sizeof(regval);
    ret = RegQueryValueExW(props, bogusW, ((void*)0), &type, (LPBYTE)&regval, &size);
    ok(ret == ERROR_SUCCESS, "Couldn't get bogus propertykey value: %u\n", ret);
    ok(type == REG_DWORD, "Got wrong value type: %u\n", type);
    ok(regval == 0xAB, "Got wrong value: 0x%x\n", regval);

    RegCloseKey(props);
    RegCloseKey(devkey);
    RegCloseKey(root);

    CoTaskMemFree(guidW);


    ret = RegOpenKeyExW(HKEY_LOCAL_MACHINE, software_renderW, 0, KEY_READ, &root);
    ok(ret == ERROR_FILE_NOT_FOUND, "Wrong error when opening mmdevices Render key: %u\n", ret);
}
