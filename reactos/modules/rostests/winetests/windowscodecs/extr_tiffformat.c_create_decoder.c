
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef scalar_t__ LONG ;
typedef int IWICBitmapDecoder ;
typedef int IStream ;
typedef scalar_t__ HRESULT ;
typedef int HGLOBAL ;
typedef int GUID ;
typedef int BYTE ;


 scalar_t__ CreateStreamOnHGlobal (int ,int ,int **) ;
 int GUID_ContainerFormatTiff ;
 int GlobalAlloc (int ,int ) ;
 int * GlobalLock (int ) ;
 int GlobalUnlock (int ) ;
 scalar_t__ IStream_Release (int *) ;
 scalar_t__ IWICBitmapDecoder_GetContainerFormat (int *,int *) ;
 scalar_t__ IWICImagingFactory_CreateDecoderFromStream (int ,int *,int *,int ,int **) ;
 int IsEqualGUID (int *,int *) ;
 scalar_t__ S_OK ;
 int TRUE ;
 int factory ;
 int memcpy (int *,void const*,int ) ;
 int ok (int,char*,...) ;
 int wine_dbgstr_guid (int *) ;

__attribute__((used)) static HRESULT create_decoder(const void *image_data, UINT image_size, IWICBitmapDecoder **decoder)
{
    HGLOBAL hmem;
    BYTE *data;
    HRESULT hr;
    IStream *stream;
    GUID format;
    LONG refcount;

    *decoder = ((void*)0);

    hmem = GlobalAlloc(0, image_size);
    data = GlobalLock(hmem);
    memcpy(data, image_data, image_size);
    GlobalUnlock(hmem);

    hr = CreateStreamOnHGlobal(hmem, TRUE, &stream);
    ok(hr == S_OK, "CreateStreamOnHGlobal error %#x\n", hr);

    hr = IWICImagingFactory_CreateDecoderFromStream(factory, stream, ((void*)0), 0, decoder);
    if (hr == S_OK)
    {
        hr = IWICBitmapDecoder_GetContainerFormat(*decoder, &format);
        ok(hr == S_OK, "GetContainerFormat error %#x\n", hr);
        ok(IsEqualGUID(&format, &GUID_ContainerFormatTiff),
           "wrong container format %s\n", wine_dbgstr_guid(&format));

        refcount = IStream_Release(stream);
        ok(refcount > 0, "expected stream refcount > 0\n");
    }

    return hr;
}
