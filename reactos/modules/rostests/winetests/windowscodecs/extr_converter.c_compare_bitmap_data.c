
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct bitmap_data {int width; int height; double xres; double yres; int bpp; int format; } ;
struct TYPE_3__ {int Width; int Height; scalar_t__ Y; scalar_t__ X; } ;
typedef TYPE_1__ WICRect ;
typedef int UINT ;
typedef int IWICBitmapSource ;
typedef int HRESULT ;
typedef int GUID ;
typedef int BYTE ;


 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,int *) ;
 int IWICBitmapSource_CopyPixels (int *,TYPE_1__*,int,int,int *) ;
 int IWICBitmapSource_GetPixelFormat (int *,int *) ;
 int IWICBitmapSource_GetResolution (int *,double*,double*) ;
 int IWICBitmapSource_GetSize (int *,int*,int*) ;
 int IsEqualGUID (int *,int ) ;
 int SUCCEEDED (int ) ;
 int compare_bits (struct bitmap_data const*,int,int *) ;
 double fabs (double) ;
 scalar_t__ is_indexed_format (int ) ;
 int memset (int *,int,int) ;
 int ok (int,char*,...) ;
 int wine_dbgstr_guid (int *) ;

__attribute__((used)) static void compare_bitmap_data(const struct bitmap_data *src, const struct bitmap_data *expect,
                                IWICBitmapSource *source, const char *name)
{
    BYTE *converted_bits;
    UINT width, height;
    double xres, yres;
    WICRect prc;
    UINT stride, buffersize;
    GUID dst_pixelformat;
    HRESULT hr;

    hr = IWICBitmapSource_GetSize(source, &width, &height);
    ok(SUCCEEDED(hr), "GetSize(%s) failed, hr=%x\n", name, hr);
    ok(width == expect->width, "expecting %u, got %u (%s)\n", expect->width, width, name);
    ok(height == expect->height, "expecting %u, got %u (%s)\n", expect->height, height, name);

    hr = IWICBitmapSource_GetResolution(source, &xres, &yres);
    ok(SUCCEEDED(hr), "GetResolution(%s) failed, hr=%x\n", name, hr);
    ok(fabs(xres - expect->xres) < 0.02, "expecting %0.2f, got %0.2f (%s)\n", expect->xres, xres, name);
    ok(fabs(yres - expect->yres) < 0.02, "expecting %0.2f, got %0.2f (%s)\n", expect->yres, yres, name);

    hr = IWICBitmapSource_GetPixelFormat(source, &dst_pixelformat);
    ok(SUCCEEDED(hr), "GetPixelFormat(%s) failed, hr=%x\n", name, hr);
    ok(IsEqualGUID(&dst_pixelformat, expect->format), "got unexpected pixel format %s (%s)\n", wine_dbgstr_guid(&dst_pixelformat), name);

    prc.X = 0;
    prc.Y = 0;
    prc.Width = expect->width;
    prc.Height = expect->height;

    stride = (expect->bpp * expect->width + 7) / 8;
    buffersize = stride * expect->height;

    converted_bits = HeapAlloc(GetProcessHeap(), 0, buffersize);
    memset(converted_bits, 0xaa, buffersize);
    hr = IWICBitmapSource_CopyPixels(source, &prc, stride, buffersize, converted_bits);
    ok(SUCCEEDED(hr), "CopyPixels(%s) failed, hr=%x\n", name, hr);





    if (!(!is_indexed_format(src->format) && is_indexed_format(expect->format)))
        ok(compare_bits(expect, buffersize, converted_bits), "unexpected pixel data (%s)\n", name);


    memset(converted_bits, 0xaa, buffersize);
    hr = IWICBitmapSource_CopyPixels(source, ((void*)0), stride, buffersize, converted_bits);
    ok(SUCCEEDED(hr), "CopyPixels(%s,rc=NULL) failed, hr=%x\n", name, hr);

    if (!(!is_indexed_format(src->format) && is_indexed_format(expect->format)))
        ok(compare_bits(expect, buffersize, converted_bits), "unexpected pixel data (%s)\n", name);

    HeapFree(GetProcessHeap(), 0, converted_bits);
}
