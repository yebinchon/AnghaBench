
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int x; int y; } ;
typedef TYPE_1__ POINT ;
typedef int HDC ;


 int GetDC (int ) ;
 int ReleaseDC (int ,int ) ;
 int SetBrushOrgEx (int ,int,int,TYPE_1__*) ;
 int ok (int,char*,int,int) ;

__attribute__((used)) static void test_brush_org( void )
{
    HDC hdc = GetDC( 0 );
    POINT old, pt;

    SetBrushOrgEx( hdc, 0, 0, &old );

    SetBrushOrgEx( hdc, 1, 1, &pt );
    ok( pt.x == 0 && pt.y == 0, "got %d,%d\n", pt.x, pt.y );
    SetBrushOrgEx( hdc, 0x10000, -1, &pt );
    ok( pt.x == 1 && pt.y == 1, "got %d,%d\n", pt.x, pt.y );
    SetBrushOrgEx( hdc, old.x, old.y, &pt );
    ok( pt.x == 0x10000 && pt.y == -1, "got %d,%d\n", pt.x, pt.y );

    ReleaseDC( 0, hdc );
}
