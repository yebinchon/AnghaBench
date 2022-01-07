
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * LPRECT ;
typedef int HWND ;
typedef int * HRGN ;


 int CW_USEDEFAULT ;
 int * CreateRectRgn (int ,int ,int ,int ) ;
 int CreateWindowW (char*,char*,int,int ,int ,int,int,int *,int *,int ,int ) ;
 int DeleteObject (int *) ;
 int DestroyWindow (int ) ;
 int ERROR ;
 int FALSE ;
 int GetUpdateRgn (int ,int *,int ) ;
 int NULLREGION ;
 int SIMPLEREGION ;
 int SW_INVALIDATE ;
 int ScrollWindowEx (int ,int,int ,int *,int *,int *,int *,int ) ;
 int UpdateWindow (int ) ;
 int WS_OVERLAPPEDWINDOW ;
 int WS_VISIBLE ;
 int ok (int,char*,int) ;

void Test_ScrollWindowEx()
{
 HWND hWnd;
 HRGN hrgn;
 int Result;


 hWnd = CreateWindowW(L"BUTTON", L"TestWindow", WS_OVERLAPPEDWINDOW | WS_VISIBLE,
                     CW_USEDEFAULT, CW_USEDEFAULT, 100, 100,
                     ((void*)0), ((void*)0), 0, 0);
 UpdateWindow(hWnd);


 hrgn = CreateRectRgn(0,0,0,0);
 Result = GetUpdateRgn(hWnd, hrgn, FALSE);
 ok(Result == NULLREGION, "Result = %d\n", Result);

 Result = ScrollWindowEx(hWnd, 20, 0, ((void*)0), ((void*)0), ((void*)0), ((void*)0), 0);
 ok(Result == SIMPLEREGION, "Result = %d\n", Result);
 Result = GetUpdateRgn(hWnd, hrgn, FALSE);
 ok(Result == NULLREGION, "Result = %d\n", Result);

 Result = ScrollWindowEx(hWnd, 20, 0, ((void*)0), ((void*)0), ((void*)0), ((void*)0), SW_INVALIDATE);
 ok(Result == SIMPLEREGION, "Result = %d\n", Result);
 Result = GetUpdateRgn(hWnd, hrgn, FALSE);
 ok(Result == SIMPLEREGION, "Result = %d\n", Result);
 UpdateWindow(hWnd);


 DeleteObject(hrgn);
 Result = ScrollWindowEx(hWnd, 20, 0, ((void*)0), ((void*)0), hrgn, ((void*)0), SW_INVALIDATE);
 ok(Result == ERROR, "Result = %d\n", Result);
 hrgn = CreateRectRgn(0,0,0,0);
 UpdateWindow(hWnd);


 Result = ScrollWindowEx(hWnd, 20, 0, ((void*)0), ((void*)0), ((void*)0), (LPRECT)1, SW_INVALIDATE);
 ok(Result == ERROR, "Result = %d\n", Result);
 Result = GetUpdateRgn(hWnd, hrgn, FALSE);
 ok(Result == SIMPLEREGION, "Result = %d\n", Result);



 DeleteObject(hrgn);
    DestroyWindow(hWnd);
}
