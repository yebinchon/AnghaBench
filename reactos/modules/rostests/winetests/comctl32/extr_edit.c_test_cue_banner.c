
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WPARAM ;
typedef char WCHAR ;
typedef int LPARAM ;
typedef int HWND ;
typedef scalar_t__ BOOL ;


 int DestroyWindow (int ) ;
 int EM_GETCUEBANNER ;
 int EM_SETCUEBANNER ;
 int ES_AUTOHSCROLL ;
 int ES_AUTOVSCROLL ;
 int ES_MULTILINE ;
 scalar_t__ FALSE ;
 scalar_t__ SendMessageW (int ,int ,int ,int) ;
 scalar_t__ TRUE ;
 int create_editcontrolW (int,int ) ;
 scalar_t__ lstrcmpW (char*,char const*) ;
 int lstrcpyW (char*,char const*) ;
 int lstrlenW (char const*) ;
 int memset (char*,int ,int) ;
 int ok (int,char*,...) ;
 int win_skip (char*) ;
 int wine_dbgstr_w (char*) ;

__attribute__((used)) static void test_cue_banner(void)
{
    HWND hwnd_edit;
    BOOL ret;
    static WCHAR getcuetestW[5] = {'T',0};
    static const WCHAR testcmp1W[] = {'T','e','s','t',0};
    static const WCHAR testcmp2W[] = {'T','e','s',0};
    static const WCHAR emptyW[] = {0};

    hwnd_edit = create_editcontrolW(ES_AUTOHSCROLL | ES_AUTOVSCROLL, 0);

    ret = SendMessageW(hwnd_edit, EM_GETCUEBANNER, (WPARAM)getcuetestW, 5);
    if (lstrcmpW(getcuetestW, emptyW) != 0)
    {
        win_skip("skipping for Win XP and 2003 Server.\n");
        DestroyWindow(hwnd_edit);
        return;
    }
    ok(lstrcmpW(getcuetestW, emptyW) == 0, "First char is %c\n", getcuetestW[0]);
    ok(ret == FALSE, "EM_GETCUEBANNER should have returned FALSE.\n");

    lstrcpyW(getcuetestW, testcmp1W);
    ret = SendMessageW(hwnd_edit, EM_GETCUEBANNER, (WPARAM)getcuetestW, 0);
    ok(lstrcmpW(getcuetestW, testcmp1W) == 0, "String was %s.\n", wine_dbgstr_w(getcuetestW));
    ok(ret == FALSE, "EM_GETCUEBANNER should have returned FALSE.\n");

    ret = SendMessageW(hwnd_edit, EM_GETCUEBANNER, 0, 0);
    ok(ret == FALSE, "EM_GETCUEBANNER should have returned FALSE.\n");

    ret = SendMessageW(hwnd_edit, EM_SETCUEBANNER, 0, 0);
    ok(ret == FALSE, "EM_SETCUEBANNER should have returned FALSE.\n");

    ret = SendMessageW(hwnd_edit, EM_GETCUEBANNER, 0, 0);
    ok(ret == FALSE, "EM_GETCUEBANNER should have returned FALSE.\n");

    lstrcpyW(getcuetestW, testcmp1W);
    ret = SendMessageW(hwnd_edit, EM_SETCUEBANNER, 0, (LPARAM)getcuetestW);
    ok(ret == TRUE, "EM_SETCUEBANNER should have returned TRUE.\n");

    ret = SendMessageW(hwnd_edit, EM_GETCUEBANNER, 0, 5);
    ok(ret == TRUE, "EM_GETCUEBANNER should have returned TRUE.\n");

    ret = SendMessageW(hwnd_edit, EM_GETCUEBANNER, (WPARAM)getcuetestW, 5);
    ok(ret == TRUE, "EM_GETCUEBANNER should have returned TRUE.\n");
    ok(lstrcmpW(getcuetestW, testcmp1W) == 0, "EM_GETCUEBANNER returned string %s.\n", wine_dbgstr_w(getcuetestW));

    ret = SendMessageW(hwnd_edit, EM_SETCUEBANNER, 0, (LPARAM)emptyW);
    ok(ret == TRUE, "EM_SETCUEBANNER should have returned TRUE.\n");

    ret = SendMessageW(hwnd_edit, EM_GETCUEBANNER, (WPARAM)getcuetestW, 5);
    ok(ret == TRUE, "EM_GETCUEBANNER should have returned TRUE.\n");
    ok(lstrcmpW(getcuetestW, emptyW) == 0, "EM_GETCUEBANNER returned string %s.\n", wine_dbgstr_w(getcuetestW));


    ret = SendMessageW(hwnd_edit, EM_SETCUEBANNER, 0, (LPARAM)testcmp1W);
    ok(ret == TRUE, "EM_SETCUEBANNER should have returned TRUE.\n");
    memset(getcuetestW, 0, lstrlenW(testcmp1W)*sizeof(WCHAR));
    ret = SendMessageW(hwnd_edit, EM_GETCUEBANNER, (WPARAM)getcuetestW, (LPARAM)lstrlenW(testcmp1W)+1);
    ok(ret == TRUE, "EM_GETCUEBANNER should have returned TRUE.\n");
    ok(lstrcmpW(getcuetestW, testcmp1W) == 0, "EM_GETCUEBANNER returned string %s.\n", wine_dbgstr_w(getcuetestW));
    memset(getcuetestW, 0, lstrlenW(testcmp1W)*sizeof(WCHAR));
    ret = SendMessageW(hwnd_edit, EM_GETCUEBANNER, (WPARAM)getcuetestW, (LPARAM)lstrlenW(testcmp1W));
    ok(lstrcmpW(getcuetestW, testcmp2W) == 0, "EM_GETCUEBANNER returned string %s.\n", wine_dbgstr_w(getcuetestW));
    DestroyWindow(hwnd_edit);


    hwnd_edit = create_editcontrolW(ES_AUTOHSCROLL | ES_AUTOVSCROLL | ES_MULTILINE, 0);
    lstrcpyW(getcuetestW, testcmp1W);
    ret = SendMessageW(hwnd_edit, EM_GETCUEBANNER, (WPARAM)getcuetestW, 5);
    ok(ret == FALSE, "EM_SETCUEBANNER.\n");
    ok(lstrcmpW(getcuetestW, testcmp1W) == 0, "String was %s.\n", wine_dbgstr_w(getcuetestW));
    ret = SendMessageW(hwnd_edit, EM_SETCUEBANNER, 0, (LPARAM)getcuetestW);
    ok(ret == FALSE, "EM_SETCUEBANNER.\n");

    DestroyWindow(hwnd_edit);
}
