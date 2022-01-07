
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dword ;
typedef int WCHAR ;
typedef int LONG ;
typedef int IRegistrar ;
typedef int INT ;
typedef int HRESULT ;
typedef int HKEY ;
typedef int DWORD ;
typedef int BYTE ;


 int CLSCTX_INPROC_SERVER ;
 int CLSID_Registrar ;
 int CP_ACP ;
 int CoCreateInstance (int *,int *,int ,int *,void**) ;
 int ERROR_SUCCESS ;
 scalar_t__ FAILED (int) ;
 int GetModuleHandleA (char*) ;
 int GetProcAddress (int ,char*) ;
 int GetProcessHeap () ;
 int HKEY_CURRENT_USER ;
 int * HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,int *) ;
 int IID_IRegistrar ;
 int IRegistrar_Release (int *) ;
 int IRegistrar_StringRegister (int *,int *) ;
 int IRegistrar_StringUnregister (int *,int *) ;
 int MultiByteToWideChar (int ,int ,int ,int,int *,int) ;
 int RegCloseKey (int ) ;
 int RegOpenKeyA (int ,char*,int *) ;
 int RegQueryValueExA (int ,char*,int *,int *,int*,int*) ;
 int SUCCEEDED (int) ;
 int S_OK ;
 int ok (int,char*,...) ;
 int skip (char*) ;
 int textA ;
 int win_skip (char*,...) ;

__attribute__((used)) static void test_registrar(void)
{
    IRegistrar *registrar = ((void*)0);
    HRESULT hr;
    INT count;
    WCHAR *textW = ((void*)0);

    if (!GetProcAddress(GetModuleHandleA("atl.dll"), "AtlAxAttachControl"))
    {
        win_skip("Old versions of atl.dll don't support binary values\n");
        return;
    }

    hr = CoCreateInstance(&CLSID_Registrar, ((void*)0), CLSCTX_INPROC_SERVER, &IID_IRegistrar, (void**)&registrar);
    if (FAILED(hr))
    {
        win_skip("creating IRegistrar failed, hr = 0x%08X\n", hr);
        return;
    }

    count = MultiByteToWideChar(CP_ACP, 0, textA, -1, ((void*)0), 0);
    textW = HeapAlloc(GetProcessHeap(), 0, count * sizeof(WCHAR));
    if (textW)
    {
        DWORD dword;
        DWORD size;
        LONG lret;
        HKEY key;
        BYTE bytes[4];

        MultiByteToWideChar(CP_ACP, 0, textA, -1, textW, count);
        hr = IRegistrar_StringRegister(registrar, textW);
        ok(hr == S_OK, "StringRegister failed: %08x\n", hr);
        if (FAILED(hr))
        {
            IRegistrar_Release(registrar);
            return;
        }

        lret = RegOpenKeyA(HKEY_CURRENT_USER, "eebf73c4-50fd-478f-bbcf-db212221227a", &key);
        ok(lret == ERROR_SUCCESS, "error %d opening registry key\n", lret);

        size = sizeof(dword);
        lret = RegQueryValueExA(key, "dword_unquoted_hex", ((void*)0), ((void*)0), (BYTE*)&dword, &size);
        ok(lret == ERROR_SUCCESS, "RegQueryValueExA failed, error %d\n", lret);
        ok(dword != 0xA, "unquoted hex is not supposed to be preserved\n");

        size = sizeof(dword);
        lret = RegQueryValueExA(key, "dword_quoted_hex", ((void*)0), ((void*)0), (BYTE*)&dword, &size);
        ok(lret == ERROR_SUCCESS, "RegQueryValueExA failed, error %d\n", lret);
        ok(dword != 0xA, "quoted hex is not supposed to be preserved\n");

        size = sizeof(dword);
        lret = RegQueryValueExA(key, "dword_unquoted_dec", ((void*)0), ((void*)0), (BYTE*)&dword, &size);
        ok(lret == ERROR_SUCCESS, "RegQueryValueExA failed, error %d\n", lret);
        ok(dword == 1, "unquoted dec is not supposed to be %d\n", dword);

        size = sizeof(dword);
        lret = RegQueryValueExA(key, "dword_quoted_dec", ((void*)0), ((void*)0), (BYTE*)&dword, &size);
        ok(lret == ERROR_SUCCESS, "RegQueryValueExA failed, error %d\n", lret);
        ok(dword == 1, "quoted dec is not supposed to be %d\n", dword);

        size = 4;
        lret = RegQueryValueExA(key, "binary_quoted", ((void*)0), ((void*)0), bytes, &size);
        ok(lret == ERROR_SUCCESS, "RegQueryValueA, failed, error %d\n", lret);
        ok(bytes[0] == 0xde && bytes[1] == 0xad && bytes[2] == 0xbe && bytes[3] == 0xef,
            "binary quoted value was not preserved (it's 0x%02X%02X%02X%02X)\n",
            0xff & bytes[0], 0xff & bytes[1], 0xff & bytes[2], 0xff & bytes[3]);

        size = 4;
        lret = RegQueryValueExA(key, "binary_unquoted", ((void*)0), ((void*)0), bytes, &size);
        ok(lret == ERROR_SUCCESS, "RegQueryValueA, failed, error %d\n", lret);
        ok(bytes[0] == 0xde && bytes[1] == 0xad && bytes[2] == 0xbe && bytes[3] == 0xef,
            "binary unquoted value was not preserved (it's 0x%02X%02X%02X%02X)\n",
            0xff & bytes[0], 0xff & bytes[1], 0xff & bytes[2], 0xff & bytes[3]);

        hr = IRegistrar_StringUnregister(registrar, textW);
        ok(SUCCEEDED(hr), "IRegistrar_StringUnregister failed, hr = 0x%08X\n", hr);
        RegCloseKey(key);

        HeapFree(GetProcessHeap(), 0, textW);
    }
    else
        skip("allocating memory failed\n");

    IRegistrar_Release(registrar);
}
