
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int biSize; int biPlanes; int biBitCount; int biClrUsed; int biClrImportant; scalar_t__ biYPelsPerMeter; scalar_t__ biXPelsPerMeter; scalar_t__ biSizeImage; int biCompression; int biHeight; int biWidth; } ;
struct TYPE_11__ {TYPE_3__* bmiColors; TYPE_1__ bmiHeader; } ;
struct TYPE_10__ {int palVersion; int palNumEntries; TYPE_2__* palPalEntry; } ;
struct TYPE_9__ {int rgbBlue; int rgbGreen; int rgbRed; } ;
struct TYPE_8__ {int peFlags; int peBlue; int peGreen; int peRed; } ;
typedef TYPE_3__ RGBQUAD ;
typedef TYPE_4__ LOGPALETTE256 ;
typedef int LOGPALETTE ;
typedef int HWND ;
typedef int HPALETTE ;
typedef int HDC ;
typedef int HBITMAP ;
typedef int BITMAPINFOHEADER ;
typedef TYPE_5__ BITMAPINFO256 ;
typedef int BITMAPINFO ;


 int BI_RGB ;
 int CreateDIBSection (int ,int *,int ,void**,int ,int ) ;
 int CreatePalette (int *) ;
 int DIB_RGB_COLORS ;
 int DeleteObject (int ) ;
 int FALSE ;
 int GeneratePalette (TYPE_3__*) ;
 int GetActiveWindow () ;
 int GetDC (int ) ;
 int PC_NOCOLLAPSE ;
 int RealizePalette (int ) ;
 int ReleaseDC (int ,int ) ;
 int SelectPalette (int ,int ,int ) ;
 int W_HEIGHT ;
 int W_WIDTH ;
 int abs (int ) ;
 int dibits ;

void InitBitmap(HBITMAP *hBM){
 HPALETTE PalHan;
 HWND ActiveWindow;
 HDC hDC;
 RGBQUAD palette[256];
 int i;
 BITMAPINFO256 bmInf;
 LOGPALETTE256 palInf;

 ActiveWindow = GetActiveWindow();
 hDC = GetDC(ActiveWindow);

 bmInf.bmiHeader.biSize = sizeof(BITMAPINFOHEADER);
 bmInf.bmiHeader.biWidth = W_WIDTH;
 bmInf.bmiHeader.biHeight = -abs(W_HEIGHT);
 bmInf.bmiHeader.biPlanes = 1;
 bmInf.bmiHeader.biBitCount = 8;
 bmInf.bmiHeader.biCompression = BI_RGB;
 bmInf.bmiHeader.biSizeImage = 0;
 bmInf.bmiHeader.biXPelsPerMeter = 0;
 bmInf.bmiHeader.biYPelsPerMeter = 0;
 bmInf.bmiHeader.biClrUsed = 256;
 bmInf.bmiHeader.biClrImportant = 256;

 GeneratePalette(palette);

 for(i=0;i<256;i++)
  bmInf.bmiColors[i] = palette[i];

 palInf.palVersion = 0x300;
 palInf.palNumEntries = 256;
 for(i=0;i<256;i++){
  palInf.palPalEntry[i].peRed = palette[i].rgbRed;
  palInf.palPalEntry[i].peGreen = palette[i].rgbGreen;
  palInf.palPalEntry[i].peBlue = palette[i].rgbBlue;
  palInf.palPalEntry[i].peFlags = PC_NOCOLLAPSE;
 }


 PalHan = CreatePalette((LOGPALETTE*)&palInf);


 SelectPalette(hDC,PalHan,FALSE);


 RealizePalette(hDC);


 DeleteObject(PalHan);


 *hBM = CreateDIBSection(hDC,(BITMAPINFO*)&bmInf,
  DIB_RGB_COLORS,(void**)&dibits,0,0);


 ReleaseDC(ActiveWindow,hDC);
}
