
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct FormatConverter {int source; } ;
typedef enum pixelformat { ____Placeholder_pixelformat } pixelformat ;
struct TYPE_4__ {int Width; int Height; } ;
typedef TYPE_1__ WICRect ;
typedef int UINT ;
typedef int INT ;
typedef int HRESULT ;
typedef void* BYTE ;


 int E_OUTOFMEMORY ;
 int FIXME (char*) ;
 int GetProcessHeap () ;
 void** HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,void**) ;
 int IWICBitmapSource_CopyPixels (int ,TYPE_1__ const*,int,int,void**) ;
 int SUCCEEDED (int ) ;
 int S_OK ;
 int WINCODEC_ERR_UNSUPPORTEDOPERATION ;





 int reverse_bgr8 (int,void**,int,int,int) ;

__attribute__((used)) static HRESULT copypixels_to_24bppRGB(struct FormatConverter *This, const WICRect *prc,
    UINT cbStride, UINT cbBufferSize, BYTE *pbBuffer, enum pixelformat source_format)
{
    HRESULT hr;

    switch (source_format)
    {
    case 132:
    case 131:
        if (prc)
        {
            hr = IWICBitmapSource_CopyPixels(This->source, prc, cbStride, cbBufferSize, pbBuffer);
            if (SUCCEEDED(hr) && source_format == 132)
              reverse_bgr8(3, pbBuffer, prc->Width, prc->Height, cbStride);
            return hr;
        }
        return S_OK;
    case 130:
    case 129:
    case 128:
        if (prc)
        {
            HRESULT res;
            INT x, y;
            BYTE *srcdata;
            UINT srcstride, srcdatasize;
            const BYTE *srcrow;
            const BYTE *srcpixel;
            BYTE *dstrow;
            BYTE *dstpixel;
            BYTE tmppixel[3];

            srcstride = 4 * prc->Width;
            srcdatasize = srcstride * prc->Height;

            srcdata = HeapAlloc(GetProcessHeap(), 0, srcdatasize);
            if (!srcdata) return E_OUTOFMEMORY;

            res = IWICBitmapSource_CopyPixels(This->source, prc, srcstride, srcdatasize, srcdata);

            if (SUCCEEDED(res))
            {
                srcrow = srcdata;
                dstrow = pbBuffer;
                for (y=0; y<prc->Height; y++) {
                    srcpixel=srcrow;
                    dstpixel=dstrow;
                    for (x=0; x<prc->Width; x++) {
                        tmppixel[0]=*srcpixel++;
                        tmppixel[1]=*srcpixel++;
                        tmppixel[2]=*srcpixel++;
                        srcpixel++;

                        *dstpixel++=tmppixel[2];
                        *dstpixel++=tmppixel[1];
                        *dstpixel++=tmppixel[0];
                    }
                    srcrow += srcstride;
                    dstrow += cbStride;
                }
            }

            HeapFree(GetProcessHeap(), 0, srcdata);

            return res;
        }
        return S_OK;
    default:
        FIXME("Unimplemented conversion path!\n");
        return WINCODEC_ERR_UNSUPPORTEDOPERATION;
    }
}
