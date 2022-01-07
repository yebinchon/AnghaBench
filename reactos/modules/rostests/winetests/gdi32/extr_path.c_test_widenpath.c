
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int x; int y; } ;
typedef TYPE_1__ POINT ;
typedef int INT ;
typedef int HPEN ;
typedef int HDC ;
typedef int BOOL ;


 int AbortPath (int ) ;
 int BeginPath (int ) ;
 int CreatePen (int ,int,int ) ;
 int ERROR_CAN_NOT_COMPLETE ;
 int EndPath (int ) ;
 int FALSE ;
 int GetDC (int ) ;
 int GetLastError () ;
 int GetPath (int ,int *,int *,int ) ;
 int PS_SOLID ;
 int Polyline (int ,TYPE_1__*,int) ;
 int RGB (int ,int ,int ) ;
 int ReleaseDC (int ,int ) ;
 int SelectObject (int ,int ) ;
 int SetLastError (int) ;
 int TRUE ;
 int WidenPath (int ) ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_widenpath(void)
{
    HDC hdc = GetDC(0);
    HPEN greenPen, narrowPen;
    POINT pnt[6];
    INT nSize;
    BOOL ret;


    greenPen = CreatePen(PS_SOLID, 10, RGB(0,0,0));
    SelectObject(hdc, greenPen);


    pnt[0].x = 100;
    pnt[0].y = 0;
    pnt[1].x = 200;
    pnt[1].y = 0;
    pnt[2].x = 300;
    pnt[2].y = 100;
    pnt[3].x = 300;
    pnt[3].y = 200;
    pnt[4].x = 200;
    pnt[4].y = 300;
    pnt[5].x = 100;
    pnt[5].y = 300;


    BeginPath(hdc);
    Polyline(hdc, pnt, 6);
    EndPath(hdc);


    ok(WidenPath(hdc), "WidenPath fails while widening a poyline path.\n");


    nSize = GetPath(hdc, ((void*)0), ((void*)0), 0);
    ok(nSize != -1, "GetPath fails after calling WidenPath.\n");
    ok(nSize > 6, "Path number of points is too low. Should be more than 6 but is %d\n", nSize);

    AbortPath(hdc);


    SetLastError(0xdeadbeef);
    BeginPath(hdc);
    ret = WidenPath(hdc);
    ok(ret == FALSE && (GetLastError() == ERROR_CAN_NOT_COMPLETE || GetLastError() == 0xdeadbeef),
       "WidenPath fails while widening an open path. Return value is %d, should be %d. Error is %u\n", ret, FALSE, GetLastError());

    AbortPath(hdc);


    narrowPen = CreatePen(PS_SOLID, 1, RGB(0,0,0));
    SelectObject(hdc, narrowPen);
    BeginPath(hdc);
    Polyline(hdc, pnt, 6);
    EndPath(hdc);
    ret = WidenPath(hdc);
    ok(ret == TRUE, "WidenPath failed: %d\n", GetLastError());
    nSize = GetPath(hdc, ((void*)0), ((void*)0), 0);
    ok(nSize > 6, "WidenPath should compute a widened path with a 1px wide pen. Path length is %d, should be more than 6\n", nSize);

    ReleaseDC(0, hdc);
    return;
}
