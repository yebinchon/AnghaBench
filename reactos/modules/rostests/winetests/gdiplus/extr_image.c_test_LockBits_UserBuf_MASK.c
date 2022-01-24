#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  bits ;
struct TYPE_7__ {int Width; int Height; int Stride; int* Scan0; int Reserved; int /*<<< orphan*/  PixelFormat; } ;
struct TYPE_6__ {int X; int Y; int Width; int Height; } ;
typedef  int INT ;
typedef  int GpStatus ;
typedef  TYPE_1__ GpRect ;
typedef  int /*<<< orphan*/  GpImage ;
typedef  int /*<<< orphan*/  GpBitmap ;
typedef  int DWORD ;
typedef  TYPE_2__ BitmapData ;
typedef  int ARGB ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int,int,int*) ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int FUNC3 (int const,int const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int ImageLockModeRead ; 
 int ImageLockModeUserInputBuf ; 
 int ImageLockModeWrite ; 
 int Ok ; 
 int /*<<< orphan*/  PixelFormat32bppARGB ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int*,int,int) ; 

__attribute__((used)) static void FUNC7(void)
{
    GpStatus stat;
    GpBitmap *bm;
    GpRect rect;
    BitmapData bd;
    const INT WIDTH = 10, HEIGHT = 20;
    DWORD bits[200];
    ARGB color;

    bm = NULL;
    stat = FUNC3(WIDTH, HEIGHT, 0, PixelFormat32bppARGB, NULL, &bm);
    FUNC5(Ok, stat);

    FUNC6(bits, 0xaa, sizeof(bits));

    rect.X = 2;
    rect.Y = 3;
    rect.Width = 4;
    rect.Height = 5;

    bd.Width = 4;
    bd.Height = 6;
    bd.Stride = WIDTH * 4;
    bd.PixelFormat = PixelFormat32bppARGB;
    bd.Scan0 = &bits[2+3*WIDTH];
    bd.Reserved = 0xaaaaaaaa;

    /* read-only */
    stat = FUNC1(bm, &rect, ImageLockModeRead|ImageLockModeUserInputBuf, PixelFormat32bppARGB, &bd);
    FUNC5(Ok, stat);

    FUNC5(0xaaaaaaaa, bits[0]);
    FUNC5(0, bits[2+3*WIDTH]);

    bits[2+3*WIDTH] = 0xdeadbeef;

    if (stat == Ok) {
        stat = FUNC2(bm, &bd);
        FUNC5(Ok, stat);
    }

    stat = FUNC0(bm, 2, 3, &color);
    FUNC5(Ok, stat);
    FUNC5(0, color);

    /* write-only */
    stat = FUNC1(bm, &rect, ImageLockModeWrite|ImageLockModeUserInputBuf, PixelFormat32bppARGB, &bd);
    FUNC5(Ok, stat);

    FUNC5(0xdeadbeef, bits[2+3*WIDTH]);
    bits[2+3*WIDTH] = 0x12345678;

    if (stat == Ok) {
        stat = FUNC2(bm, &bd);
        FUNC5(Ok, stat);
    }

    stat = FUNC0(bm, 2, 3, &color);
    FUNC5(Ok, stat);
    FUNC5(0x12345678, color);

    bits[2+3*WIDTH] = 0;

    /* read/write */
    stat = FUNC1(bm, &rect, ImageLockModeRead|ImageLockModeWrite|ImageLockModeUserInputBuf, PixelFormat32bppARGB, &bd);
    FUNC5(Ok, stat);

    FUNC5(0x12345678, bits[2+3*WIDTH]);
    bits[2+3*WIDTH] = 0xdeadbeef;

    if (stat == Ok) {
        stat = FUNC2(bm, &bd);
        FUNC5(Ok, stat);
    }

    stat = FUNC0(bm, 2, 3, &color);
    FUNC5(Ok, stat);
    FUNC5(0xdeadbeef, color);

    stat = FUNC4((GpImage*)bm);
    FUNC5(Ok, stat);
}