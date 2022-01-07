
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int buffer ;
typedef int ULONG ;
struct TYPE_6__ {int biSize; int biWidth; int biHeight; int biPlanes; int biBitCount; scalar_t__ biClrImportant; scalar_t__ biClrUsed; scalar_t__ biYPelsPerMeter; scalar_t__ biXPelsPerMeter; scalar_t__ biSizeImage; int biCompression; } ;
struct TYPE_8__ {TYPE_2__* bmiColors; TYPE_1__ bmiHeader; } ;
struct TYPE_7__ {int rgbBlue; int rgbRed; scalar_t__ rgbGreen; } ;
typedef int RGBQUAD ;
typedef int PVOID ;
typedef int * HBITMAP ;
typedef int BITMAPINFOHEADER ;
typedef TYPE_3__ BITMAPINFO ;


 int BI_RGB ;
 int * CreateDIBSection (int *,TYPE_3__*,int ,int *,int *,int ) ;
 int DIB_RGB_COLORS ;
 int DeleteObject (int *) ;
 int SetDIBits (int *,int *,int ,int,char*,TYPE_3__*,int ) ;
 int ZeroMemory (char*,int) ;
 int ok (int,char*,...) ;

void Test_SetDIBits()
{
    char buffer[sizeof(BITMAPINFOHEADER)+2*sizeof(RGBQUAD)];
    ULONG* dibBuffer;
    BITMAPINFO* pBMI = (BITMAPINFO*)buffer;
    char bits1bpp[] = {0x80, 0, 0, 0};
    HBITMAP hbmp;
    int ret;

    ZeroMemory(buffer, sizeof(buffer));

    pBMI->bmiHeader.biSize=sizeof(BITMAPINFOHEADER);
    pBMI->bmiHeader.biWidth=2;
    pBMI->bmiHeader.biHeight=1;
    pBMI->bmiHeader.biPlanes=1;
    pBMI->bmiHeader.biBitCount=32;
    pBMI->bmiHeader.biCompression=BI_RGB;
    pBMI->bmiHeader.biSizeImage=0;
    pBMI->bmiHeader.biXPelsPerMeter=0;
    pBMI->bmiHeader.biYPelsPerMeter=0;
    pBMI->bmiHeader.biClrUsed=0;
    pBMI->bmiHeader.biClrImportant=0;

    hbmp = CreateDIBSection(((void*)0), pBMI, DIB_RGB_COLORS, (PVOID*)&dibBuffer, ((void*)0), 0);
    ok(hbmp!=((void*)0), "Failed to create a DIB section\n");

    pBMI->bmiHeader.biBitCount = 1;
    pBMI->bmiColors[0].rgbBlue = 0xFF;
    pBMI->bmiColors[0].rgbGreen = 0;
    pBMI->bmiColors[0].rgbRed = 0xFF;

    ret = SetDIBits(((void*)0), hbmp, 0, 1, bits1bpp, pBMI, DIB_RGB_COLORS);
    ok(ret == 1, "Copied %i scanlines\n", ret);

    ok(dibBuffer[0] == 0, "Wrong color 0x%08x after SetDIBits\n", (unsigned int)dibBuffer[0]);
    ok(dibBuffer[1] == 0xFF00FF, "Wrong color 0x%08x after SetDIBits\n", (unsigned int)dibBuffer[1]);

    DeleteObject(hbmp);
}
