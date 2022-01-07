
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_8__ {int biWidth; } ;
struct TYPE_9__ {TYPE_3__ bmiHeader; } ;
struct TYPE_7__ {int member_1; int member_0; } ;
struct TYPE_6__ {int member_0; int member_1; int member_2; int member_3; int member_4; int member_7; int member_8; int member_9; int member_10; int member_6; int member_5; } ;
typedef int PVOID ;
typedef int* PULONG ;
typedef TYPE_4__* PBITMAPINFO ;
typedef int HDC ;
typedef scalar_t__ HBRUSH ;
typedef scalar_t__ HBITMAP ;
typedef int BOOL ;
typedef int BITMAPINFOHEADER ;


 int BI_RGB ;
 int CreateCompatibleDC (int *) ;
 scalar_t__ CreateDIBSection (int ,TYPE_4__*,int ,int *,int *,int ) ;
 scalar_t__ CreateHatchBrush (int ,int ) ;
 scalar_t__ CreatePatternBrush (scalar_t__) ;
 int DIB_RGB_COLORS ;
 int HS_CROSS ;
 int MAKEROP4 (int ,int) ;
 int MaskBlt (int ,int ,int ,int,int,int ,int ,int ,int *,int ,int ,int ) ;
 int SRCCOPY ;
 scalar_t__ SelectObject (int ,scalar_t__) ;
 int ok (int,char*,...) ;

void Test_MaskBlt_Brush()
{
    HDC hdcDst, hdcSrc;
    struct
    {
        BITMAPINFOHEADER bmiHeader;
        ULONG aulColors[2];
    } bmiData = {{sizeof(BITMAPINFOHEADER), 16, 16, 1, 1, BI_RGB, 0, 10, 10, 2,0}, {0, 0xFFFFFF}};
    PBITMAPINFO pbmi = (PBITMAPINFO)&bmiData;
    HBITMAP hbmDst, hbmSrc, hbmMsk;
    PULONG pulBitsDst, pulBitsSrc, pulBitsMsk;
    BOOL ret;
    HBRUSH hbr;


    hdcDst = CreateCompatibleDC(((void*)0));
    hbmDst = CreateDIBSection(hdcDst, pbmi, DIB_RGB_COLORS, (PVOID*)&pulBitsDst, ((void*)0), 0);
    SelectObject(hdcDst, hbmDst);


    hdcSrc = CreateCompatibleDC(((void*)0));
    hbmSrc = CreateDIBSection(hdcSrc, pbmi, DIB_RGB_COLORS, (PVOID*)&pulBitsSrc, ((void*)0), 0);
    SelectObject(hdcSrc, hbmSrc);

    hbr = CreateHatchBrush(HS_CROSS, 0);
    ok(hbr != 0, "failed to create brush\n");
    ok(SelectObject(hdcDst, hbr) != 0, "failed to select brush\n");


    pulBitsDst[0] = 0x00000000;
    pulBitsSrc[0] = 0xFFFFFFFF;
    ret = MaskBlt(hdcDst, 0, 0, 8, 1, hdcSrc, 0, 0, ((void*)0), 0, 0, MAKEROP4(SRCCOPY, 0xAA0000));
    ok(ret == 1, "MaskBlt failed (%d)\n", ret);
    ok(pulBitsDst[0] == 0, "pulBitsDst[0] == 0x%lx\n", pulBitsDst[0]);


    pbmi->bmiHeader.biWidth = 8;
    hbmMsk = CreateDIBSection(hdcDst, pbmi, DIB_RGB_COLORS, (PVOID*)&pulBitsMsk, ((void*)0), 0);
    ok(hbmMsk != 0, "CreateDIBSection failed\n");
    hbr = CreatePatternBrush(hbmMsk);
    ok(hbr != 0, "CreatePatternBrush failed\n");
    ok(SelectObject(hdcDst, hbr) != 0, "failed to select brush\n");


    pulBitsDst[0] = 0x00000000;
    pulBitsSrc[0] = 0xFFFFFFFF;
    pulBitsMsk[0] = 0xCCAAFF00;
    ret = MaskBlt(hdcDst, 0, 0, 16, 1, hdcSrc, 0, 0, ((void*)0), 0, 0, MAKEROP4(SRCCOPY, 0xAA0000));
    ok(ret == 1, "MaskBlt failed (%d)\n", ret);
    ok(pulBitsDst[0] == 0, "pulBitsDst[0] == 0x%lx\n", pulBitsDst[0]);

}
