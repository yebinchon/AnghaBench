
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RECT ;
typedef int * HWND ;
typedef int * HRGN ;
typedef int HDC ;


 int COMPLEXREGION ;
 int CW_USEDEFAULT ;
 int CombineRgn (int *,int *,int *,int ) ;
 int * CreateRectRgn (int,int,int,int) ;
 int * CreateWindowW (char*,char*,int,int ,int ,int,int,int *,int *,int ,int ) ;
 int DeleteObject (int *) ;
 int DestroyWindow (int *) ;
 int ERROR ;
 int ERROR_INVALID_HANDLE ;
 int ERROR_SUCCESS ;
 int GetClipBox (int ,int *) ;
 int GetDC (int *) ;
 int GetLastError () ;
 int MM_ANISOTROPIC ;
 int NULLREGION ;
 int RGN_OR ;
 int ReleaseDC (int *,int ) ;
 int SIMPLEREGION ;
 int SelectClipRgn (int ,int *) ;
 int SetLastError (int ) ;
 int SetMapMode (int ,int ) ;
 int SetMetaRgn (int ) ;
 int SetViewportExtEx (int ,int,int,int *) ;
 int SetWindowExtEx (int ,int,int,int *) ;
 int WS_OVERLAPPEDWINDOW ;
 int WS_VISIBLE ;
 int ok (int,char*,...) ;
 int ok_int (int,int) ;
 int ok_rect (int *,int,int,int,int) ;

void Test_GetClipBox()
{
    HWND hWnd;
    HDC hdc;
    RECT rect;
    HRGN hrgn, hrgn2;
    int ret;


    hWnd = CreateWindowW(L"BUTTON", L"TestWindow", WS_OVERLAPPEDWINDOW | WS_VISIBLE,
                        CW_USEDEFAULT, CW_USEDEFAULT, 100, 100,
                        ((void*)0), ((void*)0), 0, 0);
    ok(hWnd != ((void*)0), "CreateWindowW failed\n");
    if (hWnd == ((void*)0))
    {
        return;
    }

    hdc = GetDC(hWnd);


    SetLastError(ERROR_SUCCESS);
    ret = GetClipBox((HDC)0x12345, &rect);
    ok(ret == ERROR, "Expected ERROR, got %d\n", ret);
    ok((GetLastError() == 0) || (GetLastError() == ERROR_INVALID_HANDLE), "Expected 0, got %ld\n", GetLastError());






    hrgn = CreateRectRgn(5, 7, 50, 50);
    SelectClipRgn(hdc, hrgn);
    DeleteObject(hrgn);
    ret = GetClipBox(hdc, &rect);
    ok_int(ret, SIMPLEREGION);
    ok_rect(&rect, 5, 7, 50, 50);


    SetMetaRgn(hdc);


    hrgn = CreateRectRgn(10, 10, 100, 100);
    SelectClipRgn(hdc, hrgn);
    DeleteObject(hrgn);
    ret = GetClipBox(hdc, &rect);
    ok_int(ret, SIMPLEREGION);
    ok_rect(&rect, 10, 10, 50, 50);


    hrgn = CreateRectRgn(10, 10, 10, 30);
    SelectClipRgn(hdc, hrgn);
    DeleteObject(hrgn);
    ret = GetClipBox(hdc, &rect);
    ok_int(ret, NULLREGION);
    ok_rect(&rect, 0, 0, 0, 0);


    hrgn = CreateRectRgn(10, 10, 30, 30);
    hrgn2 = CreateRectRgn(20, 20, 60, 60);
    ok_int(CombineRgn(hrgn, hrgn, hrgn2, RGN_OR), COMPLEXREGION);
    SelectClipRgn(hdc, hrgn);
    DeleteObject(hrgn2);
    ret = GetClipBox(hdc, &rect);
    ok_int(ret, COMPLEXREGION);
    ok_rect(&rect, 10, 10, 50, 50);


    ok_int(SetViewportExtEx(hdc, 1000, 1000, ((void*)0)), 1);
    ret = GetClipBox(hdc, &rect);
    ok_int(ret, COMPLEXREGION);
    ok_rect(&rect, 10, 10, 50, 50);


    ok_int(SetMapMode(hdc, MM_ANISOTROPIC), 1);
    ret = GetClipBox(hdc, &rect);
    ok_int(ret, COMPLEXREGION);
    ok_rect(&rect, 10, 10, 50, 50);


    ok_int(SetViewportExtEx(hdc, 200, 400, ((void*)0)), 1);
    ret = GetClipBox(hdc, &rect);
    ok_int(ret, COMPLEXREGION);
    ok_rect(&rect, 0, 0, 0, 0);


    SelectClipRgn(hdc, ((void*)0));
    SetMetaRgn(hdc);
    ret = GetClipBox(hdc, &rect);
    ok_int(ret, SIMPLEREGION);
    ok_rect(&rect, 0, 0, 0, 0);

    hrgn = CreateRectRgn(10, 10, 190, 190);
    SelectClipRgn(hdc, hrgn);
    ret = GetClipBox(hdc, &rect);
    ok_int(ret, SIMPLEREGION);
    ok_rect(&rect, 0, 0, 0, 0);


    ok_int(SetWindowExtEx(hdc, 400, 600, ((void*)0)), 1);
    ret = GetClipBox(hdc, &rect);
    ok_int(ret, SIMPLEREGION);
    ok_rect(&rect, 20, 15, 100, 75);

    hrgn = CreateRectRgn(30, 30, 300, 300);
    SelectClipRgn(hdc, hrgn);
    SetMetaRgn(hdc);
    ret = GetClipBox(hdc, &rect);
    ok_int(ret, SIMPLEREGION);
    ok_rect(&rect, 60, 45, 100, 75);

    ReleaseDC(hWnd, hdc);
    DestroyWindow(hWnd);
}
