#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct bitmap_data {int width; int height; double xres; double yres; int bpp; int /*<<< orphan*/  format; } ;
struct TYPE_3__ {int Width; int Height; scalar_t__ Y; scalar_t__ X; } ;
typedef  TYPE_1__ WICRect ;
typedef  int UINT ;
typedef  int /*<<< orphan*/  IWICBitmapSource ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  GUID ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,double*,double*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int*,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct bitmap_data const*,int,int /*<<< orphan*/ *) ; 
 double FUNC10 (double) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC13 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC15(const struct bitmap_data *src, const struct bitmap_data *expect,
                                IWICBitmapSource *source, const char *name)
{
    BYTE *converted_bits;
    UINT width, height;
    double xres, yres;
    WICRect prc;
    UINT stride, buffersize;
    GUID dst_pixelformat;
    HRESULT hr;

    hr = FUNC6(source, &width, &height);
    FUNC13(FUNC8(hr), "GetSize(%s) failed, hr=%x\n", name, hr);
    FUNC13(width == expect->width, "expecting %u, got %u (%s)\n", expect->width, width, name);
    FUNC13(height == expect->height, "expecting %u, got %u (%s)\n", expect->height, height, name);

    hr = FUNC5(source, &xres, &yres);
    FUNC13(FUNC8(hr), "GetResolution(%s) failed, hr=%x\n", name, hr);
    FUNC13(FUNC10(xres - expect->xres) < 0.02, "expecting %0.2f, got %0.2f (%s)\n", expect->xres, xres, name);
    FUNC13(FUNC10(yres - expect->yres) < 0.02, "expecting %0.2f, got %0.2f (%s)\n", expect->yres, yres, name);

    hr = FUNC4(source, &dst_pixelformat);
    FUNC13(FUNC8(hr), "GetPixelFormat(%s) failed, hr=%x\n", name, hr);
    FUNC13(FUNC7(&dst_pixelformat, expect->format), "got unexpected pixel format %s (%s)\n", FUNC14(&dst_pixelformat), name);

    prc.X = 0;
    prc.Y = 0;
    prc.Width = expect->width;
    prc.Height = expect->height;

    stride = (expect->bpp * expect->width + 7) / 8;
    buffersize = stride * expect->height;

    converted_bits = FUNC1(FUNC0(), 0, buffersize);
    FUNC12(converted_bits, 0xaa, buffersize);
    hr = FUNC3(source, &prc, stride, buffersize, converted_bits);
    FUNC13(FUNC8(hr), "CopyPixels(%s) failed, hr=%x\n", name, hr);

    /* The result of conversion of color to indexed formats depends on
     * optimized palette generation implementation. We either need to
     * assign our own palette, or just skip the comparison.
     */
    if (!(!FUNC11(src->format) && FUNC11(expect->format)))
        FUNC13(FUNC9(expect, buffersize, converted_bits), "unexpected pixel data (%s)\n", name);

    /* Test with NULL rectangle - should copy the whole bitmap */
    FUNC12(converted_bits, 0xaa, buffersize);
    hr = FUNC3(source, NULL, stride, buffersize, converted_bits);
    FUNC13(FUNC8(hr), "CopyPixels(%s,rc=NULL) failed, hr=%x\n", name, hr);
    /* see comment above */
    if (!(!FUNC11(src->format) && FUNC11(expect->format)))
        FUNC13(FUNC9(expect, buffersize, converted_bits), "unexpected pixel data (%s)\n", name);

    FUNC2(FUNC0(), 0, converted_bits);
}