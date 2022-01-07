
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int x; int y; } ;
typedef TYPE_1__ POINT ;
typedef int HDC ;


 int AbortPath (int ) ;
 int BeginPath (int ) ;
 int CloseFigure (int ) ;
 int EndPath (int ) ;
 int GetCurrentPositionEx (int ,TYPE_1__*) ;
 int GetDC (int ) ;
 int GetPath (int ,int *,int *,int ) ;
 int LineTo (int ,int,int) ;
 int MoveToEx (int ,int,int,int *) ;
 int ReleaseDC (int ,int ) ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_closefigure(void) {
    int nSize, nSizeWitness;
    POINT pos;
    HDC hdc = GetDC(0);

    MoveToEx( hdc, 100, 100, ((void*)0) );
    GetCurrentPositionEx( hdc, &pos );
    ok( pos.x == 100 && pos.y == 100, "wrong pos %d,%d\n", pos.x, pos.y );

    BeginPath(hdc);
    GetCurrentPositionEx( hdc, &pos );
    ok( pos.x == 100 && pos.y == 100, "wrong pos %d,%d\n", pos.x, pos.y );
    MoveToEx(hdc, 95, 95, ((void*)0));
    GetCurrentPositionEx( hdc, &pos );
    ok( pos.x == 95 && pos.y == 95, "wrong pos %d,%d\n", pos.x, pos.y );
    LineTo(hdc, 95, 0);
    GetCurrentPositionEx( hdc, &pos );
    ok( pos.x == 95 && pos.y == 0, "wrong pos %d,%d\n", pos.x, pos.y );
    LineTo(hdc, 0, 95);
    GetCurrentPositionEx( hdc, &pos );
    ok( pos.x == 0 && pos.y == 95, "wrong pos %d,%d\n", pos.x, pos.y );

    CloseFigure(hdc);
    GetCurrentPositionEx( hdc, &pos );
    ok( pos.x == 0 && pos.y == 95, "wrong pos %d,%d\n", pos.x, pos.y );
    EndPath(hdc);
    GetCurrentPositionEx( hdc, &pos );
    ok( pos.x == 0 && pos.y == 95, "wrong pos %d,%d\n", pos.x, pos.y );
    nSize = GetPath(hdc, ((void*)0), ((void*)0), 0);

    AbortPath(hdc);

    BeginPath(hdc);
    MoveToEx(hdc, 95, 95, ((void*)0));
    LineTo(hdc, 95, 0);
    LineTo(hdc, 0, 95);

    EndPath(hdc);
    nSizeWitness = GetPath(hdc, ((void*)0), ((void*)0), 0);


    ok(nSize == nSizeWitness, "Wrong number of points, no point should be added by CloseFigure\n");

    ReleaseDC(0, hdc);
}
