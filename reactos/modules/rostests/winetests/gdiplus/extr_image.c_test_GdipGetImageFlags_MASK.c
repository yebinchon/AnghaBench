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
typedef  scalar_t__ UINT ;
typedef  scalar_t__ GpStatus ;
typedef  int /*<<< orphan*/  GpImage ;
typedef  int /*<<< orphan*/  GpBitmap ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ ImageFlagsHasAlpha ; 
 scalar_t__ ImageFlagsNone ; 
 scalar_t__ InvalidParameter ; 
 scalar_t__ Ok ; 
 int /*<<< orphan*/  PixelFormat16bppARGB1555 ; 
 int /*<<< orphan*/  PixelFormat16bppGrayScale ; 
 int /*<<< orphan*/  PixelFormat16bppRGB555 ; 
 int /*<<< orphan*/  PixelFormat16bppRGB565 ; 
 int /*<<< orphan*/  PixelFormat1bppIndexed ; 
 int /*<<< orphan*/  PixelFormat24bppRGB ; 
 int /*<<< orphan*/  PixelFormat32bppARGB ; 
 int /*<<< orphan*/  PixelFormat32bppPARGB ; 
 int /*<<< orphan*/  PixelFormat32bppRGB ; 
 int /*<<< orphan*/  PixelFormat48bppRGB ; 
 int /*<<< orphan*/  PixelFormat4bppIndexed ; 
 int /*<<< orphan*/  PixelFormat64bppARGB ; 
 int /*<<< orphan*/  PixelFormat64bppPARGB ; 
 int /*<<< orphan*/  PixelFormat8bppIndexed ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC4(void)
{
    GpImage *img;
    GpStatus stat;
    UINT flags;

    img = (GpImage*)0xdeadbeef;

    stat = FUNC2(NULL, NULL);
    FUNC3(InvalidParameter, stat);

    stat = FUNC2(NULL, &flags);
    FUNC3(InvalidParameter, stat);

    stat = FUNC2(img, NULL);
    FUNC3(InvalidParameter, stat);

    stat = FUNC0(10, 10, 10, PixelFormat1bppIndexed, NULL, (GpBitmap**)&img);
    FUNC3(Ok, stat);
    stat = FUNC2(img, &flags);
    FUNC3(Ok, stat);
    FUNC3(ImageFlagsHasAlpha, flags);
    FUNC1(img);

    stat = FUNC0(10, 10, 10, PixelFormat4bppIndexed, NULL, (GpBitmap**)&img);
    FUNC3(Ok, stat);
    stat = FUNC2(img, &flags);
    FUNC3(Ok, stat);
    FUNC3(ImageFlagsHasAlpha, flags);
    FUNC1(img);

    stat = FUNC0(10, 10, 10, PixelFormat8bppIndexed, NULL, (GpBitmap**)&img);
    FUNC3(Ok, stat);
    stat = FUNC2(img, &flags);
    FUNC3(Ok, stat);
    FUNC3(ImageFlagsHasAlpha, flags);
    FUNC1(img);

    stat = FUNC0(10, 10, 10, PixelFormat16bppGrayScale, NULL, (GpBitmap**)&img);
    FUNC3(Ok, stat);
    stat = FUNC2(img, &flags);
    FUNC3(Ok, stat);
    FUNC3(ImageFlagsNone, flags);
    FUNC1(img);

    stat = FUNC0(10, 10, 10, PixelFormat16bppRGB555, NULL, (GpBitmap**)&img);
    FUNC3(Ok, stat);
    stat = FUNC2(img, &flags);
    FUNC3(Ok, stat);
    FUNC3(ImageFlagsNone, flags);
    FUNC1(img);

    stat = FUNC0(10, 10, 10, PixelFormat16bppRGB565, NULL, (GpBitmap**)&img);
    FUNC3(Ok, stat);
    stat = FUNC2(img, &flags);
    FUNC3(Ok, stat);
    FUNC3(ImageFlagsNone, flags);
    FUNC1(img);

    stat = FUNC0(10, 10, 10, PixelFormat16bppARGB1555, NULL, (GpBitmap**)&img);
    FUNC3(Ok, stat);
    stat = FUNC2(img, &flags);
    FUNC3(Ok, stat);
    FUNC3(ImageFlagsHasAlpha, flags);
    FUNC1(img);

    stat = FUNC0(10, 10, 10, PixelFormat24bppRGB, NULL, (GpBitmap**)&img);
    FUNC3(Ok, stat);
    stat = FUNC2(img, &flags);
    FUNC3(Ok, stat);
    FUNC3(ImageFlagsNone, flags);
    FUNC1(img);

    stat = FUNC0(10, 10, 10, PixelFormat32bppRGB, NULL, (GpBitmap**)&img);
    FUNC3(Ok, stat);
    stat = FUNC2(img, &flags);
    FUNC3(Ok, stat);
    FUNC3(ImageFlagsNone, flags);
    FUNC1(img);

    stat = FUNC0(10, 10, 10, PixelFormat32bppARGB, NULL, (GpBitmap**)&img);
    FUNC3(Ok, stat);
    stat = FUNC2(img, &flags);
    FUNC3(Ok, stat);
    FUNC3(ImageFlagsHasAlpha, flags);
    FUNC1(img);

    stat = FUNC0(10, 10, 10, PixelFormat32bppPARGB, NULL, (GpBitmap**)&img);
    FUNC3(Ok, stat);
    stat = FUNC2(img, &flags);
    FUNC3(Ok, stat);
    FUNC3(ImageFlagsHasAlpha, flags);
    FUNC1(img);

    stat = FUNC0(10, 10, 10, PixelFormat48bppRGB, NULL, (GpBitmap**)&img);
    FUNC3(Ok, stat);
    if (stat == Ok)
    {
        stat = FUNC2(img, &flags);
        FUNC3(Ok, stat);
        FUNC3(ImageFlagsNone, flags);
        FUNC1(img);
    }

    stat = FUNC0(10, 10, 10, PixelFormat64bppARGB, NULL, (GpBitmap**)&img);
    FUNC3(Ok, stat);
    if (stat == Ok)
    {
        FUNC3(Ok, stat);
        stat = FUNC2(img, &flags);
        FUNC3(Ok, stat);
        FUNC3(ImageFlagsHasAlpha, flags);
        FUNC1(img);
    }

    stat = FUNC0(10, 10, 10, PixelFormat64bppPARGB, NULL, (GpBitmap**)&img);
    FUNC3(Ok, stat);
    if (stat == Ok)
    {
        FUNC3(Ok, stat);
        stat = FUNC2(img, &flags);
        FUNC3(Ok, stat);
        FUNC3(ImageFlagsHasAlpha, flags);
        FUNC1(img);
    }
}