
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPARAM ;
typedef int HWND ;


 int DestroyWindow (int ) ;
 int SendMessageA (int ,int ,int ,int ) ;
 int WM_GETTEXTLENGTH ;
 int WM_SETTEXT ;
 int is_lang_japanese ;
 int lstrlenA (char const*) ;
 int new_richedit (int *) ;
 int ok (int,char*,int,...) ;
 int skip (char*) ;

__attribute__((used)) static void test_WM_GETTEXTLENGTH(void)
{
    HWND hwndRichEdit = new_richedit(((void*)0));
    static const char text1[] = "aaa\r\nbbb\r\nccc\r\nddd\r\neee";
    static const char text2[] = "aaa\r\nbbb\r\nccc\r\nddd\r\neee\r\n";
    static const char text3[] = "abcdef\x8e\xf0";
    int result;


    SendMessageA(hwndRichEdit, WM_SETTEXT, 0, (LPARAM)text1);
    result = SendMessageA(hwndRichEdit, WM_GETTEXTLENGTH, 0, 0);
    ok(result == lstrlenA(text1),
       "WM_GETTEXTLENGTH reports incorrect length %d, expected %d\n",
       result, lstrlenA(text1));

    SendMessageA(hwndRichEdit, WM_SETTEXT, 0, (LPARAM)text2);
    result = SendMessageA(hwndRichEdit, WM_GETTEXTLENGTH, 0, 0);
    ok(result == lstrlenA(text2),
       "WM_GETTEXTLENGTH reports incorrect length %d, expected %d\n",
       result, lstrlenA(text2));


    if (!is_lang_japanese)
        skip("Skip multibyte character tests on non-Japanese platform\n");
    else
    {
        SendMessageA(hwndRichEdit, WM_SETTEXT, 0, (LPARAM)text3);
        result = SendMessageA(hwndRichEdit, WM_GETTEXTLENGTH, 0, 0);
        ok(result == 8, "WM_GETTEXTLENGTH returned %d, expected 8\n", result);
    }

    DestroyWindow(hwndRichEdit);
}
