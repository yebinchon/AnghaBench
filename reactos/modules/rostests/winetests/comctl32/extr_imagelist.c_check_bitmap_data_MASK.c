#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int ULONG ;
struct TYPE_7__ {char bfType; int bfSize; int bfOffBits; int /*<<< orphan*/  bfReserved2; int /*<<< orphan*/  bfReserved1; } ;
struct TYPE_6__ {int biBitCount; int biSize; int biPlanes; int biHeight; int biSizeImage; int /*<<< orphan*/  biWidth; } ;
struct TYPE_5__ {int cy; int /*<<< orphan*/  cx; } ;
typedef  TYPE_1__ SIZE ;
typedef  int /*<<< orphan*/  RGBQUAD ;
typedef  int INT ;
typedef  int /*<<< orphan*/  ILHEAD ;
typedef  int /*<<< orphan*/  FILE ;
typedef  TYPE_2__ BITMAPINFOHEADER ;
typedef  TYPE_3__ BITMAPFILEHEADER ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,char,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char const*) ; 

__attribute__((used)) static ULONG FUNC6(const ILHEAD *header, const char *bm_data,
    ULONG bm_data_size, const SIZE *bmpsize, INT bpp, const char *comment)
{
    const BITMAPFILEHEADER *bmfh = (const BITMAPFILEHEADER *)bm_data;
    const BITMAPINFOHEADER *bmih = (const BITMAPINFOHEADER *)(bm_data + sizeof(*bmfh));
    ULONG hdr_size, image_size;

    hdr_size = sizeof(*bmfh) + sizeof(*bmih);
    if (bmih->biBitCount <= 8) hdr_size += (1 << bpp) * sizeof(RGBQUAD);

    FUNC4(bmfh->bfType == (('M' << 8) | 'B'), "wrong bfType 0x%02x\n", bmfh->bfType);
    FUNC4(bmfh->bfSize == hdr_size, "wrong bfSize 0x%02x\n", bmfh->bfSize);
    FUNC4(bmfh->bfReserved1 == 0, "wrong bfReserved1 0x%02x\n", bmfh->bfReserved1);
    FUNC4(bmfh->bfReserved2 == 0, "wrong bfReserved2 0x%02x\n", bmfh->bfReserved2);
    FUNC4(bmfh->bfOffBits == hdr_size, "wrong bfOffBits 0x%02x\n", bmfh->bfOffBits);

    FUNC4(bmih->biSize == sizeof(*bmih), "wrong biSize %d\n", bmih->biSize);
    FUNC4(bmih->biPlanes == 1, "wrong biPlanes %d\n", bmih->biPlanes);
    FUNC4(bmih->biBitCount == bpp, "wrong biBitCount %d\n", bmih->biBitCount);

    image_size = FUNC0(bmih->biWidth, bmih->biBitCount) * bmih->biHeight;
    FUNC4(bmih->biSizeImage == image_size, "wrong biSizeImage %u\n", bmih->biSizeImage);
    FUNC4(bmih->biWidth == bmpsize->cx && bmih->biHeight == bmpsize->cy, "Unexpected bitmap size %d x %d, "
            "expected %d x %d\n", bmih->biWidth, bmih->biHeight, bmpsize->cx, bmpsize->cy);

if (0)
{
    char fname[256];
    FILE *f;
    FUNC5(fname, "bmp_%s.bmp", comment);
    f = FUNC2(fname, "wb");
    FUNC3(bm_data, 1, bm_data_size, f);
    FUNC1(f);
}

    return hdr_size + image_size;
}