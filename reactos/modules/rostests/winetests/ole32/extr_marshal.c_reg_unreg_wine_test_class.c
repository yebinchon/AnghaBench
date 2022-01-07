
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buffer ;
typedef int LPOLESTR ;
typedef int HRESULT ;
typedef int HKEY ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 int CLSID_WineTest ;
 int CP_ACP ;
 int CoTaskMemFree (int ) ;
 int ERROR_ACCESS_DENIED ;
 int ERROR_SUCCESS ;
 int E_FAIL ;
 int HKEY_CLASSES_ROOT ;
 int KEY_SET_VALUE ;
 int REG_SZ ;
 int RegCloseKey (int ) ;
 int RegCreateKeyExA (int ,char*,int ,int *,int ,int ,int *,int *,int *) ;
 int RegDeleteKeyA (int ,char*) ;
 int RegSetValueExA (int ,int *,int ,int ,unsigned char const*,int) ;
 int StringFromCLSID (int *,int *) ;
 int WideCharToMultiByte (int ,int ,int ,int,char*,int,int *,int *) ;
 int ok (int,char*,int ) ;
 int ok_ole_success (int ,char*) ;
 int skip (char*) ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 char* strrchr (char*,char) ;

__attribute__((used)) static HRESULT reg_unreg_wine_test_class(BOOL Register)
{
    HRESULT hr;
    char buffer[256];
    LPOLESTR pszClsid;
    HKEY hkey;
    DWORD dwDisposition;
    DWORD error;

    hr = StringFromCLSID(&CLSID_WineTest, &pszClsid);
    ok_ole_success(hr, "StringFromCLSID");
    strcpy(buffer, "CLSID\\");
    WideCharToMultiByte(CP_ACP, 0, pszClsid, -1, buffer + strlen(buffer), sizeof(buffer) - strlen(buffer), ((void*)0), ((void*)0));
    CoTaskMemFree(pszClsid);
    strcat(buffer, "\\InprocHandler32");
    if (Register)
    {
        error = RegCreateKeyExA(HKEY_CLASSES_ROOT, buffer, 0, ((void*)0), 0, KEY_SET_VALUE, ((void*)0), &hkey, &dwDisposition);
        if (error == ERROR_ACCESS_DENIED)
        {
            skip("Not authorized to modify the Classes key\n");
            return E_FAIL;
        }
        ok(error == ERROR_SUCCESS, "RegCreateKeyEx failed with error %d\n", error);
        if (error != ERROR_SUCCESS) hr = E_FAIL;
        error = RegSetValueExA(hkey, ((void*)0), 0, REG_SZ, (const unsigned char *)"\"ole32.dll\"", strlen("\"ole32.dll\"") + 1);
        ok(error == ERROR_SUCCESS, "RegSetValueEx failed with error %d\n", error);
        if (error != ERROR_SUCCESS) hr = E_FAIL;
        RegCloseKey(hkey);
    }
    else
    {
        RegDeleteKeyA(HKEY_CLASSES_ROOT, buffer);
        *strrchr(buffer, '\\') = '\0';
        RegDeleteKeyA(HKEY_CLASSES_ROOT, buffer);
    }
    return hr;
}
