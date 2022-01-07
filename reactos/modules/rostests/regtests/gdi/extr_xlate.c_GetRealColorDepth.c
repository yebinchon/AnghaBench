
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_2__ {int biSize; int biBitCount; int biCompression; } ;
typedef int PBITMAPINFO ;
typedef int HDC ;
typedef int HBITMAP ;
typedef TYPE_1__ BITMAPINFOHEADER ;


 int BI_BITFIELDS ;
 int BMF_16BPP_555 ;
 int BMF_16BPP_565 ;
 int BMF_1BPP ;
 int BMF_32BPP_BGR ;
 int BMF_32BPP_RGB ;
 int BMF_4BPP ;
 int BMF_8BPP ;
 int CreateCompatibleBitmap (int ,int,int) ;
 int DIB_RGB_COLORS ;
 int DeleteObject (int ) ;
 int GetDC (int *) ;
 int GetDIBits (int ,int ,int ,int,int *,int ,int ) ;

ULONG
GetRealColorDepth()
{
    HBITMAP hbmp;
    HDC hdc;
    struct
    {
        BITMAPINFOHEADER bmiHeader;
        ULONG aulMasks[3];
    } bmi;
    PBITMAPINFO pbmi = (PBITMAPINFO)&bmi;
    ULONG ulColorDepth;


    hdc = GetDC(((void*)0));


    hbmp = CreateCompatibleBitmap(hdc, 1, 1);


    bmi.bmiHeader.biSize = sizeof(BITMAPINFOHEADER);
    GetDIBits(hdc, hbmp, 0, 1, ((void*)0), pbmi, DIB_RGB_COLORS);


    GetDIBits(hdc, hbmp, 0, 1, ((void*)0), pbmi, DIB_RGB_COLORS);


    ulColorDepth = bmi.bmiHeader.biBitCount;

    DeleteObject(hbmp);

    switch (ulColorDepth)
    {
        case 1:
            return BMF_1BPP;
        case 4:
            return BMF_4BPP;
        case 8:
            return BMF_8BPP;
        case 16:

            if (bmi.aulMasks[0] == 0x7c00)
                return BMF_16BPP_555;
            else
                return BMF_16BPP_565;
        case 24:
            return BMF_4BPP;
        case 32:
            if (bmi.bmiHeader.biCompression == BI_BITFIELDS &&
                bmi.aulMasks[0] == 0xff)
                return BMF_32BPP_RGB;
            else
                return BMF_32BPP_BGR;
    }


    return BMF_32BPP_RGB;
}
