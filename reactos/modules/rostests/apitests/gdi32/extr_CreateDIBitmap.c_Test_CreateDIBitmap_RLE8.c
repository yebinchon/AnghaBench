
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int WORD ;
struct TYPE_9__ {int biSizeImage; } ;
struct TYPE_8__ {int member_0; int member_3; int member_5; int member_7; int member_8; int member_9; int member_10; int member_11; int member_12; int member_13; int member_14; int member_15; int member_16; int member_18; int member_19; int member_17; int member_6; int member_4; int member_2; int member_1; } ;
struct TYPE_7__ {int member_1; int member_2; int member_3; int member_0; } ;
struct TYPE_6__ {int member_0; int member_1; int member_2; int member_3; int member_4; int member_6; int member_7; int member_8; int member_9; int member_10; int member_5; } ;
typedef int PVOID ;
typedef int HDC ;
typedef scalar_t__ HBITMAP ;
typedef int BYTE ;
typedef TYPE_4__ BITMAPINFOHEADER ;


 int BI_RLE8 ;
 int CBM_INIT ;
 int CreateCompatibleDC (int ) ;
 scalar_t__ CreateDIBitmap (int ,TYPE_4__*,int ,int**,int ,int ) ;
 int DIB_PAL_COLORS ;
 int DeleteObject (scalar_t__) ;
 int SetLastError (int) ;
 int ok (int,char*) ;
 int ok_err (int) ;

void Test_CreateDIBitmap_RLE8()
{
    struct
    {
        BITMAPINFOHEADER bmiHeader;
        WORD wColors[4];
        BYTE ajBuffer[20];
    } PackedDIB =
    {
        {sizeof(BITMAPINFOHEADER), 4, 4, 1, 8, BI_RLE8, 20, 1, 1, 4, 0},
        {0, 1, 2, 7},
        {4,0, 0,2,0,1,0,2,3,1, 2,1, 2,2, 1,3,1,0,1,2, },
    };
    HDC hdc;
    HBITMAP hbmp;

    hdc = CreateCompatibleDC(0);

    SetLastError(0xbadbad00);
    hbmp = CreateDIBitmap(hdc, &PackedDIB.bmiHeader, CBM_INIT, &PackedDIB.ajBuffer, (PVOID)&PackedDIB, DIB_PAL_COLORS);
    ok(hbmp != 0, "CreateDIBitmap failed.\n");
    ok_err(0xbadbad00);
    DeleteObject(hbmp);

    PackedDIB.bmiHeader.biSizeImage = 2;
    hbmp = CreateDIBitmap(hdc, &PackedDIB.bmiHeader, CBM_INIT, &PackedDIB.ajBuffer, (PVOID)&PackedDIB, DIB_PAL_COLORS);
    ok(hbmp != 0, "CreateDIBitmap failed.\n");
    ok_err(0xbadbad00);
    DeleteObject(hbmp);

    PackedDIB.bmiHeader.biSizeImage = 1;
    hbmp = CreateDIBitmap(hdc, &PackedDIB.bmiHeader, CBM_INIT, &PackedDIB.ajBuffer, (PVOID)&PackedDIB, DIB_PAL_COLORS);
    ok(hbmp != 0, "CreateDIBitmap failed.\n");
    ok_err(0xbadbad00);
    DeleteObject(hbmp);

    PackedDIB.bmiHeader.biSizeImage = 0;
    hbmp = CreateDIBitmap(hdc, &PackedDIB.bmiHeader, CBM_INIT, &PackedDIB.ajBuffer, (PVOID)&PackedDIB, DIB_PAL_COLORS);
    ok(hbmp == 0, "CreateDIBitmap succeeded, expected failure\n");
    ok_err(0xbadbad00);


    PackedDIB.bmiHeader.biSizeImage = 20;
    PackedDIB.ajBuffer[0] = 17;
    hbmp = CreateDIBitmap(hdc, &PackedDIB.bmiHeader, CBM_INIT, &PackedDIB.ajBuffer, (PVOID)&PackedDIB, DIB_PAL_COLORS);
    ok(hbmp != 0, "CreateDIBitmap failed\n");
    ok_err(0xbadbad00);
    DeleteObject(hbmp);


}
