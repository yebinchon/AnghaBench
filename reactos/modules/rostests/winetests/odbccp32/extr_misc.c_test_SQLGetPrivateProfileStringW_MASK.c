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
typedef  int /*<<< orphan*/  testingvalue ;
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  LONG ;
typedef  int /*<<< orphan*/  HKEY ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 int /*<<< orphan*/  HKEY_CURRENT_USER ; 
 int /*<<< orphan*/  KEY_READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (char*,char*,char*,char*,int,char*) ; 
 int FUNC4 (char*,char*,char*,char*) ; 
 int /*<<< orphan*/  abcd_key ; 
 int /*<<< orphan*/  abcdini_key ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int) ; 

__attribute__((used)) static void FUNC12(void)
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

    FUNC6(buffer, wine);
    ret = FUNC3(NULL, testing , defaultval, buffer, 256, odbcini);
    FUNC9(ret == 0, "SQLGetPrivateProfileStringW returned %d\n", ret);
    FUNC9(!FUNC5(buffer, wine), "incorrect string '%s'\n", FUNC10(buffer));

    FUNC6(buffer, wine);
    ret = FUNC3(wineodbc, NULL , defaultval, buffer, 256, odbcini);
    FUNC9(ret == 0, "SQLGetPrivateProfileStringW returned %d\n", ret);
    FUNC9(!FUNC5(buffer, empty), "incorrect string '%s'\n", FUNC10(buffer));

    FUNC6(buffer, value);
    ret = FUNC3(wineodbc, testing , NULL, buffer, 256, odbcini);
    FUNC9(ret == 0, "SQLGetPrivateProfileStringW returned %d\n", ret);
    FUNC9(!FUNC5(buffer, empty), "incorrect string '%s'\n", FUNC10(buffer));

    ret = FUNC3(wineodbc, testing , defaultX, buffer, 256, odbcini);
    FUNC9(ret == FUNC7(defaultX), "SQLGetPrivateProfileStringW returned %d\n", ret);
    FUNC9(!FUNC5(buffer, defaultX), "incorrect string '%s'\n", FUNC10(buffer));

    ret = FUNC3(wineodbc, testing , defaultX, buffer, 4, odbcini);
    FUNC9(ret == FUNC7(def), "SQLGetPrivateProfileStringW returned %d\n", ret);
    FUNC9(!FUNC5(buffer, def), "incorrect string '%s'\n", FUNC10(buffer));

    ret = FUNC3(wineodbc, testing , defaultX, buffer, 8, odbcini);
    FUNC9(ret == FUNC7(defaultX), "SQLGetPrivateProfileStringW returned %d\n", ret);
    FUNC9(!FUNC5(buffer, defaultX), "incorrect string '%s'\n", FUNC10(buffer));

    ret = FUNC3(wineodbc, testing , defaultX, NULL, 256, odbcini);
    FUNC9(ret == 0, "SQLGetPrivateProfileStringW returned %d\n", ret);

    FUNC6(buffer, value);
    ret = FUNC3(wineodbc, testing , defaultX, buffer, 0, odbcini);
    FUNC9(ret == 0, "SQLGetPrivateProfileStringW returned %d\n", ret);
    FUNC9(!FUNC5(buffer, value), "incorrect string '%s'\n", FUNC10(buffer));

    ret = FUNC4("wineodbc", "testing" , "value0123456789", "abcd.ini");
    FUNC9(ret, "SQLWritePrivateProfileString failed\n");
    if(ret)
    {
        HKEY hkey;

        ret = FUNC3(wineodbc, testing , defaultX, buffer, 256, abcdini);
        FUNC9(ret == FUNC7(value0), "SQLGetPrivateProfileStringW returned %d\n", ret);
        FUNC9(!FUNC5(buffer, value0), "incorrect string '%s'\n", FUNC10(buffer));

        ret = FUNC3(wineodbc, testing , defaultX, NULL, 0, abcdini);
        FUNC9(ret == 0, "SQLGetPrivateProfileStringW returned %d\n", ret);

        ret = FUNC3(wineodbc, testing , defaultX, buffer, 7, abcdini);
        FUNC9(ret == 6, "SQLGetPrivateProfileStringW returned %d\n", ret);

        FUNC6(buffer, wine);
        ret = FUNC3(wineodbc, NULL , empty, buffer, 10, abcdini);
        FUNC9(ret == FUNC7(testing)+1, "SQLGetPrivateProfileStringW returned %d\n", ret);
        FUNC9(!FUNC5(buffer, testing), "incorrect string '%s'\n", FUNC10(buffer));

        ret = FUNC4("wineodbc", "value" , "0", "abcd.ini");
        FUNC9(ret, "SQLWritePrivateProfileString failed\n");

        FUNC6(buffer, wine);
        ret = FUNC3(wineodbc, NULL , empty, buffer, 256, abcdini);
        FUNC9(ret == (FUNC7(testing) + FUNC7(value)+2), "SQLGetPrivateProfileStringW returned %d\n", ret);
        if(ret == (FUNC7(testing) + FUNC7(value)+2))
        {
            FUNC9(!FUNC8(buffer, testingvalue, sizeof(testingvalue)),
                      "incorrect string '%s'\n", FUNC11(buffer, ret));
        }

        FUNC6(buffer, value);
        ret = FUNC3(wineodbc, NULL , empty, buffer, 10, abcdini);
        FUNC9(ret == FUNC7(testing)+1, "SQLGetPrivateProfileStringW returned %d\n", ret);
        if(ret >= FUNC7(testing)+1)
        {
            FUNC9(!FUNC5(buffer, testing), "incorrect string '%s'\n", FUNC10(buffer));
        }

        FUNC6(buffer, value);
        ret = FUNC3(wineodbc, NULL , empty, buffer, 2, abcdini);
        FUNC9(ret == 0, "SQLGetPrivateProfileStringW returned %d\n", ret);

        reg_ret = FUNC2(HKEY_CURRENT_USER, abcd_key, 0, KEY_READ, &hkey);
        FUNC9(reg_ret == ERROR_SUCCESS, "RegOpenKeyExW failed\n");
        if(reg_ret == ERROR_SUCCESS)
        {
            reg_ret = FUNC1(HKEY_CURRENT_USER, abcd_key);
            FUNC9(reg_ret == ERROR_SUCCESS, "RegDeleteKeyW failed\n");

            FUNC0(hkey);
        }

        /* Cleanup key */
        reg_ret = FUNC1(HKEY_CURRENT_USER, abcdini_key);
        FUNC9(reg_ret == ERROR_SUCCESS, "RegDeleteKeyW failed\n");
    }
}