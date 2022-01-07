
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WICPixelFormatGUID ;
typedef int ULARGE_INTEGER ;
struct TYPE_3__ {scalar_t__ QuadPart; } ;
typedef TYPE_1__ LARGE_INTEGER ;
typedef int IStream ;
typedef scalar_t__ HRESULT ;
typedef int CLSID ;


 int CLSID_WICBmpEncoder ;
 int CLSID_WICGifEncoder ;
 int CLSID_WICPngEncoder ;
 int CLSID_WICTiffEncoder ;
 scalar_t__ IStream_Seek (int *,TYPE_1__,int ,int *) ;
 scalar_t__ IsEqualGUID (int const*,int *) ;
 int SEEK_SET ;
 scalar_t__ S_OK ;
 int check_bmp_format (int *,int const*) ;
 int check_gif_format (int *,int const*) ;
 int check_png_format (int *,int const*) ;
 int check_tiff_format (int *,int const*) ;
 int ok (int,char*,scalar_t__) ;
 scalar_t__ wine_dbgstr_guid (int const*) ;

__attribute__((used)) static void check_bitmap_format(IStream *stream, const CLSID *encoder, const WICPixelFormatGUID *format)
{
    HRESULT hr;
    LARGE_INTEGER pos;

    pos.QuadPart = 0;
    hr = IStream_Seek(stream, pos, SEEK_SET, (ULARGE_INTEGER *)&pos);
    ok(hr == S_OK, "IStream_Seek error %#x\n", hr);

    if (IsEqualGUID(encoder, &CLSID_WICPngEncoder))
        check_png_format(stream, format);
    else if (IsEqualGUID(encoder, &CLSID_WICBmpEncoder))
        check_bmp_format(stream, format);
    else if (IsEqualGUID(encoder, &CLSID_WICTiffEncoder))
        check_tiff_format(stream, format);
    else if (IsEqualGUID(encoder, &CLSID_WICGifEncoder))
        check_gif_format(stream, format);
    else
        ok(0, "unknown encoder %s\n", wine_dbgstr_guid(encoder));

    hr = IStream_Seek(stream, pos, SEEK_SET, ((void*)0));
    ok(hr == S_OK, "IStream_Seek error %#x\n", hr);
}
