
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ fccHandler; } ;
struct TYPE_9__ {int dwCachedFrame; scalar_t__ hWndPaint; TYPE_7__* outbih; TYPE_5__* inbih; int hic; void* outdata; TYPE_1__ ash_video; } ;
typedef TYPE_2__ WINE_MCIAVI ;
struct TYPE_11__ {int biSize; int biWidth; int biHeight; int biPlanes; int biBitCount; int biCompression; int biSizeImage; int biXPelsPerMeter; int biYPelsPerMeter; int biClrUsed; int biClrImportant; } ;
struct TYPE_10__ {scalar_t__ biCompression; } ;
typedef int RGBQUAD ;
typedef int LPSTR ;
typedef int HDC ;
typedef scalar_t__ FOURCC ;
typedef int DWORD_PTR ;
typedef int DWORD ;
typedef int BOOL ;
typedef int BITMAPINFOHEADER ;


 scalar_t__ BI_BITFIELDS ;
 scalar_t__ BI_RGB ;
 scalar_t__ BI_RLE4 ;
 scalar_t__ BI_RLE8 ;
 int FALSE ;
 int GetDC (scalar_t__) ;
 int GetProcessHeap () ;
 void* HeapAlloc (int ,int ,int) ;
 scalar_t__ ICERR_OK ;
 int ICGetDisplayFormat (int ,TYPE_5__*,TYPE_7__*,int ,int ,int ) ;
 int ICLocate (int ,scalar_t__,TYPE_5__*,int *,int ) ;
 int ICMODE_DECOMPRESS ;
 int ICM_DECOMPRESS_BEGIN ;
 scalar_t__ ICSendMessage (int ,int ,int ,int ) ;
 int ICTYPE_VIDEO ;
 int MCIAVI_PaintFrame (TYPE_2__*,int) ;
 int ReleaseDC (scalar_t__,int) ;
 int TRACE (char*,int) ;
 int TRUE ;
 int WARN (char*) ;
 scalar_t__ mmioFOURCC (char,char,char,char) ;

BOOL MCIAVI_OpenVideo(WINE_MCIAVI* wma)
{
    HDC hDC;
    DWORD outSize;
    FOURCC fcc = wma->ash_video.fccHandler;

    TRACE("fcc %4.4s\n", (LPSTR)&fcc);

    wma->dwCachedFrame = -1;


    if (fcc == mmioFOURCC('C','R','A','M')) fcc = mmioFOURCC('M','S','V','C');


    wma->hic = ICLocate(ICTYPE_VIDEO, fcc, wma->inbih, ((void*)0), ICMODE_DECOMPRESS);
    if (!wma->hic) {

        fcc = wma->inbih->biCompression;
        if ((fcc == mmioFOURCC('D','I','B',' ')) ||
            (fcc == mmioFOURCC('R','L','E',' ')) ||
            (fcc == BI_RGB) || (fcc == BI_RLE8) ||
            (fcc == BI_RLE4) || (fcc == BI_BITFIELDS))
            goto paint_frame;

 WARN("Can't locate codec for the file\n");
 return FALSE;
    }

    outSize = sizeof(BITMAPINFOHEADER) + 256 * sizeof(RGBQUAD);

    wma->outbih = HeapAlloc(GetProcessHeap(), 0, outSize);
    if (!wma->outbih) {
 WARN("Can't alloc output BIH\n");
 return FALSE;
    }
    if (!ICGetDisplayFormat(wma->hic, wma->inbih, wma->outbih, 0, 0, 0)) {
 WARN("Can't open decompressor\n");
 return FALSE;
    }

    TRACE("bih.biSize=%d\n", wma->outbih->biSize);
    TRACE("bih.biWidth=%d\n", wma->outbih->biWidth);
    TRACE("bih.biHeight=%d\n", wma->outbih->biHeight);
    TRACE("bih.biPlanes=%d\n", wma->outbih->biPlanes);
    TRACE("bih.biBitCount=%d\n", wma->outbih->biBitCount);
    TRACE("bih.biCompression=%x\n", wma->outbih->biCompression);
    TRACE("bih.biSizeImage=%d\n", wma->outbih->biSizeImage);
    TRACE("bih.biXPelsPerMeter=%d\n", wma->outbih->biXPelsPerMeter);
    TRACE("bih.biYPelsPerMeter=%d\n", wma->outbih->biYPelsPerMeter);
    TRACE("bih.biClrUsed=%d\n", wma->outbih->biClrUsed);
    TRACE("bih.biClrImportant=%d\n", wma->outbih->biClrImportant);

    wma->outdata = HeapAlloc(GetProcessHeap(), 0, wma->outbih->biSizeImage);
    if (!wma->outdata) {
 WARN("Can't alloc output buffer\n");
 return FALSE;
    }

    if (ICSendMessage(wma->hic, ICM_DECOMPRESS_BEGIN,
        (DWORD_PTR)wma->inbih, (DWORD_PTR)wma->outbih) != ICERR_OK) {
 WARN("Can't begin decompression\n");
 return FALSE;
    }

paint_frame:
    hDC = wma->hWndPaint ? GetDC(wma->hWndPaint) : 0;
    if (hDC)
    {
        MCIAVI_PaintFrame(wma, hDC);
        ReleaseDC(wma->hWndPaint, hDC);
    }
    return TRUE;
}
