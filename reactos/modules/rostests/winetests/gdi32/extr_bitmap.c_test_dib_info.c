
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int ds ;
typedef int bm ;
struct TYPE_16__ {int biWidth; int biPlanes; int biBitCount; int biSizeImage; int biHeight; int biYPelsPerMeter; int biXPelsPerMeter; int biCompression; int biSize; } ;
struct TYPE_14__ {void const* bmBits; int bmWidthBytes; int bmHeight; int bmWidth; } ;
struct TYPE_13__ {int biSizeImage; int biWidth; int biHeight; int biPlanes; int biBitCount; int biYPelsPerMeter; int biXPelsPerMeter; int biCompression; int biSize; } ;
struct TYPE_15__ {int bmType; int bmWidth; int bmHeight; int bmBitsPixel; int bmWidthBytes; int bmPlanes; void const* bmBits; TYPE_2__ dsBm; TYPE_1__ dsBmih; } ;
typedef int INT ;
typedef int HBITMAP ;
typedef TYPE_3__ DIBSECTION ;
typedef TYPE_3__ BYTE ;
typedef TYPE_5__ BITMAPINFOHEADER ;
typedef TYPE_3__ BITMAP ;


 int BI_BITFIELDS ;
 int GetBitmapBits (int ,int,TYPE_3__*) ;
 int GetObjectW (int ,int,TYPE_3__*) ;
 int GetProcessHeap () ;
 TYPE_3__* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_3__*) ;
 int SetLastError (int) ;
 int abs (int ) ;
 scalar_t__ broken (int) ;
 int get_bitmap_stride (int,int) ;
 int get_dib_stride (int,int) ;
 int memset (TYPE_3__*,int,int) ;
 int ok (int,char*,int,...) ;

