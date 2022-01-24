#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct FormatConverter {int /*<<< orphan*/  source; } ;
typedef  enum pixelformat { ____Placeholder_pixelformat } pixelformat ;
struct TYPE_5__ {int Width; int Height; } ;
typedef  TYPE_1__ WICRect ;
typedef  int UINT ;
typedef  scalar_t__ INT ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  float BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 float* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,float*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__ const*,int,int,float*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC5 (struct FormatConverter*,TYPE_1__ const*,int,int,float*,int) ; 
 scalar_t__ FUNC6 (float) ; 
 int format_32bppGrayFloat ; 
 int format_8bppGray ; 
 float FUNC7 (float) ; 

__attribute__((used)) static HRESULT FUNC8(struct FormatConverter *This, const WICRect *prc,
    UINT cbStride, UINT cbBufferSize, BYTE *pbBuffer, enum pixelformat source_format)
{
    HRESULT hr;
    BYTE *srcdata;
    UINT srcstride, srcdatasize;

    if (source_format == format_8bppGray)
    {
        if (prc)
            return FUNC3(This->source, prc, cbStride, cbBufferSize, pbBuffer);

        return S_OK;
    }

    if (source_format == format_32bppGrayFloat)
    {
        hr = S_OK;

        if (prc)
        {
            srcstride = 4 * prc->Width;
            srcdatasize = srcstride * prc->Height;

            srcdata = FUNC1(FUNC0(), 0, srcdatasize);
            if (!srcdata) return E_OUTOFMEMORY;

            hr = FUNC3(This->source, prc, srcstride, srcdatasize, srcdata);
            if (FUNC4(hr))
            {
                INT x, y;
                BYTE *src = srcdata, *dst = pbBuffer;

                for (y=0; y < prc->Height; y++)
                {
                    float *srcpixel = (float*)src;
                    BYTE *dstpixel = dst;

                    for (x=0; x < prc->Width; x++)
                        *dstpixel++ = (BYTE)FUNC6(FUNC7(*srcpixel++) * 255.0f + 0.51f);

                    src += srcstride;
                    dst += cbStride;
                }
            }

            FUNC2(FUNC0(), 0, srcdata);
        }

        return hr;
    }

    srcstride = 3 * prc->Width;
    srcdatasize = srcstride * prc->Height;

    srcdata = FUNC1(FUNC0(), 0, srcdatasize);
    if (!srcdata) return E_OUTOFMEMORY;

    hr = FUNC5(This, prc, srcstride, srcdatasize, srcdata, source_format);
    if (FUNC4(hr) && prc)
    {
        INT x, y;
        BYTE *src = srcdata, *dst = pbBuffer;

        for (y = 0; y < prc->Height; y++)
        {
            BYTE *bgr = src;

            for (x = 0; x < prc->Width; x++)
            {
                float gray = (bgr[2] * 0.2126f + bgr[1] * 0.7152f + bgr[0] * 0.0722f) / 255.0f;

                gray = FUNC7(gray) * 255.0f;
                dst[x] = (BYTE)FUNC6(gray + 0.51f);
                bgr += 3;
            }
            src += srcstride;
            dst += cbStride;
        }
    }

    FUNC2(FUNC0(), 0, srcdata);
    return hr;
}