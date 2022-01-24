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
typedef  int /*<<< orphan*/  wszProtocolsKey ;
typedef  int /*<<< orphan*/  str_clsid ;
typedef  char WCHAR ;
typedef  scalar_t__ LPWSTR ;
typedef  char const* LPCWSTR ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  int /*<<< orphan*/  IClassFactory ;
typedef  int HRESULT ;
typedef  int /*<<< orphan*/ * HKEY ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  CLSID ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*) ; 
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 int FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int ERROR_SUCCESS ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  HKEY_CLASSES_ROOT ; 
 int /*<<< orphan*/  IID_IClassFactory ; 
 int MK_E_SYNTAX ; 
 int REG_SZ ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ **) ; 
 int FUNC6 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC7 (int) ; 
 int S_OK ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,char const*,int) ; 

__attribute__((used)) static HRESULT FUNC13(LPCWSTR schema, DWORD schema_len, CLSID *pclsid, IClassFactory **ret)
{
    WCHAR str_clsid[64];
    HKEY hkey = NULL;
    DWORD res, type, size;
    CLSID clsid;
    LPWSTR wszKey;
    HRESULT hres;

    static const WCHAR wszProtocolsKey[] =
        {'P','R','O','T','O','C','O','L','S','\\','H','a','n','d','l','e','r','\\'};
    static const WCHAR wszCLSID[] = {'C','L','S','I','D',0};

    wszKey = FUNC10(sizeof(wszProtocolsKey)+(schema_len+1)*sizeof(WCHAR));
    FUNC12(wszKey, wszProtocolsKey, sizeof(wszProtocolsKey));
    FUNC12(wszKey + FUNC0(wszProtocolsKey), schema, (schema_len+1)*sizeof(WCHAR));

    res = FUNC5(HKEY_CLASSES_ROOT, wszKey, &hkey);
    FUNC11(wszKey);
    if(res != ERROR_SUCCESS) {
        FUNC8("Could not open protocol handler key\n");
        return MK_E_SYNTAX;
    }
    
    size = sizeof(str_clsid);
    res = FUNC6(hkey, wszCLSID, NULL, &type, (LPBYTE)str_clsid, &size);
    FUNC4(hkey);
    if(res != ERROR_SUCCESS || type != REG_SZ) {
        FUNC9("Could not get protocol CLSID res=%d\n", res);
        return MK_E_SYNTAX;
    }

    hres = FUNC1(str_clsid, &clsid);
    if(FUNC3(hres)) {
        FUNC9("CLSIDFromString failed: %08x\n", hres);
        return hres;
    }

    if(pclsid)
        *pclsid = clsid;

    if(!ret)
        return S_OK;

    hres = FUNC2(&clsid, CLSCTX_INPROC_SERVER, NULL, &IID_IClassFactory, (void**)ret);
    return FUNC7(hres) ? S_OK : MK_E_SYNTAX;
}