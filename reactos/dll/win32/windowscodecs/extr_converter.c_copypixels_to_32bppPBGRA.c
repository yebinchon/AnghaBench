
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct FormatConverter {int source; } ;
typedef enum pixelformat { ____Placeholder_pixelformat } pixelformat ;
struct TYPE_5__ {int Height; int Width; } ;
typedef TYPE_1__ WICRect ;
typedef int UINT ;
typedef int INT ;
typedef int HRESULT ;
typedef int BYTE ;


 int IWICBitmapSource_CopyPixels (int ,TYPE_1__ const*,int,int,int*) ;
 int SUCCEEDED (int ) ;
 int S_OK ;
 int copypixels_to_32bppBGRA (struct FormatConverter*,TYPE_1__ const*,int,int,int*,int) ;


__attribute__((used)) static HRESULT copypixels_to_32bppPBGRA(struct FormatConverter *This, const WICRect *prc,
    UINT cbStride, UINT cbBufferSize, BYTE *pbBuffer, enum pixelformat source_format)
{
    HRESULT hr;

    switch (source_format)
    {
    case 128:
        if (prc)
            return IWICBitmapSource_CopyPixels(This->source, prc, cbStride, cbBufferSize, pbBuffer);
        return S_OK;
    default:
        hr = copypixels_to_32bppBGRA(This, prc, cbStride, cbBufferSize, pbBuffer, source_format);
        if (SUCCEEDED(hr) && prc)
        {
            INT x, y;

            for (y=0; y<prc->Height; y++)
                for (x=0; x<prc->Width; x++)
                {
                    BYTE alpha = pbBuffer[cbStride*y+4*x+3];
                    if (alpha != 255)
                    {
                        pbBuffer[cbStride*y+4*x] = pbBuffer[cbStride*y+4*x] * alpha / 255;
                        pbBuffer[cbStride*y+4*x+1] = pbBuffer[cbStride*y+4*x+1] * alpha / 255;
                        pbBuffer[cbStride*y+4*x+2] = pbBuffer[cbStride*y+4*x+2] * alpha / 255;
                    }
                }
        }
        return hr;
    }
}
