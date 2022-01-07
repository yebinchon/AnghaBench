
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UCHAR ;
struct TYPE_3__ {int member_2; int member_3; int member_1; int member_0; } ;
typedef TYPE_1__ RECT ;
typedef int * HRGN ;
typedef int COLORREF ;
typedef scalar_t__ BOOL ;


 int BLACK_BRUSH ;
 int CheckBitmapBits (int ,int,int,int*,int *) ;
 int CombineRgn (int *,int *,int *,int ) ;
 int * CreateRectRgn (int,int,int,int) ;
 int FillRect (int ,TYPE_1__*,int ) ;
 scalar_t__ FillRgn (int ,int *,int ) ;
 scalar_t__ FrameRgn (int ,int *,int ,int,int) ;
 int GRAY_BRUSH ;
 int GetStockObject (int ) ;
 int RGB (int,int,int) ;
 int RGN_OR ;
 int WHITE_BRUSH ;
 int ghdcDIB32 ;
 int ok (int,char*) ;

void Test_FrameRgn()
{
    RECT rc = {0, 0, 8, 8 };
    HRGN hrgn1, hrgn2;
    BOOL bRet;
    UCHAR ajBits[64] = {
        0, 0, 0, 0, 0, 0, 0, 0,
        0, 1, 1, 1, 1, 0, 0, 0,
        0, 1, 2, 2, 1, 0, 0, 0,
        0, 1, 2, 2, 1, 1, 1, 0,
        0, 1, 1, 1, 2, 2, 1, 0,
        0, 0, 0, 1, 2, 2, 1, 0,
        0, 0, 0, 1, 1, 1, 1, 0,
        0, 0, 0, 0, 0, 0, 0, 0
    };
    COLORREF acrColors[16] = {RGB(0,0,0), RGB(255,255,255), RGB(128,128,128), 0};

    FillRect(ghdcDIB32, &rc, GetStockObject(BLACK_BRUSH));

    hrgn1 = CreateRectRgn(1, 1, 5, 5);
    ok(hrgn1 != ((void*)0), "failed to create region\n");

    hrgn2 = CreateRectRgn(3, 3, 7, 7);
    ok(hrgn1 != ((void*)0), "failed to create region\n");

    CombineRgn(hrgn1, hrgn1, hrgn2, RGN_OR);

    bRet = FillRgn(ghdcDIB32, hrgn1, GetStockObject(GRAY_BRUSH));
    ok(bRet != 0, "FrameRgn failed\n");

    bRet = FrameRgn(ghdcDIB32, hrgn1, GetStockObject(WHITE_BRUSH), 1, 1);
    ok(bRet != 0, "FrameRgn failed\n");

    CheckBitmapBits(ghdcDIB32, 8, 8, ajBits, acrColors);

}
