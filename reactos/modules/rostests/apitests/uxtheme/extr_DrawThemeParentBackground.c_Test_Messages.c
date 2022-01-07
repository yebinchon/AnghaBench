
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rc ;
typedef int RECT ;
typedef int * HDC ;


 int COMPARE_CACHE (int ) ;
 int * CreateWindowW (char*,char*,int,int,int,int,int,int *,int *,int *,int *) ;
 int DrawThemeParentBackground (int *,int *,int *) ;
 int EMPTY_CACHE () ;
 int FlushMessages () ;
 int * GetDC (int *) ;
 int RegisterSimpleClass (int ,char*) ;
 int SW_SHOW ;
 int ShowWindow (int *,int ) ;
 int TestProc ;
 int UpdateWindow (int *) ;
 int WS_CHILD ;
 int WS_OVERLAPPEDWINDOW ;
 int WS_VISIBLE ;
 int draw_parent_chain ;
 int empty_chain ;
 int * hWnd1 ;
 int * hWnd2 ;
 int memset (int *,int ,int) ;
 int ok (int ,char*) ;

void Test_Messages()
{
    HDC hdc;
    RECT rc;

    RegisterSimpleClass(TestProc, L"testClass");

    hWnd1 = CreateWindowW(L"testClass", L"Test parent", WS_OVERLAPPEDWINDOW | WS_VISIBLE, 100, 100, 200, 200, 0, ((void*)0), ((void*)0), ((void*)0));
    ok (hWnd1 != ((void*)0), "Expected CreateWindowW to succeed\n");

    hWnd2 = CreateWindowW(L"testClass", L"test window", WS_CHILD | WS_VISIBLE, 0, 0, 100, 100, hWnd1, ((void*)0), ((void*)0), ((void*)0));
    ok (hWnd2 != ((void*)0), "Expected CreateWindowW to succeed\n");

    FlushMessages();
    EMPTY_CACHE();

    hdc = GetDC(hWnd1);

    DrawThemeParentBackground(hWnd2, hdc, ((void*)0));
    FlushMessages();
    COMPARE_CACHE(draw_parent_chain);

    DrawThemeParentBackground(hWnd1, hdc, ((void*)0));
    FlushMessages();
    COMPARE_CACHE(empty_chain);

    ShowWindow(hWnd1, SW_SHOW);
    UpdateWindow(hWnd1);
    ShowWindow(hWnd2, SW_SHOW);
    UpdateWindow(hWnd2);

    FlushMessages();
    EMPTY_CACHE();

    DrawThemeParentBackground(hWnd2, ((void*)0), ((void*)0));
    FlushMessages();
    COMPARE_CACHE(empty_chain);

    DrawThemeParentBackground(hWnd1, ((void*)0), ((void*)0));
    FlushMessages();
    COMPARE_CACHE(empty_chain);

    DrawThemeParentBackground(hWnd2, hdc, ((void*)0));
    FlushMessages();
    COMPARE_CACHE(draw_parent_chain);

    DrawThemeParentBackground(hWnd1, hdc, ((void*)0));
    FlushMessages();
    COMPARE_CACHE(empty_chain);

    memset(&rc, 0, sizeof(rc));

    DrawThemeParentBackground(hWnd2, hdc, &rc);
    FlushMessages();
    COMPARE_CACHE(draw_parent_chain);

    DrawThemeParentBackground(hWnd1, hdc, &rc);
    FlushMessages();
    COMPARE_CACHE(empty_chain);
}
