
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct bitblt_coords {int log_height; int log_width; int log_y; int log_x; } ;
typedef int WORD ;
typedef int UINT ;
struct TYPE_15__ {int bmPlanes; int bmBitsPixel; int bmWidth; int bmHeight; int bmWidthBytes; } ;
struct TYPE_14__ {int biSize; int biWidth; int biHeight; int biPlanes; int biBitCount; int biClrUsed; void* biYPelsPerMeter; scalar_t__ biClrImportant; void* biXPelsPerMeter; int biCompression; int biSizeImage; } ;
struct TYPE_13__ {int* rdParm; int rdSize; int rdFunction; } ;
struct TYPE_12__ {scalar_t__ funcs; int hdc; } ;
typedef int RGBQUAD ;
typedef TYPE_1__* PHYSDEV ;
typedef TYPE_2__ METARECORD ;
typedef scalar_t__ LPSTR ;
typedef TYPE_3__* LPBITMAPINFOHEADER ;
typedef int LPBITMAPINFO ;
typedef int INT16 ;
typedef int HBITMAP ;
typedef int DWORD ;
typedef int BOOL ;
typedef int BITMAPINFOHEADER ;
typedef int BITMAPINFO ;
typedef TYPE_4__ BITMAP ;


 int BI_RGB ;
 int DIB_RGB_COLORS ;
 int FALSE ;
 scalar_t__ GetBitmapBits (int ,int,int*) ;
 int GetCurrentObject (int ,int ) ;
 scalar_t__ GetDIBits (int ,int ,int ,int ,scalar_t__,int ,int ) ;
 int GetDeviceCaps (int ,int ) ;
 int GetObjectW (int ,int,TYPE_4__*) ;
 int GetProcessHeap () ;
 int HIWORD (int) ;
 TYPE_2__* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_2__*) ;
 int LOGPIXELSX ;
 int LOGPIXELSY ;
 int LOWORD (int) ;
 int META_DIBSTRETCHBLT ;
 int META_STRETCHBLT ;
 int MFDRV_WriteRecord (TYPE_1__*,TYPE_2__*,int) ;
 void* MulDiv (int ,int,int) ;
 int OBJ_BITMAP ;
 int TRACE (char*,int,int,...) ;
 int WARN (char*,int ,int ) ;
 int get_dib_image_size (int *) ;
 scalar_t__ get_dib_info_size (int *,int ) ;
 int get_dib_stride (int,int) ;

BOOL MFDRV_StretchBlt( PHYSDEV devDst, struct bitblt_coords *dst,
                       PHYSDEV devSrc, struct bitblt_coords *src, DWORD rop )
{
    BOOL ret;
    DWORD len;
    METARECORD *mr;
    BITMAP BM;




    HBITMAP hBitmap = GetCurrentObject(devSrc->hdc, OBJ_BITMAP);

    if (devSrc->funcs == devDst->funcs) return FALSE;

    if (GetObjectW(hBitmap, sizeof(BITMAP), &BM) != sizeof(BITMAP))
    {
        WARN("bad bitmap object %p passed for hdc %p\n", hBitmap, devSrc->hdc);
        return FALSE;
    }
    len = sizeof(METARECORD) + 15 * sizeof(INT16) + BM.bmWidthBytes * BM.bmHeight;
    if (!(mr = HeapAlloc( GetProcessHeap(), 0, len )))
 return FALSE;
    mr->rdFunction = META_STRETCHBLT;
    *(mr->rdParm +10) = BM.bmWidth;
    *(mr->rdParm +11) = BM.bmHeight;
    *(mr->rdParm +12) = BM.bmWidthBytes;
    *(mr->rdParm +13) = BM.bmPlanes;
    *(mr->rdParm +14) = BM.bmBitsPixel;
    TRACE("len = %ld  rop=%lx\n", len, rop);
    if (GetBitmapBits( hBitmap, BM.bmWidthBytes * BM.bmHeight, mr->rdParm + 15))

    {
      mr->rdSize = len / sizeof(INT16);
      *(mr->rdParm) = LOWORD(rop);
      *(mr->rdParm + 1) = HIWORD(rop);
      *(mr->rdParm + 2) = src->log_height;
      *(mr->rdParm + 3) = src->log_width;
      *(mr->rdParm + 4) = src->log_y;
      *(mr->rdParm + 5) = src->log_x;
      *(mr->rdParm + 6) = dst->log_height;
      *(mr->rdParm + 7) = dst->log_width;
      *(mr->rdParm + 8) = dst->log_y;
      *(mr->rdParm + 9) = dst->log_x;
      ret = MFDRV_WriteRecord( devDst, mr, mr->rdSize * 2);
    }
    else
        ret = FALSE;
    HeapFree( GetProcessHeap(), 0, mr);
    return ret;
}
