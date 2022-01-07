
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int HKEY ;
typedef scalar_t__ DWORD ;


 int CLSID_WineTestObject ;
 int DELETE ;
 scalar_t__ ERROR_SUCCESS ;
 int HKEY_CLASSES_ROOT ;
 int RegCloseKey (int ) ;
 scalar_t__ RegCreateKeyExW (int ,char*,int ,int *,int ,int ,int *,int *,int *) ;
 scalar_t__ RegDeleteKeyA (int ,char*) ;
 int StringFromGUID2 (int *,char*,int) ;
 int lstrcpyW (char*,char const*) ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void unregister_server(void)
{
    static const WCHAR clsidW[] = {'C','L','S','I','D','\\',0};
    DWORD ret;
    HKEY root;
    WCHAR buf[39 + 6];

    lstrcpyW(buf, clsidW);
    StringFromGUID2(&CLSID_WineTestObject, buf + 6, 39);

    ret = RegCreateKeyExW(HKEY_CLASSES_ROOT, buf, 0, ((void*)0), 0,
                          DELETE, ((void*)0), &root, ((void*)0));
    if (ret == ERROR_SUCCESS)
    {
        ret = RegDeleteKeyA(root, "InprocHandler32");
        ok(ret == ERROR_SUCCESS, "RegDeleteKey error %u\n", ret);
        ret = RegDeleteKeyA(root, "LocalServer32");
        ok(ret == ERROR_SUCCESS, "RegDeleteKey error %u\n", ret);
        ret = RegDeleteKeyA(root, "");
        ok(ret == ERROR_SUCCESS, "RegDeleteKey error %u\n", ret);
        RegCloseKey(root);
    }
}
