
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int QuadPart; } ;
typedef TYPE_1__ ULARGE_INTEGER ;
typedef int UINT ;
struct TYPE_6__ {scalar_t__ QuadPart; } ;
typedef int LONG ;
typedef TYPE_2__ LARGE_INTEGER ;
typedef int IWICBitmapDecoder ;
typedef int IStream ;
typedef scalar_t__ HRESULT ;
typedef int GUID ;


 int GUID_ContainerFormatPng ;
 int IStream_Release (int *) ;
 int IStream_Seek (int *,TYPE_2__,int ,TYPE_1__*) ;
 scalar_t__ IWICBitmapDecoder_GetContainerFormat (int *,int *) ;
 scalar_t__ IWICImagingFactory_CreateDecoderFromStream (int ,int *,int *,int ,int **) ;
 int IsEqualGUID (int *,int *) ;
 int * SHCreateMemStream (void const*,int) ;
 int STREAM_SEEK_CUR ;
 scalar_t__ S_OK ;
 int factory ;
 int ok (int,char*,...) ;
 int wine_dbgstr_guid (int *) ;

__attribute__((used)) static HRESULT create_decoder(const void *image_data, UINT image_size, IWICBitmapDecoder **decoder)
{
    HRESULT hr;
    IStream *stream;
    GUID format;
    LONG refcount;
    ULARGE_INTEGER pos;
    LARGE_INTEGER zero;

    *decoder = ((void*)0);

    stream = SHCreateMemStream (image_data, image_size);
    ok(stream != ((void*)0), "SHCreateMemStream error\n");

    hr = IWICImagingFactory_CreateDecoderFromStream(factory, stream, ((void*)0), 0, decoder);
    if (hr == S_OK)
    {
        hr = IWICBitmapDecoder_GetContainerFormat(*decoder, &format);
        ok(hr == S_OK, "GetContainerFormat error %#x\n", hr);
        ok(IsEqualGUID(&format, &GUID_ContainerFormatPng),
           "wrong container format %s\n", wine_dbgstr_guid(&format));

        zero.QuadPart = 0;
        IStream_Seek (stream, zero, STREAM_SEEK_CUR, &pos);
        ok(pos.QuadPart < image_size, "seek beyond the end of stream: %x%08x >= %x\n",
           (UINT)(pos.QuadPart >> 32), (UINT)pos.QuadPart, image_size);

        refcount = IStream_Release(stream);
        ok(refcount > 0, "expected stream refcount > 0\n");
    }
    else
        IStream_Release(stream);

    return hr;
}
