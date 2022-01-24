#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  dword ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int LONG ;
typedef  int /*<<< orphan*/  IRegistrar ;
typedef  int INT ;
typedef  int HRESULT ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int DWORD ;
typedef  int BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  CLSID_Registrar ; 
 int /*<<< orphan*/  CP_ACP ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int ERROR_SUCCESS ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  HKEY_CURRENT_USER ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IRegistrar ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int*) ; 
 int FUNC14 (int) ; 
 int S_OK ; 
 int /*<<< orphan*/  FUNC15 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int /*<<< orphan*/  textA ; 
 int /*<<< orphan*/  FUNC17 (char*,...) ; 

__attribute__((used)) static void FUNC18(void)
{
    IRegistrar *registrar = NULL;
    HRESULT hr;
    INT count;
    WCHAR *textW = NULL;

    if (!FUNC3(FUNC2("atl.dll"), "AtlAxAttachControl"))
    {
        FUNC17("Old versions of atl.dll don't support binary values\n");
        return;
    }

    hr = FUNC0(&CLSID_Registrar, NULL, CLSCTX_INPROC_SERVER, &IID_IRegistrar, (void**)&registrar);
    if (FUNC1(hr))
    {
        FUNC17("creating IRegistrar failed, hr = 0x%08X\n", hr);
        return;
    }

    count = FUNC10(CP_ACP, 0, textA, -1, NULL, 0);
    textW = FUNC5(FUNC4(), 0, count * sizeof(WCHAR));
    if (textW)
    {
        DWORD dword;
        DWORD size;
        LONG lret;
        HKEY key;
        BYTE bytes[4];

        FUNC10(CP_ACP, 0, textA, -1, textW, count);
        hr = FUNC8(registrar, textW);
        FUNC15(hr == S_OK, "StringRegister failed: %08x\n", hr);
        if (FUNC1(hr))
        {
            FUNC7(registrar);
            return;
        }

        lret = FUNC12(HKEY_CURRENT_USER, "eebf73c4-50fd-478f-bbcf-db212221227a", &key);
        FUNC15(lret == ERROR_SUCCESS, "error %d opening registry key\n", lret);

        size = sizeof(dword);
        lret = FUNC13(key, "dword_unquoted_hex", NULL, NULL, (BYTE*)&dword, &size);
        FUNC15(lret == ERROR_SUCCESS, "RegQueryValueExA failed, error %d\n", lret);
        FUNC15(dword != 0xA, "unquoted hex is not supposed to be preserved\n");

        size = sizeof(dword);
        lret = FUNC13(key, "dword_quoted_hex", NULL, NULL, (BYTE*)&dword, &size);
        FUNC15(lret == ERROR_SUCCESS, "RegQueryValueExA failed, error %d\n", lret);
        FUNC15(dword != 0xA, "quoted hex is not supposed to be preserved\n");

        size = sizeof(dword);
        lret = FUNC13(key, "dword_unquoted_dec", NULL, NULL, (BYTE*)&dword, &size);
        FUNC15(lret == ERROR_SUCCESS, "RegQueryValueExA failed, error %d\n", lret);
        FUNC15(dword == 1, "unquoted dec is not supposed to be %d\n", dword);

        size = sizeof(dword);
        lret = FUNC13(key, "dword_quoted_dec", NULL, NULL, (BYTE*)&dword, &size);
        FUNC15(lret == ERROR_SUCCESS, "RegQueryValueExA failed, error %d\n", lret);
        FUNC15(dword == 1, "quoted dec is not supposed to be %d\n", dword);

        size = 4;
        lret = FUNC13(key, "binary_quoted", NULL, NULL, bytes, &size);
        FUNC15(lret == ERROR_SUCCESS, "RegQueryValueA, failed, error %d\n", lret);
        FUNC15(bytes[0] == 0xde && bytes[1] == 0xad && bytes[2] == 0xbe && bytes[3] == 0xef,
            "binary quoted value was not preserved (it's 0x%02X%02X%02X%02X)\n",
            0xff & bytes[0], 0xff & bytes[1], 0xff & bytes[2], 0xff & bytes[3]);

        size = 4;
        lret = FUNC13(key, "binary_unquoted", NULL, NULL, bytes, &size);
        FUNC15(lret == ERROR_SUCCESS, "RegQueryValueA, failed, error %d\n", lret);
        FUNC15(bytes[0] == 0xde && bytes[1] == 0xad && bytes[2] == 0xbe && bytes[3] == 0xef,
            "binary unquoted value was not preserved (it's 0x%02X%02X%02X%02X)\n",
            0xff & bytes[0], 0xff & bytes[1], 0xff & bytes[2], 0xff & bytes[3]);

        hr = FUNC9(registrar, textW);
        FUNC15(FUNC14(hr), "IRegistrar_StringUnregister failed, hr = 0x%08X\n", hr);
        FUNC11(key);

        FUNC6(FUNC4(), 0, textW);
    }
    else
        FUNC16("allocating memory failed\n");

    FUNC7(registrar);
}