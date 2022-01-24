#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  bits ;
typedef  int UINT ;
typedef  int GpStatus ;
typedef  int /*<<< orphan*/  GpImage ;
typedef  int /*<<< orphan*/  GpBitmap ;
typedef  int BYTE ;
typedef  int ARGB ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int,int,int*) ; 
 int FUNC1 (int,int,int,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int Ok ; 
 int /*<<< orphan*/  PixelFormat24bppRGB ; 
 int /*<<< orphan*/  Rotate90FlipNone ; 
 int /*<<< orphan*/  RotateNoneFlipX ; 
 int /*<<< orphan*/  RotateNoneFlipY ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (int*,int const*,int) ; 

__attribute__((used)) static void FUNC8(void)
{
    GpImage *bitmap;
    GpStatus stat;
    BYTE bits[24];
    static const BYTE orig_bits[24] = {
        0,0,0xff,    0,0xff,0,    0xff,0,0,    23,23,23,
        0xff,0xff,0, 0xff,0,0xff, 0,0xff,0xff, 23,23,23};
    UINT width, height;
    ARGB color;

    FUNC7(bits, orig_bits, sizeof(bits));
    stat = FUNC1(3, 2, 12, PixelFormat24bppRGB, bits, (GpBitmap**)&bitmap);
    FUNC6(Ok, stat);

    stat = FUNC5(bitmap, Rotate90FlipNone);
    FUNC6(Ok, stat);

    stat = FUNC4(bitmap, &width);
    FUNC6(Ok, stat);
    stat = FUNC3(bitmap, &height);
    FUNC6(Ok, stat);
    FUNC6(2, width);
    FUNC6(3, height);

    stat = FUNC0((GpBitmap*)bitmap, 0, 0, &color);
    FUNC6(Ok, stat);
    FUNC6(0xff00ffff, color);

    stat = FUNC0((GpBitmap*)bitmap, 1, 0, &color);
    FUNC6(Ok, stat);
    FUNC6(0xffff0000, color);

    stat = FUNC0((GpBitmap*)bitmap, 0, 2, &color);
    FUNC6(Ok, stat);
    FUNC6(0xffffff00, color);

    stat = FUNC0((GpBitmap*)bitmap, 1, 2, &color);
    FUNC6(Ok, stat);
    FUNC6(0xff0000ff, color);

    FUNC6(0, bits[0]);
    FUNC6(0, bits[1]);
    FUNC6(0xff, bits[2]);

    FUNC2(bitmap);

    FUNC7(bits, orig_bits, sizeof(bits));
    stat = FUNC1(3, 2, 12, PixelFormat24bppRGB, bits, (GpBitmap**)&bitmap);
    FUNC6(Ok, stat);

    stat = FUNC5(bitmap, RotateNoneFlipX);
    FUNC6(Ok, stat);

    stat = FUNC4(bitmap, &width);
    FUNC6(Ok, stat);
    stat = FUNC3(bitmap, &height);
    FUNC6(Ok, stat);
    FUNC6(3, width);
    FUNC6(2, height);

    stat = FUNC0((GpBitmap*)bitmap, 0, 0, &color);
    FUNC6(Ok, stat);
    FUNC6(0xff0000ff, color);

    stat = FUNC0((GpBitmap*)bitmap, 2, 0, &color);
    FUNC6(Ok, stat);
    FUNC6(0xffff0000, color);

    stat = FUNC0((GpBitmap*)bitmap, 0, 1, &color);
    FUNC6(Ok, stat);
    FUNC6(0xffffff00, color);

    stat = FUNC0((GpBitmap*)bitmap, 2, 1, &color);
    FUNC6(Ok, stat);
    FUNC6(0xff00ffff, color);

    FUNC6(0, bits[0]);
    FUNC6(0, bits[1]);
    FUNC6(0xff, bits[2]);

    FUNC2(bitmap);

    FUNC7(bits, orig_bits, sizeof(bits));
    stat = FUNC1(3, 2, 12, PixelFormat24bppRGB, bits, (GpBitmap**)&bitmap);
    FUNC6(Ok, stat);

    stat = FUNC5(bitmap, RotateNoneFlipY);
    FUNC6(Ok, stat);

    stat = FUNC4(bitmap, &width);
    FUNC6(Ok, stat);
    stat = FUNC3(bitmap, &height);
    FUNC6(Ok, stat);
    FUNC6(3, width);
    FUNC6(2, height);

    stat = FUNC0((GpBitmap*)bitmap, 0, 0, &color);
    FUNC6(Ok, stat);
    FUNC6(0xff00ffff, color);

    stat = FUNC0((GpBitmap*)bitmap, 2, 0, &color);
    FUNC6(Ok, stat);
    FUNC6(0xffffff00, color);

    stat = FUNC0((GpBitmap*)bitmap, 0, 1, &color);
    FUNC6(Ok, stat);
    FUNC6(0xffff0000, color);

    stat = FUNC0((GpBitmap*)bitmap, 2, 1, &color);
    FUNC6(Ok, stat);
    FUNC6(0xff0000ff, color);

    FUNC6(0, bits[0]);
    FUNC6(0, bits[1]);
    FUNC6(0xff, bits[2]);

    FUNC2(bitmap);
}