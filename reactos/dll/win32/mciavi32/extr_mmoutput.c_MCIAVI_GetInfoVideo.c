
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_11__ ;


struct TYPE_13__ {int right; int bottom; int left; int top; } ;
struct TYPE_14__ {TYPE_1__ rcFrame; int dwSampleSize; int dwQuality; int dwSuggestedBufferSize; int dwLength; int dwStart; int dwRate; int dwScale; int dwInitialFrames; int wLanguage; int wPriority; int dwFlags; int fccHandler; int fccType; } ;
struct TYPE_15__ {int source; int dest; TYPE_11__* inbih; int hFile; TYPE_2__ ash_video; } ;
typedef TYPE_3__ WINE_MCIAVI ;
struct TYPE_16__ {int cksize; int ckid; } ;
struct TYPE_12__ {int biHeight; int biWidth; int biClrImportant; int biClrUsed; int biYPelsPerMeter; int biXPelsPerMeter; int biSizeImage; int biCompression; int biBitCount; int biPlanes; int biSize; } ;
typedef TYPE_4__ MMCKINFO ;
typedef int LPSTR ;
typedef int BOOL ;


 int FALSE ;
 int GetProcessHeap () ;
 int HIBYTE (int ) ;
 int HIWORD (int ) ;
 TYPE_11__* HeapAlloc (int ,int ,int ) ;
 int LOBYTE (int ) ;
 int LOWORD (int ) ;
 int MMIO_FINDCHUNK ;
 int SetRect (int *,int ,int ,int ,int ) ;
 int TRACE (char*,int ,...) ;
 int TRUE ;
 int WARN (char*) ;
 int ckidSTREAMFORMAT ;
 int mmioAscend (int ,TYPE_4__*,int ) ;
 scalar_t__ mmioDescend (int ,TYPE_4__*,TYPE_4__ const*,int ) ;
 int mmioRead (int ,int ,int ) ;

__attribute__((used)) static BOOL MCIAVI_GetInfoVideo(WINE_MCIAVI* wma, const MMCKINFO* mmckList, MMCKINFO* mmckStream)
{
    MMCKINFO mmckInfo;

    TRACE("ash.fccType='%c%c%c%c'\n", LOBYTE(LOWORD(wma->ash_video.fccType)),
                                         HIBYTE(LOWORD(wma->ash_video.fccType)),
                                         LOBYTE(HIWORD(wma->ash_video.fccType)),
                                         HIBYTE(HIWORD(wma->ash_video.fccType)));
    TRACE("ash.fccHandler='%c%c%c%c'\n", LOBYTE(LOWORD(wma->ash_video.fccHandler)),
                                         HIBYTE(LOWORD(wma->ash_video.fccHandler)),
                                         LOBYTE(HIWORD(wma->ash_video.fccHandler)),
                                         HIBYTE(HIWORD(wma->ash_video.fccHandler)));
    TRACE("ash.dwFlags=%d\n", wma->ash_video.dwFlags);
    TRACE("ash.wPriority=%d\n", wma->ash_video.wPriority);
    TRACE("ash.wLanguage=%d\n", wma->ash_video.wLanguage);
    TRACE("ash.dwInitialFrames=%d\n", wma->ash_video.dwInitialFrames);
    TRACE("ash.dwScale=%d\n", wma->ash_video.dwScale);
    TRACE("ash.dwRate=%d\n", wma->ash_video.dwRate);
    TRACE("ash.dwStart=%d\n", wma->ash_video.dwStart);
    TRACE("ash.dwLength=%d\n", wma->ash_video.dwLength);
    TRACE("ash.dwSuggestedBufferSize=%d\n", wma->ash_video.dwSuggestedBufferSize);
    TRACE("ash.dwQuality=%d\n", wma->ash_video.dwQuality);
    TRACE("ash.dwSampleSize=%d\n", wma->ash_video.dwSampleSize);
    TRACE("ash.rcFrame=(%d,%d,%d,%d)\n", wma->ash_video.rcFrame.top, wma->ash_video.rcFrame.left,
   wma->ash_video.rcFrame.bottom, wma->ash_video.rcFrame.right);


    mmioAscend(wma->hFile, mmckStream, 0);

    mmckInfo.ckid = ckidSTREAMFORMAT;
    if (mmioDescend(wma->hFile, &mmckInfo, mmckList, MMIO_FINDCHUNK) != 0) {
       WARN("Can't find 'strf' chunk\n");
 return FALSE;
    }

    wma->inbih = HeapAlloc(GetProcessHeap(), 0, mmckInfo.cksize);
    if (!wma->inbih) {
 WARN("Can't alloc input BIH\n");
 return FALSE;
    }

    mmioRead(wma->hFile, (LPSTR)wma->inbih, mmckInfo.cksize);

    TRACE("bih.biSize=%d\n", wma->inbih->biSize);
    TRACE("bih.biWidth=%d\n", wma->inbih->biWidth);
    TRACE("bih.biHeight=%d\n", wma->inbih->biHeight);
    TRACE("bih.biPlanes=%d\n", wma->inbih->biPlanes);
    TRACE("bih.biBitCount=%d\n", wma->inbih->biBitCount);
    TRACE("bih.biCompression=%x\n", wma->inbih->biCompression);
    TRACE("bih.biSizeImage=%d\n", wma->inbih->biSizeImage);
    TRACE("bih.biXPelsPerMeter=%d\n", wma->inbih->biXPelsPerMeter);
    TRACE("bih.biYPelsPerMeter=%d\n", wma->inbih->biYPelsPerMeter);
    TRACE("bih.biClrUsed=%d\n", wma->inbih->biClrUsed);
    TRACE("bih.biClrImportant=%d\n", wma->inbih->biClrImportant);

    SetRect(&wma->source, 0, 0, wma->inbih->biWidth, wma->inbih->biHeight);
    wma->dest = wma->source;

    return TRUE;
}
