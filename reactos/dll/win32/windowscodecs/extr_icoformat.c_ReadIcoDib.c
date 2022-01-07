
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int Width; int Height; scalar_t__ Y; scalar_t__ X; } ;
typedef TYPE_1__ WICRect ;
typedef int WICPixelFormatGUID ;
typedef int ULONG ;
typedef int UINT ;
struct TYPE_9__ {int width; int height; int* bits; int dpiY; int dpiX; } ;
struct TYPE_8__ {int QuadPart; } ;
typedef TYPE_2__ LARGE_INTEGER ;
typedef TYPE_3__ IcoFrameDecode ;
typedef int IWICBitmapSource ;
typedef int IWICBitmapFrameDecode ;
typedef int IWICBitmapDecoder ;
typedef int IStream ;
typedef int INT ;
typedef int HRESULT ;
typedef int DWORD ;
typedef int BmpDecoder ;
typedef int BYTE ;
typedef scalar_t__ BOOL ;


 int BmpDecoder_FindIconMask (int *,int*,int*) ;
 int BmpDecoder_GetWICDecoder (int *,int **) ;
 int E_OUTOFMEMORY ;
 scalar_t__ FALSE ;
 int GUID_WICPixelFormat32bppBGR ;
 int GUID_WICPixelFormat32bppBGRA ;
 int GetProcessHeap () ;
 void* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,int*) ;
 int IStream_Read (int *,int*,int,int*) ;
 int IStream_Seek (int *,TYPE_2__,int ,int ) ;
 int IWICBitmapDecoder_GetFrame (int *,int ,int **) ;
 int IWICBitmapDecoder_Initialize (int *,int *,int ) ;
 int IWICBitmapDecoder_Release (int *) ;
 int IWICBitmapFrameDecode_GetPixelFormat (int *,int *) ;
 int IWICBitmapFrameDecode_GetResolution (int *,int *,int *) ;
 int IWICBitmapFrameDecode_GetSize (int *,int*,int*) ;
 int IWICBitmapFrameDecode_Release (int *) ;
 int IWICBitmapSource_AddRef (int *) ;
 int IWICBitmapSource_CopyPixels (int *,TYPE_1__*,int,int,int*) ;
 int IWICBitmapSource_Release (int *) ;
 int IcoDibDecoder_CreateInstance (int **) ;
 scalar_t__ IsEqualGUID (int *,int *) ;
 int STREAM_SEEK_SET ;
 scalar_t__ SUCCEEDED (int ) ;
 scalar_t__ TRUE ;
 int WICConvertBitmapSource (int *,int *,int **) ;
 int WICDecodeMetadataCacheOnLoad ;
 int pixel_set_trans (int ,int) ;

