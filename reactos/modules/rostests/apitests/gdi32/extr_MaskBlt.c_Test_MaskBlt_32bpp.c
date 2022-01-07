
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int member_0; int member_1; int member_2; int member_3; int member_4; int member_7; int member_8; int member_10; int member_9; int member_6; int member_5; } ;
struct TYPE_5__ {TYPE_1__ member_0; } ;
typedef int PVOID ;
typedef int* PULONG ;
typedef int* PUCHAR ;
typedef scalar_t__ HDC ;
typedef scalar_t__ HBITMAP ;
typedef int BOOL ;
typedef int BITMAPINFOHEADER ;
typedef TYPE_2__ BITMAPINFO ;


 int BI_RGB ;
 scalar_t__ CreateCompatibleDC (int *) ;
 scalar_t__ CreateDIBSection (scalar_t__,TYPE_2__*,int ,int *,int *,int ) ;
 int DIB_RGB_COLORS ;
 int MAKEROP4 (int ,int) ;
 int MERGEPAINT ;
 int MaskBlt (scalar_t__,int ,int ,int,int,scalar_t__,int ,int ,scalar_t__,int ,int ,int ) ;
 int SRCCOPY ;
 int SRCPAINT ;
 int SelectObject (scalar_t__,scalar_t__) ;
 int ok (int,char*,...) ;

void Test_MaskBlt_32bpp()
{
    HDC hdcDst, hdcSrc;
    BITMAPINFO bmi1 = {{sizeof(BITMAPINFOHEADER), 8, 1, 1, 1, BI_RGB, 0, 10, 10, 0,0}};
    BITMAPINFO bmi32 = {{sizeof(BITMAPINFOHEADER), 8, 1, 1, 32, BI_RGB, 0, 10, 10, 0,0}};
    HBITMAP hbmDst, hbmSrc, hbmMsk;
    PUCHAR pjBitsMsk;
    PULONG pulBitsDst, pulBitsSrc;
    BOOL ret;


    hdcDst = CreateCompatibleDC(((void*)0));
    hbmDst = CreateDIBSection(hdcDst, &bmi32, DIB_RGB_COLORS, (PVOID*)&pulBitsDst, ((void*)0), 0);
    SelectObject(hdcDst, hbmDst);


    hdcSrc = CreateCompatibleDC(((void*)0));
    hbmSrc = CreateDIBSection(hdcSrc, &bmi32, DIB_RGB_COLORS, (PVOID*)&pulBitsSrc, ((void*)0), 0);
    SelectObject(hdcSrc, hbmSrc);
    ok(hdcSrc && hbmSrc, "\n");


    hbmMsk = CreateDIBSection(hdcDst, &bmi1, DIB_RGB_COLORS, (PVOID*)&pjBitsMsk, ((void*)0), 0);
    ok(hbmMsk != 0, "CreateDIBSection failed\n");


    pulBitsDst[0] = 0x12345678;
    pulBitsDst[1] = 0x9abcdef0;
    pulBitsSrc[0] = 0x87684321;
    pulBitsSrc[1] = 0x0fedcba9;
    pjBitsMsk[0] = 0x80;
    ret = MaskBlt(hdcDst, 0, 0, 8, 1, hdcSrc, 0, 0, hbmMsk, 0, 0, MAKEROP4(SRCCOPY, 0xAA0000));
    ok(ret == 1, "MaskBlt failed (%d)\n", ret);
    ok (pulBitsDst[0] == 0x87684321, "pulBitsDst[0] == 0x%lx\n", pulBitsDst[0]);
    ok (pulBitsDst[1] == 0x9abcdef0, "pulBitsDst[0] == 0x%lx\n", pulBitsDst[1]);

    pulBitsDst[0] = 0x12345678;
    pulBitsDst[1] = 0x9abcdef0;
    ret = MaskBlt(hdcDst, 0, 0, 8, 1, hdcSrc, 0, 0, hbmMsk, 0, 0, MAKEROP4(SRCPAINT, MERGEPAINT));
    ok(ret == 1, "MaskBlt failed (%d)\n", ret);
    ok (pulBitsDst[0] == 0x977c5779, "pulBitsDst[0] == 0x%lx\n", pulBitsDst[0]);
    ok (pulBitsDst[1] == 0xfabefef6, "pulBitsDst[0] == 0x%lx\n", pulBitsDst[1]);
}
