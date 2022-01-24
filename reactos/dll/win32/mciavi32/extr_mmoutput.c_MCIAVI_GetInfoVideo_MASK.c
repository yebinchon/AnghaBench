#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_11__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  right; int /*<<< orphan*/  bottom; int /*<<< orphan*/  left; int /*<<< orphan*/  top; } ;
struct TYPE_14__ {TYPE_1__ rcFrame; int /*<<< orphan*/  dwSampleSize; int /*<<< orphan*/  dwQuality; int /*<<< orphan*/  dwSuggestedBufferSize; int /*<<< orphan*/  dwLength; int /*<<< orphan*/  dwStart; int /*<<< orphan*/  dwRate; int /*<<< orphan*/  dwScale; int /*<<< orphan*/  dwInitialFrames; int /*<<< orphan*/  wLanguage; int /*<<< orphan*/  wPriority; int /*<<< orphan*/  dwFlags; int /*<<< orphan*/  fccHandler; int /*<<< orphan*/  fccType; } ;
struct TYPE_15__ {int /*<<< orphan*/  source; int /*<<< orphan*/  dest; TYPE_11__* inbih; int /*<<< orphan*/  hFile; TYPE_2__ ash_video; } ;
typedef  TYPE_3__ WINE_MCIAVI ;
struct TYPE_16__ {int /*<<< orphan*/  cksize; int /*<<< orphan*/  ckid; } ;
struct TYPE_12__ {int /*<<< orphan*/  biHeight; int /*<<< orphan*/  biWidth; int /*<<< orphan*/  biClrImportant; int /*<<< orphan*/  biClrUsed; int /*<<< orphan*/  biYPelsPerMeter; int /*<<< orphan*/  biXPelsPerMeter; int /*<<< orphan*/  biSizeImage; int /*<<< orphan*/  biCompression; int /*<<< orphan*/  biBitCount; int /*<<< orphan*/  biPlanes; int /*<<< orphan*/  biSize; } ;
typedef  TYPE_4__ MMCKINFO ;
typedef  int /*<<< orphan*/  LPSTR ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_11__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MMIO_FINDCHUNK ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  ckidSTREAMFORMAT ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,TYPE_4__*,TYPE_4__ const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL FUNC12(WINE_MCIAVI* wma, const MMCKINFO* mmckList, MMCKINFO* mmckStream)
{
    MMCKINFO	mmckInfo;

    FUNC7("ash.fccType='%c%c%c%c'\n", 		FUNC4(FUNC5(wma->ash_video.fccType)),
	                                        FUNC1(FUNC5(wma->ash_video.fccType)),
	                                        FUNC4(FUNC2(wma->ash_video.fccType)),
	                                        FUNC1(FUNC2(wma->ash_video.fccType)));
    FUNC7("ash.fccHandler='%c%c%c%c'\n",	FUNC4(FUNC5(wma->ash_video.fccHandler)),
	                                        FUNC1(FUNC5(wma->ash_video.fccHandler)),
	                                        FUNC4(FUNC2(wma->ash_video.fccHandler)),
	                                        FUNC1(FUNC2(wma->ash_video.fccHandler)));
    FUNC7("ash.dwFlags=%d\n", 			wma->ash_video.dwFlags);
    FUNC7("ash.wPriority=%d\n", 		wma->ash_video.wPriority);
    FUNC7("ash.wLanguage=%d\n", 		wma->ash_video.wLanguage);
    FUNC7("ash.dwInitialFrames=%d\n", 		wma->ash_video.dwInitialFrames);
    FUNC7("ash.dwScale=%d\n", 			wma->ash_video.dwScale);
    FUNC7("ash.dwRate=%d\n", 			wma->ash_video.dwRate);
    FUNC7("ash.dwStart=%d\n", 			wma->ash_video.dwStart);
    FUNC7("ash.dwLength=%d\n", 		wma->ash_video.dwLength);
    FUNC7("ash.dwSuggestedBufferSize=%d\n", 	wma->ash_video.dwSuggestedBufferSize);
    FUNC7("ash.dwQuality=%d\n", 		wma->ash_video.dwQuality);
    FUNC7("ash.dwSampleSize=%d\n", 		wma->ash_video.dwSampleSize);
    FUNC7("ash.rcFrame=(%d,%d,%d,%d)\n", 	wma->ash_video.rcFrame.top, wma->ash_video.rcFrame.left,
	  wma->ash_video.rcFrame.bottom, wma->ash_video.rcFrame.right);

    /* rewind to the start of the stream */
    FUNC9(wma->hFile, mmckStream, 0);

    mmckInfo.ckid = ckidSTREAMFORMAT;
    if (FUNC10(wma->hFile, &mmckInfo, mmckList, MMIO_FINDCHUNK) != 0) {
       FUNC8("Can't find 'strf' chunk\n");
	return FALSE;
    }

    wma->inbih = FUNC3(FUNC0(), 0, mmckInfo.cksize);
    if (!wma->inbih) {
	FUNC8("Can't alloc input BIH\n");
	return FALSE;
    }

    FUNC11(wma->hFile, (LPSTR)wma->inbih, mmckInfo.cksize);

    FUNC7("bih.biSize=%d\n", 		wma->inbih->biSize);
    FUNC7("bih.biWidth=%d\n", 		wma->inbih->biWidth);
    FUNC7("bih.biHeight=%d\n", 	wma->inbih->biHeight);
    FUNC7("bih.biPlanes=%d\n", 		wma->inbih->biPlanes);
    FUNC7("bih.biBitCount=%d\n", 	wma->inbih->biBitCount);
    FUNC7("bih.biCompression=%x\n", 	wma->inbih->biCompression);
    FUNC7("bih.biSizeImage=%d\n", 	wma->inbih->biSizeImage);
    FUNC7("bih.biXPelsPerMeter=%d\n", 	wma->inbih->biXPelsPerMeter);
    FUNC7("bih.biYPelsPerMeter=%d\n", 	wma->inbih->biYPelsPerMeter);
    FUNC7("bih.biClrUsed=%d\n", 	wma->inbih->biClrUsed);
    FUNC7("bih.biClrImportant=%d\n", 	wma->inbih->biClrImportant);

    FUNC6(&wma->source, 0, 0, wma->inbih->biWidth, wma->inbih->biHeight);
    wma->dest = wma->source;

    return TRUE;
}