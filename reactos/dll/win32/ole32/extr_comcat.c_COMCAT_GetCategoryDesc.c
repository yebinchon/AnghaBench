
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int ULONG ;
typedef scalar_t__* PWCHAR ;
typedef int LPBYTE ;
typedef int LCID ;
typedef scalar_t__ HRESULT ;
typedef int HKEY ;
typedef scalar_t__ DWORD ;


 scalar_t__ CAT_E_NODESCRIPTION ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ E_INVALIDARG ;
 int FIXME (char*) ;
 scalar_t__ REG_SZ ;
 scalar_t__ RegQueryValueExW (int ,char*,int ,scalar_t__*,int ,scalar_t__*) ;
 scalar_t__ S_OK ;
 int wsprintfW (char*,char const*,int ) ;

__attribute__((used)) static HRESULT COMCAT_GetCategoryDesc(HKEY key, LCID lcid, PWCHAR pszDesc,
          ULONG buf_wchars)
{
    static const WCHAR fmt[] = { '%', 'l', 'X', 0 };
    WCHAR valname[5];
    HRESULT res;
    DWORD type, size = (buf_wchars - 1) * sizeof(WCHAR);

    if (pszDesc == ((void*)0)) return E_INVALIDARG;


    wsprintfW(valname, fmt, lcid);
    res = RegQueryValueExW(key, valname, 0, &type, (LPBYTE)pszDesc, &size);
    if (res != ERROR_SUCCESS || type != REG_SZ) {
 FIXME("Simplified lcid comparison\n");
 return CAT_E_NODESCRIPTION;
    }
    pszDesc[size / sizeof(WCHAR)] = 0;

    return S_OK;
}
