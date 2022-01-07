
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int testingvalue ;
typedef char WCHAR ;
typedef int LONG ;
typedef int HKEY ;


 int ERROR_SUCCESS ;
 int HKEY_CURRENT_USER ;
 int KEY_READ ;
 int RegCloseKey (int ) ;
 int RegDeleteKeyW (int ,int ) ;
 int RegOpenKeyExW (int ,int ,int ,int ,int *) ;
 int SQLGetPrivateProfileStringW (char*,char*,char*,char*,int,char*) ;
 int SQLWritePrivateProfileString (char*,char*,char*,char*) ;
 int abcd_key ;
 int abcdini_key ;
 int lstrcmpW (char*,char*) ;
 int lstrcpyW (char*,char*) ;
 int lstrlenW (char*) ;
 int memcmp (char*,char*,int) ;
 int ok (int,char*,...) ;
 int wine_dbgstr_w (char*) ;
 int wine_dbgstr_wn (char*,int) ;

__attribute__((used)) static void test_SQLGetPrivateProfileStringW(void)
{
    static WCHAR testing[] = {'t','e','s','t','i','n','g',0};
    static WCHAR wineodbc[] = {'w','i','n','e','o','d','b','c',0};
    static WCHAR defaultval[] = {'d','e','f','a','u','l','t',0};
    static WCHAR odbcini[] = {'O','D','B','C','.','I','N','I',0};
    static WCHAR abcdini[] = {'a','b','c','d','.','I','N','I',0};
    static WCHAR wine[] = {'w','i','n','e',0};
    static WCHAR value[] = {'v','a','l','u','e',0};
    static WCHAR empty[] = {0};
    static WCHAR defaultX[] = {'d','e','f','a','u','l','t',0};
    static WCHAR def[] = {'d','e','f',0};
    static WCHAR value0[] = {'v','a','l','u','e','0','1','2','3','4','5','6','7','8','9',0};
    static WCHAR testingvalue[] = {'t','e','s','t','i','n','g',0,'v','a','l','u','e',0};
    int ret;
    WCHAR buffer[256] = {0};
    LONG reg_ret;

    lstrcpyW(buffer, wine);
    ret = SQLGetPrivateProfileStringW(((void*)0), testing , defaultval, buffer, 256, odbcini);
    ok(ret == 0, "SQLGetPrivateProfileStringW returned %d\n", ret);
    ok(!lstrcmpW(buffer, wine), "incorrect string '%s'\n", wine_dbgstr_w(buffer));

    lstrcpyW(buffer, wine);
    ret = SQLGetPrivateProfileStringW(wineodbc, ((void*)0) , defaultval, buffer, 256, odbcini);
    ok(ret == 0, "SQLGetPrivateProfileStringW returned %d\n", ret);
    ok(!lstrcmpW(buffer, empty), "incorrect string '%s'\n", wine_dbgstr_w(buffer));

    lstrcpyW(buffer, value);
    ret = SQLGetPrivateProfileStringW(wineodbc, testing , ((void*)0), buffer, 256, odbcini);
    ok(ret == 0, "SQLGetPrivateProfileStringW returned %d\n", ret);
    ok(!lstrcmpW(buffer, empty), "incorrect string '%s'\n", wine_dbgstr_w(buffer));

    ret = SQLGetPrivateProfileStringW(wineodbc, testing , defaultX, buffer, 256, odbcini);
    ok(ret == lstrlenW(defaultX), "SQLGetPrivateProfileStringW returned %d\n", ret);
    ok(!lstrcmpW(buffer, defaultX), "incorrect string '%s'\n", wine_dbgstr_w(buffer));

    ret = SQLGetPrivateProfileStringW(wineodbc, testing , defaultX, buffer, 4, odbcini);
    ok(ret == lstrlenW(def), "SQLGetPrivateProfileStringW returned %d\n", ret);
    ok(!lstrcmpW(buffer, def), "incorrect string '%s'\n", wine_dbgstr_w(buffer));

    ret = SQLGetPrivateProfileStringW(wineodbc, testing , defaultX, buffer, 8, odbcini);
    ok(ret == lstrlenW(defaultX), "SQLGetPrivateProfileStringW returned %d\n", ret);
    ok(!lstrcmpW(buffer, defaultX), "incorrect string '%s'\n", wine_dbgstr_w(buffer));

    ret = SQLGetPrivateProfileStringW(wineodbc, testing , defaultX, ((void*)0), 256, odbcini);
    ok(ret == 0, "SQLGetPrivateProfileStringW returned %d\n", ret);

    lstrcpyW(buffer, value);
    ret = SQLGetPrivateProfileStringW(wineodbc, testing , defaultX, buffer, 0, odbcini);
    ok(ret == 0, "SQLGetPrivateProfileStringW returned %d\n", ret);
    ok(!lstrcmpW(buffer, value), "incorrect string '%s'\n", wine_dbgstr_w(buffer));

    ret = SQLWritePrivateProfileString("wineodbc", "testing" , "value0123456789", "abcd.ini");
    ok(ret, "SQLWritePrivateProfileString failed\n");
    if(ret)
    {
        HKEY hkey;

        ret = SQLGetPrivateProfileStringW(wineodbc, testing , defaultX, buffer, 256, abcdini);
        ok(ret == lstrlenW(value0), "SQLGetPrivateProfileStringW returned %d\n", ret);
        ok(!lstrcmpW(buffer, value0), "incorrect string '%s'\n", wine_dbgstr_w(buffer));

        ret = SQLGetPrivateProfileStringW(wineodbc, testing , defaultX, ((void*)0), 0, abcdini);
        ok(ret == 0, "SQLGetPrivateProfileStringW returned %d\n", ret);

        ret = SQLGetPrivateProfileStringW(wineodbc, testing , defaultX, buffer, 7, abcdini);
        ok(ret == 6, "SQLGetPrivateProfileStringW returned %d\n", ret);

        lstrcpyW(buffer, wine);
        ret = SQLGetPrivateProfileStringW(wineodbc, ((void*)0) , empty, buffer, 10, abcdini);
        ok(ret == lstrlenW(testing)+1, "SQLGetPrivateProfileStringW returned %d\n", ret);
        ok(!lstrcmpW(buffer, testing), "incorrect string '%s'\n", wine_dbgstr_w(buffer));

        ret = SQLWritePrivateProfileString("wineodbc", "value" , "0", "abcd.ini");
        ok(ret, "SQLWritePrivateProfileString failed\n");

        lstrcpyW(buffer, wine);
        ret = SQLGetPrivateProfileStringW(wineodbc, ((void*)0) , empty, buffer, 256, abcdini);
        ok(ret == (lstrlenW(testing) + lstrlenW(value)+2), "SQLGetPrivateProfileStringW returned %d\n", ret);
        if(ret == (lstrlenW(testing) + lstrlenW(value)+2))
        {
            ok(!memcmp(buffer, testingvalue, sizeof(testingvalue)),
                      "incorrect string '%s'\n", wine_dbgstr_wn(buffer, ret));
        }

        lstrcpyW(buffer, value);
        ret = SQLGetPrivateProfileStringW(wineodbc, ((void*)0) , empty, buffer, 10, abcdini);
        ok(ret == lstrlenW(testing)+1, "SQLGetPrivateProfileStringW returned %d\n", ret);
        if(ret >= lstrlenW(testing)+1)
        {
            ok(!lstrcmpW(buffer, testing), "incorrect string '%s'\n", wine_dbgstr_w(buffer));
        }

        lstrcpyW(buffer, value);
        ret = SQLGetPrivateProfileStringW(wineodbc, ((void*)0) , empty, buffer, 2, abcdini);
        ok(ret == 0, "SQLGetPrivateProfileStringW returned %d\n", ret);

        reg_ret = RegOpenKeyExW(HKEY_CURRENT_USER, abcd_key, 0, KEY_READ, &hkey);
        ok(reg_ret == ERROR_SUCCESS, "RegOpenKeyExW failed\n");
        if(reg_ret == ERROR_SUCCESS)
        {
            reg_ret = RegDeleteKeyW(HKEY_CURRENT_USER, abcd_key);
            ok(reg_ret == ERROR_SUCCESS, "RegDeleteKeyW failed\n");

            RegCloseKey(hkey);
        }


        reg_ret = RegDeleteKeyW(HKEY_CURRENT_USER, abcdini_key);
        ok(reg_ret == ERROR_SUCCESS, "RegDeleteKeyW failed\n");
    }
}
