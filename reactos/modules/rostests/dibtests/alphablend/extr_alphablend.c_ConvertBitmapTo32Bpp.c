
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int biSize; int biWidth; int biHeight; int biPlanes; int biBitCount; int biSizeImage; int biCompression; } ;
struct TYPE_9__ {TYPE_1__ bmiHeader; } ;
struct TYPE_8__ {int bmWidth; int bmHeight; } ;
typedef int HDC ;
typedef scalar_t__ HBITMAP ;
typedef int COLORREF ;
typedef int BOOL ;
typedef int BITMAPINFO ;
typedef TYPE_2__ BITMAP ;


 int BI_RGB ;
 int BitBlt (int ,int ,int ,int,int,int ,int ,int ,int ) ;
 int CreateCompatibleDC (int *) ;
 scalar_t__ CreateDIBSection (int ,TYPE_3__*,int ,int**,int ,int ) ;
 int DIB_RGB_COLORS ;
 int DeleteDC (int ) ;
 int DeleteObject (scalar_t__) ;
 int FALSE ;
 int GetPixel (int ,int,int) ;
 scalar_t__ GetRValue (int ) ;
 scalar_t__ H32BppBitmap ;
 int HInst ;
 int HMemDC ;
 int IMAGE_BITMAP ;
 scalar_t__ LoadImage (int ,int ,int ,int ,int ,int ) ;
 int MAKEINTRESOURCE (int) ;
 int SRCCOPY ;
 int SelectObject (int ,scalar_t__) ;
 int TRUE ;
 int ZeroMemory (TYPE_3__*,int) ;
 TYPE_3__ bmpi ;
 int* pBmpBits ;

BOOL ConvertBitmapTo32Bpp(HDC hDC, BITMAP *bmp)
{
  ZeroMemory(&bmpi, sizeof(BITMAPINFO));
  bmpi.bmiHeader.biSize = sizeof(BITMAPINFO);
  bmpi.bmiHeader.biWidth = bmp->bmWidth;
  bmpi.bmiHeader.biHeight = bmp->bmHeight;
  bmpi.bmiHeader.biPlanes = 1;
  bmpi.bmiHeader.biBitCount = 32;
  bmpi.bmiHeader.biCompression = BI_RGB;
  bmpi.bmiHeader.biSizeImage = 4 * bmpi.bmiHeader.biWidth * bmpi.bmiHeader.biHeight;
  H32BppBitmap = CreateDIBSection(hDC, &bmpi, DIB_RGB_COLORS, &pBmpBits, 0, 0);
  if(H32BppBitmap)
  {
    HBITMAP bmpalpha;
    SelectObject(hDC, H32BppBitmap);
    BitBlt(hDC, 0, 0, bmp->bmWidth, bmp->bmHeight, HMemDC, 0, 0, SRCCOPY);


    bmpalpha = LoadImage(HInst, MAKEINTRESOURCE(2000), IMAGE_BITMAP,
                            0, 0, 0);
    if(bmpalpha)
    {
      COLORREF *col = pBmpBits;
      int x, y;
      HDC hdcTemp = CreateCompatibleDC(((void*)0));
      if(!hdcTemp)
      {
        DeleteObject(bmpalpha);
        return FALSE;
      }
      SelectObject(hdcTemp, bmpalpha);

      for(y = 0; y < bmp->bmHeight; y++)
      {
        for(x = 0; x < bmp->bmWidth; x++)
        {
          COLORREF Color = (COLORREF)GetRValue(GetPixel(hdcTemp, x, y)) << 24;
          *col++ |= Color;
        }
      }

      DeleteObject(bmpalpha);
      DeleteDC(hdcTemp);
      return TRUE;
    }
    return FALSE;
  }
  return FALSE;
}
