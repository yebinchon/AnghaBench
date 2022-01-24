#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ds ;
typedef  int /*<<< orphan*/  bm ;
struct TYPE_16__ {int biWidth; int biPlanes; int biBitCount; int biSizeImage; int /*<<< orphan*/  biHeight; int /*<<< orphan*/  biYPelsPerMeter; int /*<<< orphan*/  biXPelsPerMeter; int /*<<< orphan*/  biCompression; int /*<<< orphan*/  biSize; } ;
struct TYPE_14__ {void const* bmBits; int bmWidthBytes; int bmHeight; int bmWidth; } ;
struct TYPE_13__ {int biSizeImage; int biWidth; int biHeight; int biPlanes; int biBitCount; int /*<<< orphan*/  biYPelsPerMeter; int /*<<< orphan*/  biXPelsPerMeter; int /*<<< orphan*/  biCompression; int /*<<< orphan*/  biSize; } ;
struct TYPE_15__ {int bmType; int bmWidth; int bmHeight; int bmBitsPixel; int bmWidthBytes; int bmPlanes; void const* bmBits; TYPE_2__ dsBm; TYPE_1__ dsBmih; } ;
typedef  int INT ;
typedef  int /*<<< orphan*/  HBITMAP ;
typedef  TYPE_3__ DIBSECTION ;
typedef  TYPE_3__ BYTE ;
typedef  TYPE_5__ BITMAPINFOHEADER ;
typedef  TYPE_3__ BITMAP ;

