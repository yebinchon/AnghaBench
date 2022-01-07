
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HWND ;


 int SendMessageA (int ,int ,char const,int) ;
 int WM_CHAR ;
 int WM_KEYDOWN ;
 int WM_KEYUP ;
 int ok (int,char*,char const,int) ;

__attribute__((used)) static void simulate_typing_characters(HWND hwnd, const char* szChars)
{
    int ret;

    while (*szChars != '\0') {
        SendMessageA(hwnd, WM_KEYDOWN, *szChars, 1);
        ret = SendMessageA(hwnd, WM_CHAR, *szChars, 1);
        ok(ret == 0, "WM_CHAR('%c') ret=%d\n", *szChars, ret);
        SendMessageA(hwnd, WM_KEYUP, *szChars, 1);
        szChars++;
    }
}
