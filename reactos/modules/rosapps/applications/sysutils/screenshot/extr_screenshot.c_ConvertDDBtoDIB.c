
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int WORD ;
struct TYPE_6__ {int biSize; int biWidth; int biHeight; int biPlanes; int biBitCount; int biClrUsed; int biSizeImage; scalar_t__ biClrImportant; int biCompression; } ;
struct TYPE_9__ {TYPE_1__ bmiHeader; } ;
struct TYPE_8__ {int bmPlanes; int bmBitsPixel; int bmWidth; int bmHeight; } ;
struct TYPE_7__ {TYPE_4__* lpbi; int * lpvBits; int Height; int hBitmap; int hDC; } ;
typedef int RGBQUAD ;
typedef TYPE_2__* PSCREENSHOT ;
typedef void* PBITMAPINFO ;
typedef int LPTSTR ;
typedef scalar_t__ INT ;
typedef int BOOL ;
typedef int BITMAPINFOHEADER ;
typedef TYPE_3__ BITMAP ;


 int BI_RGB ;
 int DIB_RGB_COLORS ;
 int FALSE ;
 scalar_t__ GetDIBits (int ,int ,int ,int ,int *,TYPE_4__*,int ) ;
 int GetError () ;
 int GetObjectW (int ,int,int ) ;
 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,int) ;
 int TRUE ;

__attribute__((used)) static BOOL
ConvertDDBtoDIB(PSCREENSHOT pScrSht)
{
    INT Ret;
    BITMAP bitmap;
    WORD cClrBits;
 if (!GetObjectW(pScrSht->hBitmap,
                    sizeof(BITMAP),
                    (LPTSTR)&bitmap))
    {
        GetError();
  return FALSE;
 }

 cClrBits = (WORD)(bitmap.bmPlanes * bitmap.bmBitsPixel);
 if (cClrBits == 1)
  cClrBits = 1;
 else if (cClrBits <= 4)
  cClrBits = 4;
 else if (cClrBits <= 8)
  cClrBits = 8;
 else if (cClrBits <= 16)
  cClrBits = 16;
 else if (cClrBits <= 24)
  cClrBits = 24;
 else cClrBits = 32;

  if (cClrBits != 24)
  {
    pScrSht->lpbi = (PBITMAPINFO) HeapAlloc(GetProcessHeap(),
                                            0,
                                            sizeof(BITMAPINFOHEADER) + sizeof(RGBQUAD) * (1 << cClrBits));
  }
  else
  {
    pScrSht->lpbi = (PBITMAPINFO) HeapAlloc(GetProcessHeap(),
                                            0,
                                            sizeof(BITMAPINFOHEADER));
  }

 if (!pScrSht->lpbi)
 {
  GetError();
  return FALSE;
 }

 pScrSht->lpbi->bmiHeader.biSize = sizeof(BITMAPINFOHEADER);
 pScrSht->lpbi->bmiHeader.biWidth = bitmap.bmWidth;
 pScrSht->lpbi->bmiHeader.biHeight = bitmap.bmHeight;
 pScrSht->lpbi->bmiHeader.biPlanes = bitmap.bmPlanes;
 pScrSht->lpbi->bmiHeader.biBitCount = bitmap.bmBitsPixel;

 if (cClrBits < 24)
  pScrSht->lpbi->bmiHeader.biClrUsed = (1 << cClrBits);

 pScrSht->lpbi->bmiHeader.biCompression = BI_RGB;
 pScrSht->lpbi->bmiHeader.biSizeImage = ((pScrSht->lpbi->bmiHeader.biWidth * cClrBits +31) & ~31) /8
                                           * pScrSht->lpbi->bmiHeader.biHeight;

 pScrSht->lpbi->bmiHeader.biClrImportant = 0;




    pScrSht->lpvBits = HeapAlloc(GetProcessHeap(),
                                 0,
                                 pScrSht->lpbi->bmiHeader.biSizeImage);
    if (pScrSht->lpvBits == ((void*)0))
    {
        GetError();
        return FALSE;
    }


    Ret = GetDIBits(pScrSht->hDC,
                    pScrSht->hBitmap,
                    0,
                    pScrSht->Height,
                    pScrSht->lpvBits,
                    pScrSht->lpbi,
                    DIB_RGB_COLORS);
    if (Ret == 0)
    {
        GetError();
        return FALSE;
    }

    return TRUE;

}