/* Variables and functions */
 int /*<<< orphan*/  BI_BITFIELDS ; 
 int FUNC0 (int /*<<< orphan*/ ,int,TYPE_3__*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 
 int FUNC8 (int,int) ; 
 int FUNC9 (int,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int,char*,int,...) ; 

__attribute__((used)) static void FUNC12(HBITMAP hbm, const void *bits, const BITMAPINFOHEADER *bmih)
{
    BITMAP bm;
    BITMAP bma[2];
    DIBSECTION ds;
    DIBSECTION dsa[2];
    INT ret, bm_width_bytes, dib_width_bytes;
    BYTE *buf;

    ret = FUNC1(hbm, sizeof(bm), &bm);
    FUNC11(ret == sizeof(bm), "GetObject returned %d\n", ret);

    FUNC11(bm.bmType == 0, "wrong bm.bmType %d\n", bm.bmType);
    FUNC11(bm.bmWidth == bmih->biWidth, "wrong bm.bmWidth %d\n", bm.bmWidth);
    FUNC11(bm.bmHeight == FUNC6(bmih->biHeight), "wrong bm.bmHeight %d\n", bm.bmHeight);
    dib_width_bytes = FUNC9(bm.bmWidth, bm.bmBitsPixel);
    bm_width_bytes = FUNC8(bm.bmWidth, bm.bmBitsPixel);
    if (bm.bmWidthBytes != dib_width_bytes) /* Win2k bug */
        FUNC11(bm.bmWidthBytes == bm_width_bytes, "wrong bm.bmWidthBytes %d != %d\n", bm.bmWidthBytes, bm_width_bytes);
    else
        FUNC11(bm.bmWidthBytes == dib_width_bytes, "wrong bm.bmWidthBytes %d != %d\n", bm.bmWidthBytes, dib_width_bytes);
    FUNC11(bm.bmPlanes == bmih->biPlanes, "wrong bm.bmPlanes %d\n", bm.bmPlanes);
    FUNC11(bm.bmBitsPixel == bmih->biBitCount, "bm.bmBitsPixel %d != %d\n", bm.bmBitsPixel, bmih->biBitCount);
    FUNC11(bm.bmBits == bits, "wrong bm.bmBits %p != %p\n", bm.bmBits, bits);

    buf = FUNC3(FUNC2(), 0, bm.bmWidthBytes * bm.bmHeight + 4096);

    /* GetBitmapBits returns not 32-bit aligned data */
    FUNC5(0xdeadbeef);
    ret = FUNC0(hbm, 0, NULL);
    FUNC11(ret == bm_width_bytes * bm.bmHeight,
        "%d != %d\n", ret, bm_width_bytes * bm.bmHeight);

    FUNC10(buf, 0xAA, bm.bmWidthBytes * bm.bmHeight + 4096);
    ret = FUNC0(hbm, bm.bmWidthBytes * bm.bmHeight + 4096, buf);
    FUNC11(ret == bm_width_bytes * bm.bmHeight, "%d != %d\n", ret, bm_width_bytes * bm.bmHeight);

    FUNC4(FUNC2(), 0, buf);

    /* test various buffer sizes for GetObject */
    FUNC10(&ds, 0xAA, sizeof(ds));
    ret = FUNC1(hbm, sizeof(*bma) * 2, bma);
    FUNC11(ret == sizeof(*bma), "wrong size %d\n", ret);
    FUNC11(bm.bmWidth == bmih->biWidth, "wrong bm.bmWidth %d\n", bm.bmWidth);
    FUNC11(bm.bmHeight == FUNC6(bmih->biHeight), "wrong bm.bmHeight %d\n", bm.bmHeight);
    FUNC11(bm.bmBits == bits, "wrong bm.bmBits %p != %p\n", bm.bmBits, bits);

    ret = FUNC1(hbm, sizeof(bm) / 2, &bm);
    FUNC11(ret == 0, "%d != 0\n", ret);

    ret = FUNC1(hbm, 0, &bm);
    FUNC11(ret == 0, "%d != 0\n", ret);

    ret = FUNC1(hbm, 1, &bm);
    FUNC11(ret == 0, "%d != 0\n", ret);

    /* test various buffer sizes for GetObject */
    ret = FUNC1(hbm, 0, NULL);
    FUNC11(ret == sizeof(bm), "wrong size %d\n", ret);

    ret = FUNC1(hbm, sizeof(*dsa) * 2, dsa);
    FUNC11(ret == sizeof(*dsa), "wrong size %d\n", ret);

    FUNC10(&ds, 0xAA, sizeof(ds));
    ret = FUNC1(hbm, sizeof(ds), &ds);
    FUNC11(ret == sizeof(ds), "wrong size %d\n", ret);

    FUNC11(ds.dsBm.bmBits == bits, "wrong bm.bmBits %p != %p\n", ds.dsBm.bmBits, bits);
    if (ds.dsBm.bmWidthBytes != bm_width_bytes) /* Win2k bug */
        FUNC11(ds.dsBmih.biSizeImage == ds.dsBm.bmWidthBytes * ds.dsBm.bmHeight, "%u != %u\n",
           ds.dsBmih.biSizeImage, ds.dsBm.bmWidthBytes * ds.dsBm.bmHeight);
    FUNC11(bmih->biSizeImage == 0, "%u != 0\n", bmih->biSizeImage);
    ds.dsBmih.biSizeImage = 0;

    FUNC11(ds.dsBmih.biSize == bmih->biSize, "%u != %u\n", ds.dsBmih.biSize, bmih->biSize);
    FUNC11(ds.dsBmih.biWidth == bmih->biWidth, "%d != %d\n", ds.dsBmih.biWidth, bmih->biWidth);
    FUNC11(ds.dsBmih.biHeight == FUNC6(bmih->biHeight), "%d != %d\n", ds.dsBmih.biHeight, FUNC6(bmih->biHeight));
    FUNC11(ds.dsBmih.biPlanes == bmih->biPlanes, "%u != %u\n", ds.dsBmih.biPlanes, bmih->biPlanes);
    FUNC11(ds.dsBmih.biBitCount == bmih->biBitCount, "%u != %u\n", ds.dsBmih.biBitCount, bmih->biBitCount);
    FUNC11(ds.dsBmih.biCompression == bmih->biCompression ||
       ((bmih->biBitCount == 32) && FUNC7(ds.dsBmih.biCompression == BI_BITFIELDS)), /* nt4 sp1 and 2 */
       "%u != %u\n", ds.dsBmih.biCompression, bmih->biCompression);
    FUNC11(ds.dsBmih.biSizeImage == bmih->biSizeImage, "%u != %u\n", ds.dsBmih.biSizeImage, bmih->biSizeImage);
    FUNC11(ds.dsBmih.biXPelsPerMeter == bmih->biXPelsPerMeter, "%d != %d\n", ds.dsBmih.biXPelsPerMeter, bmih->biXPelsPerMeter);
    FUNC11(ds.dsBmih.biYPelsPerMeter == bmih->biYPelsPerMeter, "%d != %d\n", ds.dsBmih.biYPelsPerMeter, bmih->biYPelsPerMeter);

    FUNC10(&ds, 0xAA, sizeof(ds));
    ret = FUNC1(hbm, sizeof(ds) - 4, &ds);
    FUNC11(ret == sizeof(ds.dsBm), "wrong size %d\n", ret);
    FUNC11(ds.dsBm.bmWidth == bmih->biWidth, "%d != %d\n", ds.dsBmih.biWidth, bmih->biWidth);
    FUNC11(ds.dsBm.bmHeight == FUNC6(bmih->biHeight), "%d != %d\n", ds.dsBmih.biHeight, FUNC6(bmih->biHeight));
    FUNC11(ds.dsBm.bmBits == bits, "%p != %p\n", ds.dsBm.bmBits, bits);

    ret = FUNC1(hbm, 0, &ds);
    FUNC11(ret == 0, "%d != 0\n", ret);

    ret = FUNC1(hbm, 1, &ds);
    FUNC11(ret == 0, "%d != 0\n", ret);
}