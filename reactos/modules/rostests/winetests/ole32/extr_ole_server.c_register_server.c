
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int HKEY ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 int CLSID_WineTestObject ;
 scalar_t__ ERROR_SUCCESS ;
 int HKEY_CLASSES_ROOT ;
 int KEY_CREATE_SUB_KEY ;
 int KEY_READ ;
 int KEY_WRITE ;
 int MAX_PATH ;
 int REG_SZ ;
 int RegCloseKey (int ) ;
 scalar_t__ RegCreateKeyExW (int ,char*,int ,int *,int ,int,int *,int *,int *) ;
 scalar_t__ RegSetValueA (int ,char*,int ,char*,int) ;
 int StringFromGUID2 (int *,char*,int) ;
 int lstrcatA (char*,char*) ;
 int lstrcpyA (char*,char const*) ;
 int lstrcpyW (char*,char const*) ;
 int ok (int,char*,scalar_t__) ;
 int strlen (char*) ;

__attribute__((used)) static BOOL register_server(const char *server, BOOL inproc_handler)
{
    static const WCHAR clsidW[] = {'C','L','S','I','D','\\',0};
    DWORD ret;
    HKEY root;
    WCHAR buf[39 + 6];
    char server_path[MAX_PATH];

    lstrcpyA(server_path, server);
    lstrcatA(server_path, " ole_server");

    lstrcpyW(buf, clsidW);
    StringFromGUID2(&CLSID_WineTestObject, buf + 6, 39);

    ret = RegCreateKeyExW(HKEY_CLASSES_ROOT, buf, 0, ((void*)0), 0,
                          KEY_READ | KEY_WRITE | KEY_CREATE_SUB_KEY, ((void*)0), &root, ((void*)0));
    if (ret == ERROR_SUCCESS)
    {
        ret = RegSetValueA(root, "LocalServer32", REG_SZ, server_path, strlen(server_path));
        ok(ret == ERROR_SUCCESS, "RegSetValue error %u\n", ret);

        if (inproc_handler)
        {
            ret = RegSetValueA(root, "InprocHandler32", REG_SZ, "ole32.dll", 9);
            ok(ret == ERROR_SUCCESS, "RegSetValue error %u\n", ret);
        }

        RegCloseKey(root);
    }

    return ret == ERROR_SUCCESS;
}
