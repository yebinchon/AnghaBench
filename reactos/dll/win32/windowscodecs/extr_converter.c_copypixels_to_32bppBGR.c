
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct FormatConverter {int source; } ;
typedef enum pixelformat { ____Placeholder_pixelformat } pixelformat ;
typedef int WICRect ;
typedef int UINT ;
typedef int HRESULT ;
typedef int BYTE ;


 int IWICBitmapSource_CopyPixels (int ,int const*,int ,int ,int *) ;
 int S_OK ;
 int copypixels_to_32bppBGRA (struct FormatConverter*,int const*,int ,int ,int *,int) ;




__attribute__((used)) static HRESULT copypixels_to_32bppBGR(struct FormatConverter *This, const WICRect *prc,
    UINT cbStride, UINT cbBufferSize, BYTE *pbBuffer, enum pixelformat source_format)
{
    switch (source_format)
    {
    case 130:
    case 129:
    case 128:
        if (prc)
            return IWICBitmapSource_CopyPixels(This->source, prc, cbStride, cbBufferSize, pbBuffer);
        return S_OK;
    default:
        return copypixels_to_32bppBGRA(This, prc, cbStride, cbBufferSize, pbBuffer, source_format);
    }
}
