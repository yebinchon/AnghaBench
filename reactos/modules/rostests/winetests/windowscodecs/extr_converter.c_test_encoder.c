
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bitmap_data {int dummy; } ;
typedef int colors ;
typedef int WICColor ;
typedef int IWICPalette ;
typedef scalar_t__ HRESULT ;
typedef int CLSID ;


 scalar_t__ IWICImagingFactory_CreatePalette (int ,int **) ;
 scalar_t__ IWICPalette_InitializeCustom (int *,int*,int) ;
 int IWICPalette_Release (int *) ;
 scalar_t__ S_OK ;
 int factory ;
 int memset (int*,int ,int) ;
 int ok (int,char*,scalar_t__) ;
 int test_multi_encoder (struct bitmap_data const**,int const*,struct bitmap_data const**,int const*,int *,int *,char const*,int *) ;

__attribute__((used)) static void test_encoder(const struct bitmap_data *src, const CLSID* clsid_encoder,
    const struct bitmap_data *dst, const CLSID *clsid_decoder, const char *name)
{
    const struct bitmap_data *srcs[2];
    const struct bitmap_data *dsts[2];
    WICColor colors[256];
    IWICPalette *palette;
    HRESULT hr;

    hr = IWICImagingFactory_CreatePalette(factory, &palette);
    ok(hr == S_OK, "CreatePalette error %#x\n", hr);

    memset(colors, 0, sizeof(colors));
    colors[0] = 0x11111111;
    colors[1] = 0x22222222;
    colors[2] = 0x33333333;
    colors[3] = 0x44444444;
    colors[4] = 0x55555555;

    hr = IWICPalette_InitializeCustom(palette, colors, 256);
    ok(hr == S_OK, "InitializeCustom error %#x\n", hr);

    srcs[0] = src;
    srcs[1] = ((void*)0);
    dsts[0] = dst;
    dsts[1] = ((void*)0);

    test_multi_encoder(srcs, clsid_encoder, dsts, clsid_decoder, ((void*)0), ((void*)0), name, palette);

    IWICPalette_Release(palette);
}
