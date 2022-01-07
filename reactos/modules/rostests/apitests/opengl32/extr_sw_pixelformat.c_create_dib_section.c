
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int WORD ;
struct TYPE_5__ {int biSize; int biWidth; int biHeight; int biPlanes; int biCompression; int biBitCount; } ;
struct TYPE_6__ {TYPE_1__ bmiHeader; } ;
typedef int HBITMAP ;
typedef int BITMAPINFOHEADER ;
typedef TYPE_2__ BITMAPINFO ;


 int BI_RGB ;
 int CreateDIBSection (int ,TYPE_2__*,int ,void**,int *,int ) ;
 int DIB_RGB_COLORS ;
 int memset (TYPE_2__*,int ,int) ;

__attribute__((used)) static HBITMAP create_dib_section(WORD bpp, void** dstBuffer)
{
    BITMAPINFO bi;

    memset(&bi, 0, sizeof(BITMAPINFO));
    bi.bmiHeader.biSize = sizeof(BITMAPINFOHEADER);
    bi.bmiHeader.biWidth = 4;
    bi.bmiHeader.biHeight = -4;
    bi.bmiHeader.biPlanes = 1;
    bi.bmiHeader.biBitCount = bpp;
    bi.bmiHeader.biCompression = BI_RGB;

    return CreateDIBSection(0, &bi, DIB_RGB_COLORS, dstBuffer, ((void*)0), 0);
}
