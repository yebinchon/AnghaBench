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
struct bitmap_data {int dummy; } ;
typedef  int /*<<< orphan*/  colors ;
typedef  int WICColor ;
typedef  int /*<<< orphan*/  IWICPalette ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  CLSID ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  factory ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct bitmap_data const**,int /*<<< orphan*/  const*,struct bitmap_data const**,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(const struct bitmap_data *src, const CLSID* clsid_encoder,
    const struct bitmap_data *dst, const CLSID *clsid_decoder, const char *name)
{
    const struct bitmap_data *srcs[2];
    const struct bitmap_data *dsts[2];
    WICColor colors[256];
    IWICPalette *palette;
    HRESULT hr;

    hr = FUNC0(factory, &palette);
    FUNC4(hr == S_OK, "CreatePalette error %#x\n", hr);

    FUNC3(colors, 0, sizeof(colors));
    colors[0] = 0x11111111;
    colors[1] = 0x22222222;
    colors[2] = 0x33333333;
    colors[3] = 0x44444444;
    colors[4] = 0x55555555;
    /* TIFF decoder fails to decode a 8bpp frame if palette has less than 256 colors */
    hr = FUNC1(palette, colors, 256);
    FUNC4(hr == S_OK, "InitializeCustom error %#x\n", hr);

    srcs[0] = src;
    srcs[1] = NULL;
    dsts[0] = dst;
    dsts[1] = NULL;

    FUNC5(srcs, clsid_encoder, dsts, clsid_decoder, NULL, NULL, name, palette);

    FUNC2(palette);
}