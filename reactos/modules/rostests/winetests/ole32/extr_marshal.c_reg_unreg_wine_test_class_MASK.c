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
typedef  int /*<<< orphan*/  buffer ;
typedef  int /*<<< orphan*/  LPOLESTR ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CLSID_WineTest ; 
 int /*<<< orphan*/  CP_ACP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR_ACCESS_DENIED ; 
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 int /*<<< orphan*/  E_FAIL ; 
 int /*<<< orphan*/  HKEY_CLASSES_ROOT ; 
 int /*<<< orphan*/  KEY_SET_VALUE ; 
 int /*<<< orphan*/  REG_SZ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 
 int FUNC12 (char*) ; 
 char* FUNC13 (char*,char) ; 

__attribute__((used)) static HRESULT FUNC14(BOOL Register)
{
    HRESULT hr;
    char buffer[256];
    LPOLESTR pszClsid;
    HKEY hkey;
    DWORD dwDisposition;
    DWORD error;

    hr = FUNC5(&CLSID_WineTest, &pszClsid);
    FUNC8(hr, "StringFromCLSID");
    FUNC11(buffer, "CLSID\\");
    FUNC6(CP_ACP, 0, pszClsid, -1, buffer + FUNC12(buffer), sizeof(buffer) - FUNC12(buffer), NULL, NULL);
    FUNC0(pszClsid);
    FUNC10(buffer, "\\InprocHandler32");
    if (Register)
    {
        error = FUNC2(HKEY_CLASSES_ROOT, buffer, 0, NULL, 0, KEY_SET_VALUE, NULL, &hkey, &dwDisposition);
        if (error == ERROR_ACCESS_DENIED)
        {
            FUNC9("Not authorized to modify the Classes key\n");
            return E_FAIL;
        }
        FUNC7(error == ERROR_SUCCESS, "RegCreateKeyEx failed with error %d\n", error);
        if (error != ERROR_SUCCESS) hr = E_FAIL;
        error = FUNC4(hkey, NULL, 0, REG_SZ, (const unsigned char *)"\"ole32.dll\"", FUNC12("\"ole32.dll\"") + 1);
        FUNC7(error == ERROR_SUCCESS, "RegSetValueEx failed with error %d\n", error);
        if (error != ERROR_SUCCESS) hr = E_FAIL;
        FUNC1(hkey);
    }
    else
    {
        FUNC3(HKEY_CLASSES_ROOT, buffer);
        *FUNC13(buffer, '\\') = '\0';
        FUNC3(HKEY_CLASSES_ROOT, buffer);
    }
    return hr;
}