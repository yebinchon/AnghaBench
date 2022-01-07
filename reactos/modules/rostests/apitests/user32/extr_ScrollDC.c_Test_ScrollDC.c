
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int left; int right; int bottom; scalar_t__ top; } ;
typedef TYPE_1__ RECT ;
typedef int * PRECT ;
typedef int HWND ;
typedef int * HRGN ;
typedef int HDC ;


 int * CreateRectRgn (int ,int ,int ,int ) ;
 int CreateWindowW (char*,char*,int,int,int,int,int,int *,int *,int ,int ) ;
 int DeleteObject (int *) ;
 int DestroyWindow (int ) ;
 scalar_t__ FALSE ;
 int GetDC (int ) ;
 int GetUpdateRgn (int ,int *,scalar_t__) ;
 int NULLREGION ;
 int ReleaseDC (int ,int ) ;
 scalar_t__ ScrollDC (int ,int,int,int *,TYPE_1__*,int *,int *) ;
 scalar_t__ TRUE ;
 int UpdateWindow (int ) ;
 int WS_OVERLAPPEDWINDOW ;
 int WS_VISIBLE ;
 int ok (int,char*,...) ;

void Test_ScrollDC()
{
 HWND hWnd, hWnd2;
 HDC hDC;
 HRGN hrgn;
 RECT rcClip;
 int iResult;


 hWnd = CreateWindowW(L"BUTTON", L"TestWindow", WS_OVERLAPPEDWINDOW | WS_VISIBLE,
                     100, 100, 100, 100,
                     ((void*)0), ((void*)0), 0, 0);
 UpdateWindow(hWnd);
 hDC = GetDC(hWnd);


 hrgn = CreateRectRgn(0,0,0,0);
 iResult = GetUpdateRgn(hWnd, hrgn, FALSE);
 ok (iResult == NULLREGION, "Expected NULLREGION, got %d\n", iResult);


 ok(ScrollDC(hDC, 0, 0, ((void*)0), ((void*)0), hrgn, ((void*)0)) == TRUE, "ScrollDC failed\n");


 DeleteObject(hrgn);
 ok(ScrollDC(hDC, 50, 0, ((void*)0), ((void*)0), (HRGN)0x12345678, ((void*)0)) == FALSE, "ScrollDC successed\n");
 ok(ScrollDC(hDC, 50, 0, ((void*)0), ((void*)0), hrgn, ((void*)0)) == FALSE, "ScrollDC successed\n");
 hrgn = CreateRectRgn(0,0,0,0);
 iResult = GetUpdateRgn(hWnd, hrgn, FALSE);
 ok(iResult == NULLREGION, "Expected NULLREGION, got %d\n", iResult);


 ok(ScrollDC(hDC, 50, 0, ((void*)0), ((void*)0), ((void*)0), (PRECT)1) == FALSE, "ScrollDC failed\n");
 iResult = GetUpdateRgn(hWnd, hrgn, FALSE);
 ok(iResult == NULLREGION, "Expected NULLREGION, got %d\n", iResult);


    rcClip.left = 50; rcClip.top = 0; rcClip.right = 100; rcClip.bottom = 100;
 ok(ScrollDC(hDC, 50, 0, ((void*)0), &rcClip, hrgn, ((void*)0)) == TRUE, "ScrollDC failed\n");
 iResult = GetUpdateRgn(hWnd, hrgn, FALSE);
 ok(iResult == NULLREGION, "Expected NULLREGION, got %d\n", iResult);


    rcClip.left = 50; rcClip.top = 0; rcClip.right = 100; rcClip.bottom = 100;
 ok(ScrollDC(hDC, 50, 50, ((void*)0), &rcClip, hrgn, ((void*)0)) == TRUE, "ScrollDC failed\n");
 iResult = GetUpdateRgn(hWnd, hrgn, FALSE);
 ok(iResult == NULLREGION, "Expected NULLREGION, got %d\n", iResult);


 hWnd2 = CreateWindowW(L"BUTTON", L"TestWindow", WS_OVERLAPPEDWINDOW | WS_VISIBLE,
                     30, 160, 100, 100,
                     ((void*)0), ((void*)0), 0, 0);
 UpdateWindow(hWnd2);


 ReleaseDC(hWnd, hDC);
    DestroyWindow(hWnd);
    DestroyWindow(hWnd2);

}
