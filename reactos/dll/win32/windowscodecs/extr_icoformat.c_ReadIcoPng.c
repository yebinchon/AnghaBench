
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int Width; int Height; scalar_t__ Y; scalar_t__ X; } ;
typedef TYPE_1__ WICRect ;
struct TYPE_6__ {int width; int height; int * bits; int dpiY; int dpiX; } ;
typedef TYPE_2__ IcoFrameDecode ;
typedef int IWICBitmapSource ;
typedef int IWICBitmapFrameDecode ;
typedef int IWICBitmapDecoder ;
typedef int IStream ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int GUID_WICPixelFormat32bppBGRA ;
 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,int) ;
 int IID_IWICBitmapDecoder ;
 int IWICBitmapDecoder_GetFrame (int *,int ,int **) ;
 int IWICBitmapDecoder_Initialize (int *,int *,int ) ;
 int IWICBitmapDecoder_Release (int *) ;
 int IWICBitmapFrameDecode_GetResolution (int *,int *,int *) ;
 int IWICBitmapFrameDecode_GetSize (int *,int*,int*) ;
 int IWICBitmapFrameDecode_Release (int *) ;
 int IWICBitmapSource_CopyPixels (int *,TYPE_1__*,int,int,int *) ;
 int IWICBitmapSource_Release (int *) ;
 int PngDecoder_CreateInstance (int *,void**) ;
 int WICConvertBitmapSource (int *,int *,int **) ;
 int WICDecodeMetadataCacheOnLoad ;

__attribute__((used)) static HRESULT ReadIcoPng(IStream *stream, IcoFrameDecode *result)
{
    IWICBitmapDecoder *decoder = ((void*)0);
    IWICBitmapFrameDecode *sourceFrame = ((void*)0);
    IWICBitmapSource *sourceBitmap = ((void*)0);
    WICRect rect;
    HRESULT hr;

    hr = PngDecoder_CreateInstance(&IID_IWICBitmapDecoder, (void**)&decoder);
    if (FAILED(hr))
        goto end;
    hr = IWICBitmapDecoder_Initialize(decoder, stream, WICDecodeMetadataCacheOnLoad);
    if (FAILED(hr))
        goto end;
    hr = IWICBitmapDecoder_GetFrame(decoder, 0, &sourceFrame);
    if (FAILED(hr))
        goto end;
    hr = WICConvertBitmapSource(&GUID_WICPixelFormat32bppBGRA, (IWICBitmapSource*)sourceFrame, &sourceBitmap);
    if (FAILED(hr))
        goto end;
    hr = IWICBitmapFrameDecode_GetSize(sourceFrame, &result->width, &result->height);
    if (FAILED(hr))
        goto end;
    hr = IWICBitmapFrameDecode_GetResolution(sourceFrame, &result->dpiX, &result->dpiY);
    if (FAILED(hr))
        goto end;
    result->bits = HeapAlloc(GetProcessHeap(), 0, 4 * result->width * result->height);
    if (result->bits == ((void*)0))
    {
        hr = E_OUTOFMEMORY;
        goto end;
    }
    rect.X = 0;
    rect.Y = 0;
    rect.Width = result->width;
    rect.Height = result->height;
    hr = IWICBitmapSource_CopyPixels(sourceBitmap, &rect, 4*result->width,
                                     4*result->width*result->height, result->bits);

end:
    if (decoder != ((void*)0))
        IWICBitmapDecoder_Release(decoder);
    if (sourceFrame != ((void*)0))
        IWICBitmapFrameDecode_Release(sourceFrame);
    if (sourceBitmap != ((void*)0))
        IWICBitmapSource_Release(sourceBitmap);
    return hr;
}
