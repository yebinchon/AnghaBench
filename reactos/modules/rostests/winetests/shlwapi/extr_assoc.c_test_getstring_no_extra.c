
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ LONG ;
typedef scalar_t__ HRESULT ;
typedef int HKEY ;
typedef int DWORD ;
typedef char CHAR ;


 int ASSOCSTR_EXECUTABLE ;
 int ERROR_FILE_NOT_FOUND ;
 scalar_t__ ERROR_SUCCESS ;
 int HKEY_CLASSES_ROOT ;
 scalar_t__ HRESULT_FROM_WIN32 (int ) ;
 int MAX_PATH ;
 int REG_SZ ;
 int RegCloseKey (int ) ;
 scalar_t__ RegCreateKeyA (int ,char const*,int *) ;
 scalar_t__ RegSetValueA (int ,int *,int ,char const*,int ) ;
 int SHDeleteKeyA (int ,char const*) ;
 scalar_t__ S_OK ;
 int expect_hr (scalar_t__,scalar_t__) ;
 int lstrlenA (char const*) ;
 int ok (int,char*,char*) ;
 scalar_t__ pAssocQueryStringA (int ,int ,char const*,char*,char*,int*) ;
 int skip (char*) ;
 int * strstr (char*,char const*) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_getstring_no_extra(void)
{
    LONG ret;
    HKEY hkey;
    HRESULT hr;
    static const CHAR dotWinetest[] = {
        '.','w','i','n','e','t','e','s','t',0
    };
    static const CHAR winetestfile[] = {
        'w','i','n','e','t','e','s','t', 'f','i','l','e',0
    };
    static const CHAR winetestfileAction[] = {
        'w','i','n','e','t','e','s','t','f','i','l','e',
        '\\','s','h','e','l','l',
        '\\','f','o','o',
        '\\','c','o','m','m','a','n','d',0
    };
    static const CHAR action[] = {
        'n','o','t','e','p','a','d','.','e','x','e',0
    };
    CHAR buf[MAX_PATH];
    DWORD len = MAX_PATH;

    if (!pAssocQueryStringA)
    {
        win_skip("AssocQueryStringA() is missing\n");
        return;
    }

    buf[0] = '\0';
    ret = RegCreateKeyA(HKEY_CLASSES_ROOT, dotWinetest, &hkey);
    if (ret != ERROR_SUCCESS) {
        skip("failed to create dotWinetest key\n");
        return;
    }

    ret = RegSetValueA(hkey, ((void*)0), REG_SZ, winetestfile, lstrlenA(winetestfile));
    RegCloseKey(hkey);
    if (ret != ERROR_SUCCESS)
    {
        skip("failed to set dotWinetest key\n");
        goto cleanup;
    }

    ret = RegCreateKeyA(HKEY_CLASSES_ROOT, winetestfileAction, &hkey);
    if (ret != ERROR_SUCCESS)
    {
        skip("failed to create winetestfileAction key\n");
        goto cleanup;
    }

    ret = RegSetValueA(hkey, ((void*)0), REG_SZ, action, lstrlenA(action));
    RegCloseKey(hkey);
    if (ret != ERROR_SUCCESS)
    {
        skip("failed to set winetestfileAction key\n");
        goto cleanup;
    }

    hr = pAssocQueryStringA(0, ASSOCSTR_EXECUTABLE, dotWinetest, ((void*)0), buf, &len);
    ok(hr == S_OK ||
       hr == HRESULT_FROM_WIN32(ERROR_FILE_NOT_FOUND),
       "Unexpected result : %08x\n", hr);
    hr = pAssocQueryStringA(0, ASSOCSTR_EXECUTABLE, dotWinetest, "foo", buf, &len);
    expect_hr(S_OK, hr);
    ok(strstr(buf, action) != ((void*)0),
        "got '%s' (Expected result to include 'notepad.exe')\n", buf);

cleanup:
    SHDeleteKeyA(HKEY_CLASSES_ROOT, dotWinetest);
    SHDeleteKeyA(HKEY_CLASSES_ROOT, winetestfile);

}