__attribute__((used)) static void test_dib_info(HBITMAP hbm, const void *bits, const BITMAPINFOHEADER *bmih)
{
    BITMAP bm;
    BITMAP bma[2];
    DIBSECTION ds;
    DIBSECTION dsa[2];
    INT ret, bm_width_bytes, dib_width_bytes;
    BYTE *buf;

    ret = GetObjectW(hbm, sizeof(bm), &bm);
    ok(ret == sizeof(bm), "GetObject returned %d\n", ret);

    ok(bm.bmType == 0, "wrong bm.bmType %d\n", bm.bmType);
    ok(bm.bmWidth == bmih->biWidth, "wrong bm.bmWidth %d\n", bm.bmWidth);
    ok(bm.bmHeight == abs(bmih->biHeight), "wrong bm.bmHeight %d\n", bm.bmHeight);
    dib_width_bytes = get_dib_stride(bm.bmWidth, bm.bmBitsPixel);
    bm_width_bytes = get_bitmap_stride(bm.bmWidth, bm.bmBitsPixel);
    if (bm.bmWidthBytes != dib_width_bytes)
        ok(bm.bmWidthBytes == bm_width_bytes, "wrong bm.bmWidthBytes %d != %d\n", bm.bmWidthBytes, bm_width_bytes);
    else
        ok(bm.bmWidthBytes == dib_width_bytes, "wrong bm.bmWidthBytes %d != %d\n", bm.bmWidthBytes, dib_width_bytes);
    ok(bm.bmPlanes == bmih->biPlanes, "wrong bm.bmPlanes %d\n", bm.bmPlanes);
    ok(bm.bmBitsPixel == bmih->biBitCount, "bm.bmBitsPixel %d != %d\n", bm.bmBitsPixel, bmih->biBitCount);
    ok(bm.bmBits == bits, "wrong bm.bmBits %p != %p\n", bm.bmBits, bits);

    buf = HeapAlloc(GetProcessHeap(), 0, bm.bmWidthBytes * bm.bmHeight + 4096);


    SetLastError(0xdeadbeef);
    ret = GetBitmapBits(hbm, 0, ((void*)0));
    ok(ret == bm_width_bytes * bm.bmHeight,
        "%d != %d\n", ret, bm_width_bytes * bm.bmHeight);

    memset(buf, 0xAA, bm.bmWidthBytes * bm.bmHeight + 4096);
    ret = GetBitmapBits(hbm, bm.bmWidthBytes * bm.bmHeight + 4096, buf);
    ok(ret == bm_width_bytes * bm.bmHeight, "%d != %d\n", ret, bm_width_bytes * bm.bmHeight);

    HeapFree(GetProcessHeap(), 0, buf);


    memset(&ds, 0xAA, sizeof(ds));
    ret = GetObjectW(hbm, sizeof(*bma) * 2, bma);
    ok(ret == sizeof(*bma), "wrong size %d\n", ret);
    ok(bm.bmWidth == bmih->biWidth, "wrong bm.bmWidth %d\n", bm.bmWidth);
    ok(bm.bmHeight == abs(bmih->biHeight), "wrong bm.bmHeight %d\n", bm.bmHeight);
    ok(bm.bmBits == bits, "wrong bm.bmBits %p != %p\n", bm.bmBits, bits);

    ret = GetObjectW(hbm, sizeof(bm) / 2, &bm);
    ok(ret == 0, "%d != 0\n", ret);

    ret = GetObjectW(hbm, 0, &bm);
    ok(ret == 0, "%d != 0\n", ret);

    ret = GetObjectW(hbm, 1, &bm);
    ok(ret == 0, "%d != 0\n", ret);


    ret = GetObjectW(hbm, 0, ((void*)0));
    ok(ret == sizeof(bm), "wrong size %d\n", ret);

    ret = GetObjectW(hbm, sizeof(*dsa) * 2, dsa);
    ok(ret == sizeof(*dsa), "wrong size %d\n", ret);

    memset(&ds, 0xAA, sizeof(ds));
    ret = GetObjectW(hbm, sizeof(ds), &ds);
    ok(ret == sizeof(ds), "wrong size %d\n", ret);

    ok(ds.dsBm.bmBits == bits, "wrong bm.bmBits %p != %p\n", ds.dsBm.bmBits, bits);
    if (ds.dsBm.bmWidthBytes != bm_width_bytes)
        ok(ds.dsBmih.biSizeImage == ds.dsBm.bmWidthBytes * ds.dsBm.bmHeight, "%u != %u\n",
           ds.dsBmih.biSizeImage, ds.dsBm.bmWidthBytes * ds.dsBm.bmHeight);
    ok(bmih->biSizeImage == 0, "%u != 0\n", bmih->biSizeImage);
    ds.dsBmih.biSizeImage = 0;

    ok(ds.dsBmih.biSize == bmih->biSize, "%u != %u\n", ds.dsBmih.biSize, bmih->biSize);
    ok(ds.dsBmih.biWidth == bmih->biWidth, "%d != %d\n", ds.dsBmih.biWidth, bmih->biWidth);
    ok(ds.dsBmih.biHeight == abs(bmih->biHeight), "%d != %d\n", ds.dsBmih.biHeight, abs(bmih->biHeight));
    ok(ds.dsBmih.biPlanes == bmih->biPlanes, "%u != %u\n", ds.dsBmih.biPlanes, bmih->biPlanes);
    ok(ds.dsBmih.biBitCount == bmih->biBitCount, "%u != %u\n", ds.dsBmih.biBitCount, bmih->biBitCount);
    ok(ds.dsBmih.biCompression == bmih->biCompression ||
       ((bmih->biBitCount == 32) && broken(ds.dsBmih.biCompression == BI_BITFIELDS)),
       "%u != %u\n", ds.dsBmih.biCompression, bmih->biCompression);
    ok(ds.dsBmih.biSizeImage == bmih->biSizeImage, "%u != %u\n", ds.dsBmih.biSizeImage, bmih->biSizeImage);
    ok(ds.dsBmih.biXPelsPerMeter == bmih->biXPelsPerMeter, "%d != %d\n", ds.dsBmih.biXPelsPerMeter, bmih->biXPelsPerMeter);
    ok(ds.dsBmih.biYPelsPerMeter == bmih->biYPelsPerMeter, "%d != %d\n", ds.dsBmih.biYPelsPerMeter, bmih->biYPelsPerMeter);

    memset(&ds, 0xAA, sizeof(ds));
    ret = GetObjectW(hbm, sizeof(ds) - 4, &ds);
    ok(ret == sizeof(ds.dsBm), "wrong size %d\n", ret);
    ok(ds.dsBm.bmWidth == bmih->biWidth, "%d != %d\n", ds.dsBmih.biWidth, bmih->biWidth);
    ok(ds.dsBm.bmHeight == abs(bmih->biHeight), "%d != %d\n", ds.dsBmih.biHeight, abs(bmih->biHeight));
    ok(ds.dsBm.bmBits == bits, "%p != %p\n", ds.dsBm.bmBits, bits);

    ret = GetObjectW(hbm, 0, &ds);
    ok(ret == 0, "%d != 0\n", ret);

    ret = GetObjectW(hbm, 1, &ds);
    ok(ret == 0, "%d != 0\n", ret);
}
