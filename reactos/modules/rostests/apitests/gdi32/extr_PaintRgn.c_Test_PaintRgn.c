
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {double eM11; float eM12; double eM21; double eM22; double eDx; double eDy; } ;
typedef TYPE_1__ XFORM ;
struct TYPE_6__ {int member_2; int member_3; int member_1; int member_0; } ;
typedef TYPE_2__ RECT ;
typedef int * PULONG ;
typedef int * HRGN ;
typedef scalar_t__ BOOL ;


 int BLACK_BRUSH ;
 int CombineRgn (int *,int *,int *,int ) ;
 int * CreateRectRgn (int,int,int,int) ;
 int FillRect (int ,TYPE_2__*,int ) ;
 int GM_ADVANCED ;
 int GetStockObject (int ) ;
 scalar_t__ PaintRgn (int ,int *) ;
 int RGN_OR ;
 int SelectObject (int ,int ) ;
 int SetGraphicsMode (int ,int ) ;
 scalar_t__ SetWorldTransform (int ,TYPE_1__*) ;
 scalar_t__ TRUE ;
 int WHITE_BRUSH ;
 int ghdcDIB1 ;
 int * gpvDIB1 ;
 int ok (int,char*) ;
 int ok_long (int ,int) ;

void Test_PaintRgn()
{
    RECT rc = { 0, 0, 100, 100 };
    HRGN hrgn1, hrgn2;
    BOOL bRet;
    XFORM xform;
    PULONG pulDIB = gpvDIB1;

    FillRect(ghdcDIB1, &rc, GetStockObject(BLACK_BRUSH));

    hrgn1 = CreateRectRgn(0, 0, 8, 3);
    ok(hrgn1 != ((void*)0), "failed to create region\n");

    hrgn2 = CreateRectRgn(2, 3, 5, 8);
    ok(hrgn1 != ((void*)0), "failed to create region\n");

    CombineRgn(hrgn1, hrgn1, hrgn2, RGN_OR);

    xform.eM11 = 1.0;
    xform.eM12 = 0.5f;
    xform.eM21 = 0.0;
    xform.eM22 = 1.0;
    xform.eDx = 0.0;
    xform.eDy = 0.0;

    SetGraphicsMode(ghdcDIB1, GM_ADVANCED);
    ok(SetWorldTransform(ghdcDIB1, &xform) == TRUE, "SetWorldTransform failed\n");

    SelectObject(ghdcDIB1, GetStockObject(WHITE_BRUSH));

    bRet = PaintRgn(ghdcDIB1, hrgn1);
    ok(bRet == TRUE, "PaintRgn failed\n");

    ok_long(pulDIB[0], 0x00000000);
    ok_long(pulDIB[1], 0x000000C0);
    ok_long(pulDIB[2], 0x000000F0);
    ok_long(pulDIB[3], 0x000000FC);
    ok_long(pulDIB[4], 0x0000003F);
    ok_long(pulDIB[5], 0x0000003F);
    ok_long(pulDIB[6], 0x0000003B);
    ok_long(pulDIB[7], 0x00000038);
    ok_long(pulDIB[8], 0x00000038);
}
