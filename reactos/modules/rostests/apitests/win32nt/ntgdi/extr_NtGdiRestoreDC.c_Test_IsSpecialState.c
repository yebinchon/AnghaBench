
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int x; int y; } ;
struct TYPE_7__ {int cx; int cy; } ;
typedef TYPE_1__ SIZE ;
typedef scalar_t__ PVOID ;
typedef TYPE_2__ POINT ;
typedef int HDC ;
typedef scalar_t__ BOOL ;


 int DC_BRUSH ;
 int DC_PEN ;
 int DEFAULT_BITMAP ;
 int DEFAULT_GUI_FONT ;
 scalar_t__ GM_ADVANCED ;
 scalar_t__ GetDCBrushColor (int ) ;
 scalar_t__ GetDCPenColor (int ) ;
 scalar_t__ GetGraphicsMode (int ) ;
 scalar_t__ GetMapMode (int ) ;
 int GetStockObject (int ) ;
 int GetViewportExtEx (int ,TYPE_1__*) ;
 int GetViewportOrgEx (int ,TYPE_2__*) ;
 int GetWindowExtEx (int ,TYPE_1__*) ;
 int GetWindowOrgEx (int ,TYPE_2__*) ;
 scalar_t__ MM_ANISOTROPIC ;
 scalar_t__ RGB (int,int,int) ;
 scalar_t__ SelectObject (int ,int ) ;
 int TEST (int) ;
 scalar_t__ hbitmap ;
 scalar_t__ hbrush ;
 scalar_t__ hfont ;
 scalar_t__ hpen ;
 int hrgn2 ;
 int ok (int,char*,int) ;

__attribute__((used)) static
void
Test_IsSpecialState(HDC hdc, BOOL bMemDC)
{
    POINT pt;
    SIZE sz;


    TEST(SelectObject(hdc, GetStockObject(DC_BRUSH)) == hbrush);
    TEST(SelectObject(hdc, GetStockObject(DC_PEN)) == hpen);
    TEST(SelectObject(hdc, GetStockObject(DEFAULT_GUI_FONT)) == hfont);
    if (bMemDC)
    {
        TEST(SelectObject(hdc, GetStockObject(DEFAULT_BITMAP)) == hbitmap);
        TEST(SelectObject(hdc, hrgn2) == (PVOID)1);
    }
    else
    {
        TEST(SelectObject(hdc, GetStockObject(DEFAULT_BITMAP)) == 0);
        TEST(SelectObject(hdc, hrgn2) == (PVOID)2);
    }


    TEST(GetDCBrushColor(hdc) == RGB(12,34,56));
    TEST(GetDCPenColor(hdc) == RGB(23,34,45));


    TEST(GetMapMode(hdc) == MM_ANISOTROPIC);
    TEST(GetGraphicsMode(hdc) == GM_ADVANCED);
    GetWindowOrgEx(hdc, &pt);
    TEST(pt.x == 12);
    TEST(pt.y == 34);
    GetViewportOrgEx(hdc, &pt);
    TEST(pt.x == 56);
    TEST(pt.y == 78);
    GetWindowExtEx(hdc, &sz);
    ok(sz.cx == 123, "sz.cx == %ld\n", sz.cx);
    ok(sz.cy == 456, "sz.cy == %ld\n", sz.cy);
    GetViewportExtEx(hdc, &sz);
    TEST(sz.cx == 234);
    TEST(sz.cy == 567);


}
