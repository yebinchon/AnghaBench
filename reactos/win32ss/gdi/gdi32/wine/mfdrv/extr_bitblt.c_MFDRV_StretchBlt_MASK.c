#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct bitblt_coords {int log_height; int log_width; int log_y; int log_x; } ;
typedef  int WORD ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_15__ {int bmPlanes; int bmBitsPixel; int bmWidth; int bmHeight; int bmWidthBytes; } ;
struct TYPE_14__ {int biSize; int biWidth; int biHeight; int biPlanes; int biBitCount; int biClrUsed; void* biYPelsPerMeter; scalar_t__ biClrImportant; void* biXPelsPerMeter; int /*<<< orphan*/  biCompression; int /*<<< orphan*/  biSizeImage; } ;
struct TYPE_13__ {int* rdParm; int rdSize; int /*<<< orphan*/  rdFunction; } ;
struct TYPE_12__ {scalar_t__ funcs; int /*<<< orphan*/  hdc; } ;
typedef  int /*<<< orphan*/  RGBQUAD ;
typedef  TYPE_1__* PHYSDEV ;
typedef  TYPE_2__ METARECORD ;
typedef  scalar_t__ LPSTR ;
typedef  TYPE_3__* LPBITMAPINFOHEADER ;
typedef  int /*<<< orphan*/  LPBITMAPINFO ;
typedef  int /*<<< orphan*/  INT16 ;
typedef  int /*<<< orphan*/  HBITMAP ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;
typedef  int /*<<< orphan*/  BITMAPINFOHEADER ;
typedef  int /*<<< orphan*/  BITMAPINFO ;
typedef  TYPE_4__ BITMAP ;

/* Variables and functions */
 int /*<<< orphan*/  BI_RGB ; 
 int /*<<< orphan*/  DIB_RGB_COLORS ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (int) ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  LOGPIXELSX ; 
 int /*<<< orphan*/  LOGPIXELSY ; 
 int FUNC9 (int) ; 
 int /*<<< orphan*/  META_DIBSTRETCHBLT ; 
 int /*<<< orphan*/  META_STRETCHBLT ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,TYPE_2__*,int) ; 
 void* FUNC11 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  OBJ_BITMAP ; 
 int /*<<< orphan*/  FUNC12 (char*,int,int,...) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC16 (int,int) ; 

BOOL FUNC17( PHYSDEV devDst, struct bitblt_coords *dst,
                       PHYSDEV devSrc, struct bitblt_coords *src, DWORD rop )
{
    BOOL ret;
    DWORD len;
    METARECORD *mr;
    BITMAP BM;
#ifdef STRETCH_VIA_DIB
    LPBITMAPINFOHEADER lpBMI;
    WORD nBPP;
#endif
    HBITMAP hBitmap = FUNC1(devSrc->hdc, OBJ_BITMAP);

    if (devSrc->funcs == devDst->funcs) return FALSE;  /* can't use a metafile DC as source */

    if (FUNC4(hBitmap, sizeof(BITMAP), &BM) != sizeof(BITMAP))
    {
        FUNC13("bad bitmap object %p passed for hdc %p\n", hBitmap, devSrc->hdc);
        return FALSE;
    }
#ifdef STRETCH_VIA_DIB
    nBPP = BM.bmPlanes * BM.bmBitsPixel;
    if(nBPP > 8) nBPP = 24; /* FIXME Can't get 16bpp to work for some reason */
    len = sizeof(METARECORD) + 10 * sizeof(INT16)
            + sizeof(BITMAPINFOHEADER) + (nBPP <= 8 ? 1 << nBPP: 0) * sizeof(RGBQUAD)
              + get_dib_stride( BM.bmWidth, nBPP ) * BM.bmHeight;
    if (!(mr = HeapAlloc( GetProcessHeap(), 0, len)))
	return FALSE;
    mr->rdFunction = META_DIBSTRETCHBLT;
    lpBMI=(LPBITMAPINFOHEADER)(mr->rdParm+10);
    lpBMI->biSize      = sizeof(BITMAPINFOHEADER);
    lpBMI->biWidth     = BM.bmWidth;
    lpBMI->biHeight    = BM.bmHeight;
    lpBMI->biPlanes    = 1;
    lpBMI->biBitCount  = nBPP;
    lpBMI->biSizeImage = get_dib_image_size( (BITMAPINFO *)lpBMI );
    lpBMI->biClrUsed   = nBPP <= 8 ? 1 << nBPP : 0;
    lpBMI->biCompression = BI_RGB;
    lpBMI->biXPelsPerMeter = MulDiv(GetDeviceCaps(devSrc->hdc,LOGPIXELSX),3937,100);
    lpBMI->biYPelsPerMeter = MulDiv(GetDeviceCaps(devSrc->hdc,LOGPIXELSY),3937,100);
    lpBMI->biClrImportant  = 0;                          /* 1 meter  = 39.37 inch */

    TRACE("MF_StretchBltViaDIB->len = %d  rop=%x  PixYPM=%d Caps=%d\n",
	  len,rop,lpBMI->biYPelsPerMeter,GetDeviceCaps(devSrc->hdc, LOGPIXELSY));

    if (GetDIBits(devSrc->hdc, hBitmap, 0, (UINT)lpBMI->biHeight,
                  (LPSTR)lpBMI + get_dib_info_size( (BITMAPINFO *)lpBMI, DIB_RGB_COLORS ),
                  (LPBITMAPINFO)lpBMI, DIB_RGB_COLORS))
#else
    len = sizeof(METARECORD) + 15 * sizeof(INT16) + BM.bmWidthBytes * BM.bmHeight;
    if (!(mr = FUNC7( FUNC5(), 0, len )))
	return FALSE;
    mr->rdFunction = META_STRETCHBLT;
    *(mr->rdParm +10) = BM.bmWidth;
    *(mr->rdParm +11) = BM.bmHeight;
    *(mr->rdParm +12) = BM.bmWidthBytes;
    *(mr->rdParm +13) = BM.bmPlanes;
    *(mr->rdParm +14) = BM.bmBitsPixel;
    FUNC12("len = %ld  rop=%lx\n", len, rop);
    if (FUNC0( hBitmap, BM.bmWidthBytes * BM.bmHeight, mr->rdParm + 15))
#endif
    {
      mr->rdSize = len / sizeof(INT16);
      *(mr->rdParm) = FUNC9(rop);
      *(mr->rdParm + 1) = FUNC6(rop);
      *(mr->rdParm + 2) = src->log_height;
      *(mr->rdParm + 3) = src->log_width;
      *(mr->rdParm + 4) = src->log_y;
      *(mr->rdParm + 5) = src->log_x;
      *(mr->rdParm + 6) = dst->log_height;
      *(mr->rdParm + 7) = dst->log_width;
      *(mr->rdParm + 8) = dst->log_y;
      *(mr->rdParm + 9) = dst->log_x;
      ret = FUNC10( devDst, mr, mr->rdSize * 2);
    }
    else
        ret = FALSE;
    FUNC8( FUNC5(), 0, mr);
    return ret;
}