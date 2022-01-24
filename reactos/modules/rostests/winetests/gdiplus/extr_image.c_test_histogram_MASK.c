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
typedef  size_t UINT ;
typedef  int HistogramFormat ;
typedef  size_t GpStatus ;
typedef  int /*<<< orphan*/  GpImage ;
typedef  int /*<<< orphan*/  GpBitmap ;

/* Variables and functions */
 size_t FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,size_t,int,int) ; 
 size_t FUNC2 (size_t const,size_t const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int HistogramFormatA ; 
 int HistogramFormatARGB ; 
 int HistogramFormatB ; 
 int HistogramFormatG ; 
 int HistogramFormatGray ; 
 int HistogramFormatPARGB ; 
 int HistogramFormatR ; 
 int HistogramFormatRGB ; 
 int InvalidParameter ; 
 int Ok ; 
 int /*<<< orphan*/  PixelFormat24bppRGB ; 
 int /*<<< orphan*/  FUNC4 (int,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,size_t) ; 
 size_t FUNC6 (int /*<<< orphan*/ *,int,int,size_t*,size_t*,size_t*,size_t*) ; 
 size_t FUNC7 (int,size_t*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static void FUNC9(void)
{
    UINT ch0[256], ch1[256], ch2[256], ch3[256];
    HistogramFormat test_formats[] =
    {
        HistogramFormatARGB,
        HistogramFormatPARGB,
        HistogramFormatRGB,
        HistogramFormatGray,
        HistogramFormatB,
        HistogramFormatG,
        HistogramFormatR,
        HistogramFormatA,
    };
    const UINT WIDTH = 8, HEIGHT = 16;
    UINT num, i, x;
    GpStatus stat;
    GpBitmap *bm;

    if (!&pGdipBitmapGetHistogramSize)
    {
        FUNC8("GdipBitmapGetHistogramSize is not supported\n");
        return;
    }

    stat = FUNC7(HistogramFormatARGB, NULL);
    FUNC4(InvalidParameter, stat);

    stat = FUNC7(0xff, NULL);
    FUNC4(InvalidParameter, stat);

    num = 123;
    stat = FUNC7(10, &num);
    FUNC4(Ok, stat);
    FUNC4(256, num);

    for (i = 0; i < FUNC0(test_formats); i++)
    {
        num = 0;
        stat = FUNC7(test_formats[i], &num);
        FUNC4(Ok, stat);
        FUNC4(256, num);
    }

    bm = NULL;
    stat = FUNC2(WIDTH, HEIGHT, 0, PixelFormat24bppRGB, NULL, &bm);
    FUNC4(Ok, stat);

    /* Three solid rgb rows, next three rows are rgb shades. */
    for (x = 0; x < WIDTH; x++)
    {
        FUNC1(bm, x, 0, 0xffff0000);
        FUNC1(bm, x, 1, 0xff00ff00);
        FUNC1(bm, x, 2, 0xff0000ff);

        FUNC1(bm, x, 3, 0xff010000);
        FUNC1(bm, x, 4, 0xff003f00);
        FUNC1(bm, x, 5, 0xff000020);
    }

    stat = FUNC6(NULL, HistogramFormatRGB, 256, ch0, ch1, ch2, ch3);
    FUNC4(InvalidParameter, stat);

    stat = FUNC6(bm, 123, 256, ch0, ch1, ch2, ch3);
    FUNC4(InvalidParameter, stat);

    stat = FUNC6(bm, 123, 256, ch0, ch1, ch2, NULL);
    FUNC4(InvalidParameter, stat);

    stat = FUNC6(bm, 123, 256, ch0, ch1, NULL, NULL);
    FUNC4(InvalidParameter, stat);

    stat = FUNC6(bm, 123, 256, ch0, NULL, NULL, NULL);
    FUNC4(InvalidParameter, stat);

    /* Requested format matches bitmap format */
    stat = FUNC6(bm, HistogramFormatRGB, 256, ch0, ch1, ch2, ch3);
    FUNC4(InvalidParameter, stat);

    stat = FUNC6(bm, HistogramFormatRGB, 100, ch0, ch1, ch2, NULL);
    FUNC4(InvalidParameter, stat);

    stat = FUNC6(bm, HistogramFormatRGB, 257, ch0, ch1, ch2, NULL);
    FUNC4(InvalidParameter, stat);

    /* Channel 3 is not used, must be NULL */
    stat = FUNC6(bm, HistogramFormatRGB, 256, ch0, ch1, ch2, NULL);
    FUNC4(Ok, stat);

    FUNC5(ch0[0xff] == WIDTH, "Got red (0xff) %u\n", ch0[0xff]);
    FUNC5(ch1[0xff] == WIDTH, "Got green (0xff) %u\n", ch1[0xff]);
    FUNC5(ch2[0xff] == WIDTH, "Got blue (0xff) %u\n", ch1[0xff]);
    FUNC5(ch0[0x01] == WIDTH, "Got red (0x01) %u\n", ch0[0x01]);
    FUNC5(ch1[0x3f] == WIDTH, "Got green (0x3f) %u\n", ch1[0x3f]);
    FUNC5(ch2[0x20] == WIDTH, "Got blue (0x20) %u\n", ch1[0x20]);

    /* ARGB histogram from RGB data. */
    stat = FUNC6(bm, HistogramFormatARGB, 256, ch0, ch1, ch2, NULL);
    FUNC4(InvalidParameter, stat);

    stat = FUNC6(bm, HistogramFormatARGB, 256, ch0, ch1, ch2, ch3);
    FUNC4(Ok, stat);

    FUNC5(ch1[0xff] == WIDTH, "Got red (0xff) %u\n", ch1[0xff]);
    FUNC5(ch2[0xff] == WIDTH, "Got green (0xff) %u\n", ch2[0xff]);
    FUNC5(ch3[0xff] == WIDTH, "Got blue (0xff) %u\n", ch3[0xff]);
    FUNC5(ch1[0x01] == WIDTH, "Got red (0x01) %u\n", ch1[0x01]);
    FUNC5(ch2[0x3f] == WIDTH, "Got green (0x3f) %u\n", ch2[0x3f]);
    FUNC5(ch3[0x20] == WIDTH, "Got blue (0x20) %u\n", ch3[0x20]);

    FUNC5(ch0[0xff] == WIDTH * HEIGHT, "Got alpha (0xff) %u\n", ch0[0xff]);

    /* Request grayscale histogram from RGB bitmap. */
    stat = FUNC6(bm, HistogramFormatGray, 256, ch0, ch1, ch2, ch3);
    FUNC4(InvalidParameter, stat);

    stat = FUNC6(bm, HistogramFormatGray, 256, ch0, ch1, ch2, NULL);
    FUNC4(InvalidParameter, stat);

    stat = FUNC6(bm, HistogramFormatGray, 256, ch0, ch1, NULL, NULL);
    FUNC4(InvalidParameter, stat);

    stat = FUNC6(bm, HistogramFormatGray, 256, ch0, NULL, NULL, NULL);
    FUNC4(Ok, stat);

    FUNC3((GpImage*)bm);
}