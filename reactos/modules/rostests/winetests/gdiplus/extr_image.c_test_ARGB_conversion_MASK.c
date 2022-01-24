#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  rgb32_xp ;
typedef  int /*<<< orphan*/  rgb24 ;
typedef  int /*<<< orphan*/  pargb ;
typedef  int /*<<< orphan*/  argb ;
struct TYPE_4__ {int Width; int Height; int Stride; int* Scan0; int /*<<< orphan*/  PixelFormat; } ;
typedef  int /*<<< orphan*/  GpStatus ;
typedef  int /*<<< orphan*/  GpImage ;
typedef  int /*<<< orphan*/  GpBitmap ;
typedef  TYPE_1__ BitmapData ;
typedef  int BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ImageLockModeRead ; 
 int /*<<< orphan*/  Ok ; 
 int /*<<< orphan*/  PixelFormat24bppRGB ; 
 int /*<<< orphan*/  PixelFormat32bppARGB ; 
 int /*<<< orphan*/  PixelFormat32bppPARGB ; 
 int /*<<< orphan*/  PixelFormat32bppRGB ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int,int,int,int,int,int,int,int) ; 

__attribute__((used)) static void FUNC8(void)
{
    BYTE argb[8] = { 0x11,0x22,0x33,0x80, 0xff,0xff,0xff,0 };
    BYTE pargb[8] = { 0x09,0x11,0x1a,0x80, 0,0,0,0 };
    BYTE rgb32_xp[8] = { 0x11,0x22,0x33,0xff, 0xff,0xff,0xff,0xff };
    BYTE rgb24[6] = { 0x11,0x22,0x33, 0xff,0xff,0xff };
    BYTE *bits;
    GpBitmap *bitmap;
    BitmapData data;
    GpStatus status;
    int match;

    status = FUNC2(2, 1, 8, PixelFormat32bppARGB, argb, &bitmap);
    FUNC4(Ok, status);

    status = FUNC0(bitmap, NULL, ImageLockModeRead, PixelFormat32bppPARGB, &data);
    FUNC4(Ok, status);
    FUNC6(data.Width == 2, "expected 2, got %d\n", data.Width);
    FUNC6(data.Height == 1, "expected 1, got %d\n", data.Height);
    FUNC6(data.Stride == 8, "expected 8, got %d\n", data.Stride);
    FUNC6(data.PixelFormat == PixelFormat32bppPARGB, "expected PixelFormat32bppPARGB, got %d\n", data.PixelFormat);
    match = !FUNC5(data.Scan0, pargb, sizeof(pargb));
    FUNC6(match, "bits don't match\n");
    if (!match)
    {
        bits = data.Scan0;
        FUNC7("format %#x, bits %02x,%02x,%02x,%02x %02x,%02x,%02x,%02x\n", PixelFormat32bppPARGB,
               bits[0], bits[1], bits[2], bits[3], bits[4], bits[5], bits[6], bits[7]);
    }
    status = FUNC1(bitmap, &data);
    FUNC4(Ok, status);

    status = FUNC0(bitmap, NULL, ImageLockModeRead, PixelFormat32bppRGB, &data);
    FUNC4(Ok, status);
    FUNC6(data.Width == 2, "expected 2, got %d\n", data.Width);
    FUNC6(data.Height == 1, "expected 1, got %d\n", data.Height);
    FUNC6(data.Stride == 8, "expected 8, got %d\n", data.Stride);
    FUNC6(data.PixelFormat == PixelFormat32bppRGB, "expected PixelFormat32bppRGB, got %d\n", data.PixelFormat);
    match = !FUNC5(data.Scan0, argb, sizeof(argb)) ||
            !FUNC5(data.Scan0, rgb32_xp, sizeof(rgb32_xp));
    FUNC6(match, "bits don't match\n");
    if (!match)
    {
        bits = data.Scan0;
        FUNC7("format %#x, bits %02x,%02x,%02x,%02x %02x,%02x,%02x,%02x\n", PixelFormat32bppRGB,
               bits[0], bits[1], bits[2], bits[3], bits[4], bits[5], bits[6], bits[7]);
    }
    status = FUNC1(bitmap, &data);
    FUNC4(Ok, status);

    status = FUNC0(bitmap, NULL, ImageLockModeRead, PixelFormat24bppRGB, &data);
    FUNC4(Ok, status);
    FUNC6(data.Width == 2, "expected 2, got %d\n", data.Width);
    FUNC6(data.Height == 1, "expected 1, got %d\n", data.Height);
    FUNC6(data.Stride == 8, "expected 8, got %d\n", data.Stride);
    FUNC6(data.PixelFormat == PixelFormat24bppRGB, "expected PixelFormat24bppRGB, got %d\n", data.PixelFormat);
    match = !FUNC5(data.Scan0, rgb24, sizeof(rgb24));
    FUNC6(match, "bits don't match\n");
    if (!match)
    {
        bits = data.Scan0;
        FUNC7("format %#x, bits %02x,%02x,%02x,%02x %02x,%02x,%02x,%02x\n", PixelFormat24bppRGB,
               bits[0], bits[1], bits[2], bits[3], bits[4], bits[5], bits[6], bits[7]);
    }
    status = FUNC1(bitmap, &data);
    FUNC4(Ok, status);

    FUNC3((GpImage *)bitmap);
}