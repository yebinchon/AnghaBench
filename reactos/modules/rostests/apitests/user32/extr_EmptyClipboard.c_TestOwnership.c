
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * HWND ;
typedef int BOOL ;


 int CloseClipboard () ;
 int * CreateWindowW (char*,char*,int ,int,int,int,int,int *,int *,int ,int *) ;
 int DestroyWindow (int *) ;
 int EmptyClipboard () ;
 int * GetClipboardOwner () ;
 int OpenClipboard (int *) ;
 int WS_OVERLAPPEDWINDOW ;
 int ok (int,char*) ;

void TestOwnership()
{
    BOOL ret;
    HWND hWnd, hWndClipOwner;

    ret = OpenClipboard(((void*)0));
    ok (ret, "OpenClipboard failed\n");

    ret = EmptyClipboard();
    ok (ret, "EmptyClipboard failed\n");

    ret = CloseClipboard();
    ok (ret, "CloseClipboard failed\n");

    hWndClipOwner = GetClipboardOwner();
    ok (hWndClipOwner == ((void*)0), "Expected NULL owner\n");

    hWnd = CreateWindowW(L"static", L"static", WS_OVERLAPPEDWINDOW, 20, 20, 300, 300, ((void*)0), ((void*)0), 0, ((void*)0));
    ok (hWnd != 0 , "CreateWindowW failed\n");

    ret = OpenClipboard(hWnd);
    ok (ret, "OpenClipboard failed\n");

    hWndClipOwner = GetClipboardOwner();
    ok (hWndClipOwner == ((void*)0), "Expected NULL owner\n");

    ret = EmptyClipboard();
    ok (ret, "EmptyClipboard failed\n");

    ret = CloseClipboard();
    ok (ret, "CloseClipboard failed\n");

    hWndClipOwner = GetClipboardOwner();
    ok (hWndClipOwner == hWnd, "Expected hWnd owner\n");

    DestroyWindow(hWnd);
}
