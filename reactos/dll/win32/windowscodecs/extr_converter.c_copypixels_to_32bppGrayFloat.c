
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct FormatConverter {int source; } ;
typedef enum pixelformat { ____Placeholder_pixelformat } pixelformat ;
struct TYPE_5__ {scalar_t__ Height; scalar_t__ Width; } ;
typedef TYPE_1__ WICRect ;
typedef int UINT ;
typedef scalar_t__ INT ;
typedef int HRESULT ;
typedef float BYTE ;


 int IWICBitmapSource_CopyPixels (int ,TYPE_1__ const*,int ,int ,float*) ;
 scalar_t__ SUCCEEDED (int ) ;
 int S_OK ;
 int copypixels_to_32bppBGRA (struct FormatConverter*,TYPE_1__ const*,int ,int ,float*,int) ;





__attribute__((used)) static HRESULT copypixels_to_32bppGrayFloat(struct FormatConverter *This, const WICRect *prc,
    UINT cbStride, UINT cbBufferSize, BYTE *pbBuffer, enum pixelformat source_format)
{
    HRESULT hr;

    switch (source_format)
    {
    case 131:
    case 130:
    case 128:
    case 129:
        if (prc)
        {
            hr = IWICBitmapSource_CopyPixels(This->source, prc, cbStride, cbBufferSize, pbBuffer);
            break;
        }
        return S_OK;

    default:
        hr = copypixels_to_32bppBGRA(This, prc, cbStride, cbBufferSize, pbBuffer, source_format);
        break;
    }

    if (SUCCEEDED(hr) && prc && source_format != 129)
    {
        INT x, y;
        BYTE *p = pbBuffer;

        for (y = 0; y < prc->Height; y++)
        {
            BYTE *bgr = p;
            for (x = 0; x < prc->Width; x++)
            {
                float gray = (bgr[2] * 0.2126f + bgr[1] * 0.7152f + bgr[0] * 0.0722f) / 255.0f;
                *(float *)bgr = gray;
                bgr += 4;
            }
            p += cbStride;
        }
    }
    return hr;
}
