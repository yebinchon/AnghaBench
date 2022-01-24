#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  rbmi ;
struct TYPE_4__ {int biSize; int biWidth; int biHeight; int biPlanes; int biBitCount; int /*<<< orphan*/  biCompression; } ;
struct TYPE_5__ {TYPE_1__ bmiHeader; } ;
typedef  int /*<<< orphan*/  RGBQUAD ;
typedef  scalar_t__ PixelFormat ;
typedef  scalar_t__ GpStatus ;
typedef  int /*<<< orphan*/  GpImage ;
typedef  int /*<<< orphan*/  GpBitmap ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int /*<<< orphan*/  BITMAPINFOHEADER ;
typedef  TYPE_2__ BITMAPINFO ;

/* Variables and functions */
 int /*<<< orphan*/  BI_RGB ; 
 scalar_t__ FUNC0 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ InvalidParameter ; 
 scalar_t__ Ok ; 
 scalar_t__ PixelFormat16bppRGB555 ; 
 scalar_t__ PixelFormat1bppIndexed ; 
 scalar_t__ PixelFormat24bppRGB ; 
 scalar_t__ PixelFormat32bppRGB ; 
 scalar_t__ PixelFormat4bppIndexed ; 
 scalar_t__ PixelFormat8bppIndexed ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 

__attribute__((used)) static void FUNC6(void)
{
    GpBitmap *bm;
    GpStatus stat;
    BYTE buff[400];
    BYTE rbmi[sizeof(BITMAPINFOHEADER)+256*sizeof(RGBQUAD)];
    BITMAPINFO *bmi = (BITMAPINFO*)rbmi;
    PixelFormat format;

    bm = NULL;

    FUNC4(rbmi, 0, sizeof(rbmi));

    bmi->bmiHeader.biSize = sizeof(BITMAPINFOHEADER);
    bmi->bmiHeader.biWidth = 10;
    bmi->bmiHeader.biHeight = 10;
    bmi->bmiHeader.biPlanes = 1;
    bmi->bmiHeader.biBitCount = 32;
    bmi->bmiHeader.biCompression = BI_RGB;

    stat = FUNC0(NULL, buff, &bm);
    FUNC3(InvalidParameter, stat);

    stat = FUNC0(bmi, NULL, &bm);
    FUNC3(InvalidParameter, stat);

    stat = FUNC0(bmi, buff, NULL);
    FUNC3(InvalidParameter, stat);

    stat = FUNC0(bmi, buff, &bm);
    FUNC3(Ok, stat);
    FUNC5(NULL != bm, "Expected bitmap to be initialized\n");
    if (stat == Ok)
    {
        stat = FUNC2((GpImage*)bm, &format);
        FUNC3(Ok, stat);
        FUNC3(PixelFormat32bppRGB, format);

        FUNC1((GpImage*)bm);
    }

    bmi->bmiHeader.biBitCount = 24;
    stat = FUNC0(bmi, buff, &bm);
    FUNC3(Ok, stat);
    FUNC5(NULL != bm, "Expected bitmap to be initialized\n");
    if (stat == Ok)
    {
        stat = FUNC2((GpImage*)bm, &format);
        FUNC3(Ok, stat);
        FUNC3(PixelFormat24bppRGB, format);

        FUNC1((GpImage*)bm);
    }

    bmi->bmiHeader.biBitCount = 16;
    stat = FUNC0(bmi, buff, &bm);
    FUNC3(Ok, stat);
    FUNC5(NULL != bm, "Expected bitmap to be initialized\n");
    if (stat == Ok)
    {
        stat = FUNC2((GpImage*)bm, &format);
        FUNC3(Ok, stat);
        FUNC3(PixelFormat16bppRGB555, format);

        FUNC1((GpImage*)bm);
    }

    bmi->bmiHeader.biBitCount = 8;
    stat = FUNC0(bmi, buff, &bm);
    FUNC3(Ok, stat);
    FUNC5(NULL != bm, "Expected bitmap to be initialized\n");
    if (stat == Ok)
    {
        stat = FUNC2((GpImage*)bm, &format);
        FUNC3(Ok, stat);
        FUNC3(PixelFormat8bppIndexed, format);

        FUNC1((GpImage*)bm);
    }

    bmi->bmiHeader.biBitCount = 4;
    stat = FUNC0(bmi, buff, &bm);
    FUNC3(Ok, stat);
    FUNC5(NULL != bm, "Expected bitmap to be initialized\n");
    if (stat == Ok)
    {
        stat = FUNC2((GpImage*)bm, &format);
        FUNC3(Ok, stat);
        FUNC3(PixelFormat4bppIndexed, format);

        FUNC1((GpImage*)bm);
    }

    bmi->bmiHeader.biBitCount = 1;
    stat = FUNC0(bmi, buff, &bm);
    FUNC3(Ok, stat);
    FUNC5(NULL != bm, "Expected bitmap to be initialized\n");
    if (stat == Ok)
    {
        stat = FUNC2((GpImage*)bm, &format);
        FUNC3(Ok, stat);
        FUNC3(PixelFormat1bppIndexed, format);

        FUNC1((GpImage*)bm);
    }

    bmi->bmiHeader.biBitCount = 0;
    stat = FUNC0(bmi, buff, &bm);
    FUNC3(InvalidParameter, stat);
}