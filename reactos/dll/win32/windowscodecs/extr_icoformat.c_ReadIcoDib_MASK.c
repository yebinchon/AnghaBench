#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int Width; int Height; scalar_t__ Y; scalar_t__ X; } ;
typedef  TYPE_1__ WICRect ;
typedef  int /*<<< orphan*/  WICPixelFormatGUID ;
typedef  int ULONG ;
typedef  int UINT ;
struct TYPE_9__ {int width; int height; int* bits; int /*<<< orphan*/  dpiY; int /*<<< orphan*/  dpiX; } ;
struct TYPE_8__ {int QuadPart; } ;
typedef  TYPE_2__ LARGE_INTEGER ;
typedef  TYPE_3__ IcoFrameDecode ;
typedef  int /*<<< orphan*/  IWICBitmapSource ;
typedef  int /*<<< orphan*/  IWICBitmapFrameDecode ;
typedef  int /*<<< orphan*/  IWICBitmapDecoder ;
typedef  int /*<<< orphan*/  IStream ;
typedef  int INT ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BmpDecoder ;
typedef  int BYTE ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  GUID_WICPixelFormat32bppBGR ; 
 int /*<<< orphan*/  GUID_WICPixelFormat32bppBGRA ; 
 int /*<<< orphan*/  FUNC2 () ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int*,int,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_2__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int*,int*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,TYPE_1__*,int,int,int*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  STREAM_SEEK_SET ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  WICDecodeMetadataCacheOnLoad ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static HRESULT FUNC22(IStream *stream, IcoFrameDecode *result)
{
    HRESULT hr;
    BmpDecoder *bmp_decoder;
    IWICBitmapDecoder *decoder;
    IWICBitmapFrameDecode *framedecode;
    WICPixelFormatGUID pixelformat;
    IWICBitmapSource *source;
    BOOL has_alpha=FALSE; /* if TRUE, alpha data might be in the image data */
    WICRect rc;

    hr = FUNC17(&bmp_decoder);
    if (FUNC19(hr))
    {
        FUNC1(bmp_decoder, &decoder);
        hr = FUNC8(decoder, stream, WICDecodeMetadataCacheOnLoad);

        if (FUNC19(hr))
            hr = FUNC7(decoder, 0, &framedecode);

        if (FUNC19(hr))
        {
            hr = FUNC12(framedecode, &result->width, &result->height);

            if (FUNC19(hr))
            {
                result->bits = FUNC3(FUNC2(), 0, result->width * result->height * 4);
                if (!result->bits) hr = E_OUTOFMEMORY;
            }

            if (FUNC19(hr))
                hr = FUNC10(framedecode, &pixelformat);

            if (FUNC18(&pixelformat, &GUID_WICPixelFormat32bppBGR) ||
                FUNC18(&pixelformat, &GUID_WICPixelFormat32bppBGRA))
            {
                source = (IWICBitmapSource*)framedecode;
                FUNC14(source);
                has_alpha = TRUE;
            }
            else
            {
                hr = FUNC20(&GUID_WICPixelFormat32bppBGRA,
                    (IWICBitmapSource*)framedecode, &source);
                has_alpha = FALSE;
            }

            if (FUNC19(hr))
            {
                rc.X = 0;
                rc.Y = 0;
                rc.Width = result->width;
                rc.Height = result->height;
                hr = FUNC15(source, &rc, result->width * 4,
                    result->width * result->height * 4, result->bits);

                FUNC16(source);
            }

            if (FUNC19(hr))
                hr = FUNC11(framedecode, &result->dpiX, &result->dpiY);

            FUNC13(framedecode);
        }

        if (FUNC19(hr) && has_alpha)
        {
            /* If the alpha channel is fully transparent, we should ignore it. */
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

        if (FUNC19(hr) && !has_alpha)
        {
            /* set alpha data based on the AND mask */
            UINT andBytesPerRow = (result->width+31)/32*4;
            UINT andBytes = andBytesPerRow * result->height;
            INT andStride;
            BYTE *tempdata=NULL;
            BYTE *andRow;
            BYTE *bitsRow;
            UINT bitsStride = result->width * 4;
            UINT x, y;
            ULONG offset;
            ULONG bytesread;
            LARGE_INTEGER seek;
            int topdown;

            FUNC0(bmp_decoder, &offset, &topdown);

            if (offset)
            {
                seek.QuadPart = offset;

                hr = FUNC6(stream, seek, STREAM_SEEK_SET, 0);

                if (FUNC19(hr))
                {
                    tempdata = FUNC3(FUNC2(), 0, andBytes);
                    if (!tempdata) hr = E_OUTOFMEMORY;
                }

                if (FUNC19(hr))
                    hr = FUNC5(stream, tempdata, andBytes, &bytesread);

                if (FUNC19(hr) && bytesread == andBytes)
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
                            FUNC21(bitsPixel++, andVal>>7&1);
                            if (x+1 < result->width) FUNC21(bitsPixel++, andVal>>6&1);
                            if (x+2 < result->width) FUNC21(bitsPixel++, andVal>>5&1);
                            if (x+3 < result->width) FUNC21(bitsPixel++, andVal>>4&1);
                            if (x+4 < result->width) FUNC21(bitsPixel++, andVal>>3&1);
                            if (x+5 < result->width) FUNC21(bitsPixel++, andVal>>2&1);
                            if (x+6 < result->width) FUNC21(bitsPixel++, andVal>>1&1);
                            if (x+7 < result->width) FUNC21(bitsPixel++, andVal&1);
                        }
                        andRow += andStride;
                        bitsRow += bitsStride;
                    }
                }

                FUNC4(FUNC2(), 0, tempdata);
            }
        }

        FUNC9(decoder);
    }

    return hr;
}