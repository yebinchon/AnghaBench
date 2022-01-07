
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef scalar_t__ LONG ;
typedef int IWICBitmapDecoder ;
typedef int IStream ;
typedef scalar_t__ HRESULT ;
typedef int GUID ;


 int GUID_ContainerFormatGif ;
 scalar_t__ IStream_Release (int *) ;
 scalar_t__ IWICBitmapDecoder_GetContainerFormat (int *,int *) ;
 scalar_t__ IWICImagingFactory_CreateDecoderFromStream (int ,int *,int *,int ,int **) ;
 int IsEqualGUID (int *,int *) ;
 scalar_t__ S_OK ;
 int * create_stream (void const*,int ) ;
 int factory ;
 int ok (int,char*,...) ;
 int wine_dbgstr_guid (int *) ;

__attribute__((used)) static IWICBitmapDecoder *create_decoder(const void *image_data, UINT image_size)
{
    HRESULT hr;
    IWICBitmapDecoder *decoder;
    IStream *stream;
    GUID format;
    LONG refcount;

    stream = create_stream(image_data, image_size);
    if (!stream) return ((void*)0);

    hr = IWICImagingFactory_CreateDecoderFromStream(factory, stream, ((void*)0), 0, &decoder);
    ok(hr == S_OK, "CreateDecoderFromStream error %#x\n", hr);

    hr = IWICBitmapDecoder_GetContainerFormat(decoder, &format);
    ok(hr == S_OK, "GetContainerFormat error %#x\n", hr);
    ok(IsEqualGUID(&format, &GUID_ContainerFormatGif),
       "wrong container format %s\n", wine_dbgstr_guid(&format));

    refcount = IStream_Release(stream);
    ok(refcount > 0, "expected stream refcount > 0\n");

    return decoder;
}
