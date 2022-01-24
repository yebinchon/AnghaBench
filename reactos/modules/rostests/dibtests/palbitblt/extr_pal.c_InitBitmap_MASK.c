#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int biSize; int biPlanes; int biBitCount; int biClrUsed; int biClrImportant; scalar_t__ biYPelsPerMeter; scalar_t__ biXPelsPerMeter; scalar_t__ biSizeImage; int /*<<< orphan*/  biCompression; int /*<<< orphan*/  biHeight; int /*<<< orphan*/  biWidth; } ;
struct TYPE_11__ {TYPE_3__* bmiColors; TYPE_1__ bmiHeader; } ;
struct TYPE_10__ {int palVersion; int palNumEntries; TYPE_2__* palPalEntry; } ;
struct TYPE_9__ {int /*<<< orphan*/  rgbBlue; int /*<<< orphan*/  rgbGreen; int /*<<< orphan*/  rgbRed; } ;
struct TYPE_8__ {int /*<<< orphan*/  peFlags; int /*<<< orphan*/  peBlue; int /*<<< orphan*/  peGreen; int /*<<< orphan*/  peRed; } ;
typedef  TYPE_3__ RGBQUAD ;
typedef  TYPE_4__ LOGPALETTE256 ;
typedef  int /*<<< orphan*/  LOGPALETTE ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  HPALETTE ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int /*<<< orphan*/  HBITMAP ;
typedef  int /*<<< orphan*/  BITMAPINFOHEADER ;
typedef  TYPE_5__ BITMAPINFO256 ;
typedef  int /*<<< orphan*/  BITMAPINFO ;

/* Variables and functions */
 int /*<<< orphan*/  BI_RGB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DIB_RGB_COLORS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PC_NOCOLLAPSE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  W_HEIGHT ; 
 int /*<<< orphan*/  W_WIDTH ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dibits ; 

void FUNC10(HBITMAP *hBM){
	HPALETTE PalHan;
	HWND ActiveWindow;
	HDC hDC;
	RGBQUAD palette[256];
	int i;
	BITMAPINFO256 bmInf;
	LOGPALETTE256 palInf;

	ActiveWindow = FUNC4();
	hDC = FUNC5(ActiveWindow);

	bmInf.bmiHeader.biSize = sizeof(BITMAPINFOHEADER);
	bmInf.bmiHeader.biWidth = W_WIDTH;
	bmInf.bmiHeader.biHeight = -FUNC9(W_HEIGHT);
	bmInf.bmiHeader.biPlanes = 1;
	bmInf.bmiHeader.biBitCount = 8;
	bmInf.bmiHeader.biCompression = BI_RGB;
	bmInf.bmiHeader.biSizeImage = 0;
	bmInf.bmiHeader.biXPelsPerMeter = 0;
	bmInf.bmiHeader.biYPelsPerMeter = 0;
	bmInf.bmiHeader.biClrUsed = 256;
	bmInf.bmiHeader.biClrImportant = 256;

	FUNC3(palette);

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

	// Create palette
	PalHan = FUNC1((LOGPALETTE*)&palInf);

	// Select it into hDC
	FUNC8(hDC,PalHan,FALSE);

	// Realize palette in hDC
	FUNC6(hDC);

	// Delete handle to palette
	FUNC2(PalHan);

	// Create dib section
	*hBM = FUNC0(hDC,(BITMAPINFO*)&bmInf,
		DIB_RGB_COLORS,(void**)&dibits,0,0);

	// Release dc
	FUNC7(ActiveWindow,hDC);
}