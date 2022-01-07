
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RECT ;
typedef int LPARAM ;
typedef int * HWND ;
typedef scalar_t__ BOOL ;


 int BCM_GETTEXTMARGIN ;
 int BCM_SETTEXTMARGIN ;
 int BS_DEFPUSHBUTTON ;
 int * CreateWindowW (char*,char*,int ,int,int,int,int,int ,int *,int *,int *) ;
 int DestroyWindow (int *) ;
 scalar_t__ SendMessageW (int *,int ,int ,int ) ;
 int SetRect (int *,int,int,int,int) ;
 int SetWindowTheme (int *,char*,char*) ;
 scalar_t__ TRUE ;
 int ok (int,char*) ;
 int ok_rect (int ,int,int,int,int) ;

void Test_TextMargin()
{
    RECT rc;
    BOOL ret;
    HWND hwnd1;

    hwnd1 = CreateWindowW(L"Button", L"Test1", 0, 10, 10, 100, 100, 0, ((void*)0), ((void*)0), ((void*)0));
    ok (hwnd1 != ((void*)0), "Expected CreateWindowW to succeed\n");
    SetWindowTheme(hwnd1, L"", L"");

    ret = SendMessageW(hwnd1, BCM_GETTEXTMARGIN, 0, (LPARAM)&rc);
    ok (ret == TRUE, "Expected BCM_GETTEXTMARGIN to succeed\n");
    ok_rect(rc, 1, 1, 1, 1);

    SetRect(&rc, 0,0,0,0);
    ret = SendMessageW(hwnd1, BCM_SETTEXTMARGIN, 0, (LPARAM)&rc);
    ok (ret == TRUE, "Expected BCM_SETTEXTMARGIN to succeed\n");

    ret = SendMessageW(hwnd1, BCM_GETTEXTMARGIN, 0, (LPARAM)&rc);
    ok (ret == TRUE, "Expected BCM_GETTEXTMARGIN to succeed\n");
    ok_rect(rc, 0, 0, 0, 0);

    SetRect(&rc, -1,-1,-1,-1);
    ret = SendMessageW(hwnd1, BCM_SETTEXTMARGIN, 0, (LPARAM)&rc);
    ok (ret == TRUE, "Expected BCM_SETTEXTMARGIN to succeed\n");

    ret = SendMessageW(hwnd1, BCM_GETTEXTMARGIN, 0, (LPARAM)&rc);
    ok (ret == TRUE, "Expected BCM_GETTEXTMARGIN to succeed\n");
    ok_rect(rc, -1, -1, -1, -1);

    SetRect(&rc, 1000,1000,1000,1000);
    ret = SendMessageW(hwnd1, BCM_SETTEXTMARGIN, 0, (LPARAM)&rc);
    ok (ret == TRUE, "Expected BCM_SETTEXTMARGIN to succeed\n");

    ret = SendMessageW(hwnd1, BCM_GETTEXTMARGIN, 0, (LPARAM)&rc);
    ok (ret == TRUE, "Expected BCM_GETTEXTMARGIN to succeed\n");
    ok_rect(rc, 1000, 1000, 1000, 1000);

    DestroyWindow(hwnd1);

    hwnd1 = CreateWindowW(L"Button", L"Test1", BS_DEFPUSHBUTTON, 10, 10, 100, 100, 0, ((void*)0), ((void*)0), ((void*)0));
    ok (hwnd1 != ((void*)0), "Expected CreateWindowW to succeed\n");
    SetWindowTheme(hwnd1, L"", L"");

    ret = SendMessageW(hwnd1, BCM_GETTEXTMARGIN, 0, (LPARAM)&rc);
    ok (ret == TRUE, "Expected BCM_GETTEXTMARGIN to succeed\n");
    ok_rect(rc, 1, 1, 1, 1);

    DestroyWindow(hwnd1);

}
