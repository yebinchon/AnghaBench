
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct FormatConverter {int palette; int source; } ;
typedef enum pixelformat { ____Placeholder_pixelformat } pixelformat ;
struct TYPE_5__ {int Width; int Height; } ;
typedef TYPE_1__ WICRect ;
typedef int WICColor ;
typedef int UINT ;
typedef scalar_t__ INT ;
typedef scalar_t__ HRESULT ;
typedef int BYTE ;


 scalar_t__ E_OUTOFMEMORY ;
 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,int *) ;
 scalar_t__ IWICBitmapSource_CopyPixels (int ,TYPE_1__ const*,int,int,int *) ;
 scalar_t__ IWICPalette_GetColors (int ,int,int *,int*) ;
 scalar_t__ SUCCEEDED (scalar_t__) ;
 scalar_t__ S_OK ;
 scalar_t__ WINCODEC_ERR_WRONGSTATE ;
 scalar_t__ copypixels_to_24bppBGR (struct FormatConverter*,TYPE_1__ const*,int,int,int *,int) ;
 int format_8bppIndexed ;
 int rgb_to_palette_index (int ,int ,int ,int *,int) ;

__attribute__((used)) static HRESULT copypixels_to_8bppIndexed(struct FormatConverter *This, const WICRect *prc,
    UINT cbStride, UINT cbBufferSize, BYTE *pbBuffer, enum pixelformat source_format)
{
    HRESULT hr;
    BYTE *srcdata;
    WICColor colors[256];
    UINT srcstride, srcdatasize, count;

    if (source_format == format_8bppIndexed)
    {
        if (prc)
            return IWICBitmapSource_CopyPixels(This->source, prc, cbStride, cbBufferSize, pbBuffer);

        return S_OK;
    }

    if (!This->palette) return WINCODEC_ERR_WRONGSTATE;

    hr = IWICPalette_GetColors(This->palette, 256, colors, &count);
    if (hr != S_OK) return hr;

    srcstride = 3 * prc->Width;
    srcdatasize = srcstride * prc->Height;

    srcdata = HeapAlloc(GetProcessHeap(), 0, srcdatasize);
    if (!srcdata) return E_OUTOFMEMORY;

    hr = copypixels_to_24bppBGR(This, prc, srcstride, srcdatasize, srcdata, source_format);
    if (SUCCEEDED(hr) && prc)
    {
        INT x, y;
        BYTE *src = srcdata, *dst = pbBuffer;

        for (y = 0; y < prc->Height; y++)
        {
            BYTE *bgr = src;

            for (x = 0; x < prc->Width; x++)
            {
                dst[x] = rgb_to_palette_index(bgr[2], bgr[1], bgr[0], colors, count);
                bgr += 3;
            }
            src += srcstride;
            dst += cbStride;
        }
    }

    HeapFree(GetProcessHeap(), 0, srcdata);
    return hr;
}
