#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_7__ ;
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ fccHandler; } ;
struct TYPE_9__ {int dwCachedFrame; scalar_t__ hWndPaint; TYPE_7__* outbih; TYPE_5__* inbih; int /*<<< orphan*/  hic; void* outdata; TYPE_1__ ash_video; } ;
typedef  TYPE_2__ WINE_MCIAVI ;
struct TYPE_11__ {int biSize; int biWidth; int biHeight; int biPlanes; int biBitCount; int biCompression; int biSizeImage; int biXPelsPerMeter; int biYPelsPerMeter; int biClrUsed; int biClrImportant; } ;
struct TYPE_10__ {scalar_t__ biCompression; } ;
typedef  int /*<<< orphan*/  RGBQUAD ;
typedef  int LPSTR ;
typedef  int HDC ;
typedef  scalar_t__ FOURCC ;
typedef  int /*<<< orphan*/  DWORD_PTR ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;
typedef  int /*<<< orphan*/  BITMAPINFOHEADER ;

/* Variables and functions */
 scalar_t__ BI_BITFIELDS ; 
 scalar_t__ BI_RGB ; 
 scalar_t__ BI_RLE4 ; 
 scalar_t__ BI_RLE8 ; 
 int /*<<< orphan*/  FALSE ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ ICERR_OK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_5__*,TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ICMODE_DECOMPRESS ; 
 int /*<<< orphan*/  ICM_DECOMPRESS_BEGIN ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ICTYPE_VIDEO ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 scalar_t__ FUNC10 (char,char,char,char) ; 

BOOL    FUNC11(WINE_MCIAVI* wma)
{
    HDC hDC;
    DWORD	outSize;
    FOURCC	fcc = wma->ash_video.fccHandler;

    FUNC8("fcc %4.4s\n", (LPSTR)&fcc);

    wma->dwCachedFrame = -1;

    /* get the right handle */
    if (fcc == FUNC10('C','R','A','M')) fcc = FUNC10('M','S','V','C');

    /* try to get a decompressor for that type */
    wma->hic = FUNC4(ICTYPE_VIDEO, fcc, wma->inbih, NULL, ICMODE_DECOMPRESS);
    if (!wma->hic) {
        /* check for builtin DIB compressions */
        fcc = wma->inbih->biCompression;
        if ((fcc == FUNC10('D','I','B',' ')) ||
            (fcc == FUNC10('R','L','E',' ')) ||
            (fcc == BI_RGB) || (fcc == BI_RLE8) ||
            (fcc == BI_RLE4) || (fcc == BI_BITFIELDS))
            goto paint_frame;

	FUNC9("Can't locate codec for the file\n");
	return FALSE;
    }

    outSize = sizeof(BITMAPINFOHEADER) + 256 * sizeof(RGBQUAD);

    wma->outbih = FUNC2(FUNC1(), 0, outSize);
    if (!wma->outbih) {
	FUNC9("Can't alloc output BIH\n");
	return FALSE;
    }
    if (!FUNC3(wma->hic, wma->inbih, wma->outbih, 0, 0, 0)) {
	FUNC9("Can't open decompressor\n");
	return FALSE;
    }

    FUNC8("bih.biSize=%d\n", 		wma->outbih->biSize);
    FUNC8("bih.biWidth=%d\n", 		wma->outbih->biWidth);
    FUNC8("bih.biHeight=%d\n", 	wma->outbih->biHeight);
    FUNC8("bih.biPlanes=%d\n", 		wma->outbih->biPlanes);
    FUNC8("bih.biBitCount=%d\n", 	wma->outbih->biBitCount);
    FUNC8("bih.biCompression=%x\n", 	wma->outbih->biCompression);
    FUNC8("bih.biSizeImage=%d\n", 	wma->outbih->biSizeImage);
    FUNC8("bih.biXPelsPerMeter=%d\n", 	wma->outbih->biXPelsPerMeter);
    FUNC8("bih.biYPelsPerMeter=%d\n", 	wma->outbih->biYPelsPerMeter);
    FUNC8("bih.biClrUsed=%d\n", 	wma->outbih->biClrUsed);
    FUNC8("bih.biClrImportant=%d\n", 	wma->outbih->biClrImportant);

    wma->outdata = FUNC2(FUNC1(), 0, wma->outbih->biSizeImage);
    if (!wma->outdata) {
	FUNC9("Can't alloc output buffer\n");
	return FALSE;
    }

    if (FUNC5(wma->hic, ICM_DECOMPRESS_BEGIN,
		      (DWORD_PTR)wma->inbih, (DWORD_PTR)wma->outbih) != ICERR_OK) {
	FUNC9("Can't begin decompression\n");
	return FALSE;
    }

paint_frame:
    hDC = wma->hWndPaint ? FUNC0(wma->hWndPaint) : 0;
    if (hDC)
    {
        FUNC6(wma, hDC);
        FUNC7(wma->hWndPaint, hDC);
    }
    return TRUE;
}