__attribute__((used)) static HRESULT ReadIcoDib(IStream *stream, IcoFrameDecode *result)
{
    HRESULT hr;
    BmpDecoder *bmp_decoder;
    IWICBitmapDecoder *decoder;
    IWICBitmapFrameDecode *framedecode;
    WICPixelFormatGUID pixelformat;
    IWICBitmapSource *source;
    BOOL has_alpha=FALSE;
    WICRect rc;

    hr = IcoDibDecoder_CreateInstance(&bmp_decoder);
    if (SUCCEEDED(hr))
    {
        BmpDecoder_GetWICDecoder(bmp_decoder, &decoder);
        hr = IWICBitmapDecoder_Initialize(decoder, stream, WICDecodeMetadataCacheOnLoad);

        if (SUCCEEDED(hr))
            hr = IWICBitmapDecoder_GetFrame(decoder, 0, &framedecode);

        if (SUCCEEDED(hr))
        {
            hr = IWICBitmapFrameDecode_GetSize(framedecode, &result->width, &result->height);

            if (SUCCEEDED(hr))
            {
                result->bits = HeapAlloc(GetProcessHeap(), 0, result->width * result->height * 4);
                if (!result->bits) hr = E_OUTOFMEMORY;
            }

            if (SUCCEEDED(hr))
                hr = IWICBitmapFrameDecode_GetPixelFormat(framedecode, &pixelformat);

            if (IsEqualGUID(&pixelformat, &GUID_WICPixelFormat32bppBGR) ||
                IsEqualGUID(&pixelformat, &GUID_WICPixelFormat32bppBGRA))
            {
                source = (IWICBitmapSource*)framedecode;
                IWICBitmapSource_AddRef(source);
                has_alpha = TRUE;
            }
            else
            {
                hr = WICConvertBitmapSource(&GUID_WICPixelFormat32bppBGRA,
                    (IWICBitmapSource*)framedecode, &source);
                has_alpha = FALSE;
            }

            if (SUCCEEDED(hr))
            {
                rc.X = 0;
                rc.Y = 0;
                rc.Width = result->width;
                rc.Height = result->height;
                hr = IWICBitmapSource_CopyPixels(source, &rc, result->width * 4,
                    result->width * result->height * 4, result->bits);

                IWICBitmapSource_Release(source);
            }

            if (SUCCEEDED(hr))
                hr = IWICBitmapFrameDecode_GetResolution(framedecode, &result->dpiX, &result->dpiY);

            IWICBitmapFrameDecode_Release(framedecode);
        }

        if (SUCCEEDED(hr) && has_alpha)
        {

            int nonzero_alpha = 0;
            UINT i;

            for (i=0; i<(result->height*result->width); i++)
            {
                if (result->bits[i*4+3] != 0)
                {
                    nonzero_alpha = 1;
                    break;
                }
            }

            if (!nonzero_alpha)
            {
                for (i=0; i<(result->height*result->width); i++)
                    result->bits[i*4+3] = 0xff;

                has_alpha = FALSE;
            }
        }

        if (SUCCEEDED(hr) && !has_alpha)
        {

            UINT andBytesPerRow = (result->width+31)/32*4;
            UINT andBytes = andBytesPerRow * result->height;
            INT andStride;
            BYTE *tempdata=((void*)0);
            BYTE *andRow;
            BYTE *bitsRow;
            UINT bitsStride = result->width * 4;
            UINT x, y;
            ULONG offset;
            ULONG bytesread;
            LARGE_INTEGER seek;
            int topdown;

            BmpDecoder_FindIconMask(bmp_decoder, &offset, &topdown);

            if (offset)
            {
                seek.QuadPart = offset;

                hr = IStream_Seek(stream, seek, STREAM_SEEK_SET, 0);

                if (SUCCEEDED(hr))
                {
                    tempdata = HeapAlloc(GetProcessHeap(), 0, andBytes);
                    if (!tempdata) hr = E_OUTOFMEMORY;
                }

                if (SUCCEEDED(hr))
                    hr = IStream_Read(stream, tempdata, andBytes, &bytesread);

                if (SUCCEEDED(hr) && bytesread == andBytes)
                {
                    if (topdown)
                    {
                        andStride = andBytesPerRow;
                        andRow = tempdata;
                    }
                    else
                    {
                        andStride = -andBytesPerRow;
                        andRow = tempdata + (result->height-1)*andBytesPerRow;
                    }

                    bitsRow = result->bits;
                    for (y=0; y<result->height; y++) {
                        BYTE *andByte=andRow;
                        DWORD *bitsPixel=(DWORD*)bitsRow;
                        for (x=0; x<result->width; x+=8) {
                            BYTE andVal=*andByte++;
                            pixel_set_trans(bitsPixel++, andVal>>7&1);
                            if (x+1 < result->width) pixel_set_trans(bitsPixel++, andVal>>6&1);
                            if (x+2 < result->width) pixel_set_trans(bitsPixel++, andVal>>5&1);
                            if (x+3 < result->width) pixel_set_trans(bitsPixel++, andVal>>4&1);
                            if (x+4 < result->width) pixel_set_trans(bitsPixel++, andVal>>3&1);
                            if (x+5 < result->width) pixel_set_trans(bitsPixel++, andVal>>2&1);
                            if (x+6 < result->width) pixel_set_trans(bitsPixel++, andVal>>1&1);
                            if (x+7 < result->width) pixel_set_trans(bitsPixel++, andVal&1);
                        }
                        andRow += andStride;
                        bitsRow += bitsStride;
                    }
                }

                HeapFree(GetProcessHeap(), 0, tempdata);
            }
        }

        IWICBitmapDecoder_Release(decoder);
    }

    return hr;
}
